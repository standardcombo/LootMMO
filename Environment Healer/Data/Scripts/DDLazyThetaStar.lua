--[[
    DDPathfinding
    v0.8.0
    by: truedarkdev (DarkDev#3167 at discord)
]]--

local DD_PATHFINDING_BASE = require(script:GetCustomProperty("DDPathfindingBase"))
local DD_PRIORITY_QUEUE = require(script:GetCustomProperty("DDPriorityQueue"))

local GREEDINESS = script:GetCustomProperty("Greediness") or 0.0
assert(GREEDINESS >= 0.0)

local DDLazyThetaStar = {}
DDLazyThetaStar.__index = DD_PATHFINDING_BASE
setmetatable(DDLazyThetaStar, DDLazyThetaStar)

-- GScore Pack format:
-- 0[Node_Closed 1 bit][GScore 26 bit][ParentId 36 bit]
local GSCORE_BITSHIFT = 36
local BITMASK_GSCORE = 0x3FFFFFF << GSCORE_BITSHIFT
local BITMASK_PARENT = 0xFFFFFFFFF
local NODE_CLOSED = 1 << 62 -- Second top bit represent it being closed

function DDLazyThetaStar:PopPathTask(startTileId, endTileId, navMeshGen)
    local newPathTask = DD_PATHFINDING_BASE.PopPathTask(self, startTileId, endTileId, navMeshGen)
    if not newPathTask.open then
        newPathTask.open = DD_PRIORITY_QUEUE.New()
    end
    if not newPathTask.gScores then
        newPathTask.gScores = {}
    end
    return newPathTask
end

function DDLazyThetaStar:PushPathTask(pathTask)
    pathTask.open:reset()
    for key, _ in pairs(pathTask.gScores) do
        pathTask.gScores[key] = BITMASK_GSCORE
    end
    DD_PATHFINDING_BASE.PushPathTask(self, pathTask)
end

function DDLazyThetaStar.GetNumProcessingTasks()
    return 10
end

function DDLazyThetaStar:FindPath(pathTask)
    local startTileId = pathTask.startTileId
    local endTileId = pathTask.endTileId
    local open = pathTask.open
    local gScores = pathTask.gScores
    local taskTimer = pathTask.taskTimer
    local navMeshGen = pathTask.navMeshGen
    local PATH_DIR_CACHE = DD_PATHFINDING_BASE.PATH_DIR_CACHE
    local greediness = 1.0 + GREEDINESS

    -- If start and target is the same grid, exit early
    if startTileId == endTileId then
        taskTimer:Start()
        taskTimer:End()
        pathTask.started, pathTask.finished = true, true
        return {}
    end

    local navMesh = navMeshGen.GetNavMesh()

    local endTileX, endTileY, endTileZ = navMeshGen.UnpackTileCoords(endTileId)

    if not pathTask.started then
        pathTask.started = true
        open:put(startTileId, 0)
        gScores[startTileId] = startTileId
        taskTimer:Start()
    else
        taskTimer:QuickContinue()
    end

    local iterCount = 0

    while not (open.num == 0) do
        local currentId = open:pop()
        local currentPackData = gScores[currentId]

        if currentPackData & NODE_CLOSED > 0 then -- Because there are duplicates in the priority queue, exit quickly
            goto next_open
        end

        local parentId = currentPackData & BITMASK_PARENT
        local currentGScore = currentPackData & BITMASK_GSCORE

        local neighboursDirMask = navMesh.neighbours[currentId]
        local neighbourDirections = navMeshGen.UnpackDirections(neighboursDirMask)

        -- NOTE: Probably not worth it
        -- TODO: This could potentially be our closest neighbour we linetracing against, maybe better to do a check for it first?
        --          Check how often this happens (that we are targeting closest neigbour), could optimize heuristics as well if thats the case

        -- If we incorrectly guessed that we had lineofsight with parent, correct it before continuing
        local currentTileX, currentTileY, currentTileZ = navMeshGen.UnpackTileCoords(currentId)
        local parentTileX, parentTileY, parentTileZ = navMeshGen.UnpackTileCoords(parentId)
        local traceXDiff = currentTileX > parentTileX and currentTileX - parentTileX or parentTileX - currentTileX
        local traceYDiff = currentTileY > parentTileY and currentTileY - parentTileY or parentTileY - currentTileY
        iterCount = iterCount + ((traceXDiff + traceYDiff) // 50)
        if not navMeshGen.NavMeshLineTrace(currentTileX, currentTileY, currentTileZ, parentTileX, parentTileY, parentTileZ) then
            -- Lets find the best candidate for being the best path to this node
            local newParentDirId
            local newParentId
            currentGScore = BITMASK_GSCORE -- Max value, will be replaced just after this

            for i = 1, neighbourDirections.num do
                local neighbourId = currentId + neighbourDirections.dirTileDiffId[i]
                local neighbourPackData = gScores[neighbourId]
                if neighbourPackData then
                    if neighbourPackData & NODE_CLOSED > 0 then
                        -- Only checked already closed nodes as only these can have the best paths to current (and guarantees line of sight to their parent)
                        local neighbourGScore = neighbourPackData & BITMASK_GSCORE
                        if neighbourGScore < currentGScore then
                            currentGScore = neighbourGScore
                            newParentDirId = neighbourDirections.dirId[i]
                            newParentId = neighbourId
                        end
                    end
                end
            end

            -- We have found our candidate!
            parentId = newParentId
            currentGScore = currentGScore + PATH_DIR_CACHE.OCTILE_DIST_BITSHIFT_36[newParentDirId]
            parentTileX, parentTileY, parentTileZ = navMeshGen.UnpackTileCoords(parentId) -- Update parentTileCoords as they are used later on
        end
        -- Debug: Make sure linetraces are bidirectional
        -- assert(navMeshGen.NavMeshLineTrace(currentTileX, currentTileY, currentTileZ, parentTileX, parentTileY, parentTileZ))
        -- assert(navMeshGen.NavMeshLineTrace(parentTileX, parentTileY, parentTileZ, currentTileX, currentTileY, currentTileZ))

        -- Close current
        currentPackData = currentGScore | parentId | NODE_CLOSED -- We need to recreate this as gscore/parent can have changed
        gScores[currentId] = currentPackData

        -- We found the endtile, calculate the shortest path and then return
        if currentId == endTileId then
            -- Construct shortest path and return it
            return self:CreateShortestPath(startTileId, endTileId, pathTask, navMeshGen)
        end

        local parentGScore = gScores[parentId] & BITMASK_GSCORE

        for i = 1, neighbourDirections.num do
            local neighbourId = currentId + neighbourDirections.dirTileDiffId[i]
            local neighbourPackData = gScores[neighbourId]
            local neighbourGScore

            if neighbourPackData then
                if neighbourPackData & NODE_CLOSED > 0 then
                    -- Has already been closed
                    goto next_neighbour
                end
                neighbourGScore = neighbourPackData & BITMASK_GSCORE
            else
                -- TODO: Maybe do the same optimization as the astar here
                neighbourGScore = BITMASK_GSCORE -- Max value, will be replaced just after this
            end

            local neighbourTileX, neighbourTileY, neighbourTileZ = navMeshGen.UnpackTileCoords(neighbourId)
            local h = DD_PATHFINDING_BASE.EuclidianHeuristic(parentTileX - neighbourTileX, parentTileY - neighbourTileY, parentTileZ - neighbourTileZ)
            local newGScore = parentGScore + ((h // DD_PATHFINDING_BASE.HEURISTIC_TO_INT) << GSCORE_BITSHIFT)

            if newGScore >= neighbourGScore then
                -- If the new gscore is worse
                goto next_neighbour
            end

            gScores[neighbourId] = newGScore | parentId -- Pack parent in this

            local distToEnd = DD_PATHFINDING_BASE.EuclidianHeuristic(neighbourTileX - endTileX, neighbourTileY - endTileY, neighbourTileZ - endTileZ) * greediness
            local fScore = (newGScore >> GSCORE_BITSHIFT) + (distToEnd // DD_PATHFINDING_BASE.HEURISTIC_TO_INT)
            open:put(neighbourId, fScore)
            if distToEnd < pathTask.bestGuessTileScore then
                pathTask.bestGuessTileScore = distToEnd
                pathTask.bestGuessTileId = neighbourId
            end
            ::next_neighbour::
        end

        iterCount = iterCount + 1
        local stopIterCount = 500

        -- Debug show closed tiles
        -- stopIterCount = 1
        -- local closedWorldPos = navMeshGen.GetNavTileWorldPos(currentId)
        -- CoreDebug.DrawBox(closedWorldPos, Vector3.New(10.0), {
        --         color = Color.PURPLE,
        --         duration = 9999.0,
        --     })

        if iterCount > stopIterCount then
            -- luacheck: ignore iterCount
            iterCount = 0
            local elapsedTime = taskTimer:QuickPause()
            if elapsedTime > self.MAX_PATH_SEARCH_TIME then
                -- We have spent too much time on finding this path, return a path to the best guess we have
                return self:CreateShortestPath(startTileId, pathTask.bestGuessTileId, pathTask, navMeshGen, true)
            end
            return nil -- We haven't finished yet, findPath will be called again
        end

        ::next_open::
    end

    -- Didn't find a path, return the closest path
    return self:CreateShortestPath(startTileId, pathTask.bestGuessTileId, pathTask, navMeshGen, true)
end

function DDLazyThetaStar.GetParentId(currentTileId, pathTask)
    return pathTask.gScores[currentTileId] & BITMASK_PARENT
end

return DDLazyThetaStar