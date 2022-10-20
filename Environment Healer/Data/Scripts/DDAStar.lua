--[[
    DDPathfinding
    v0.8.0
    by: truedarkdev (DarkDev#3167 at discord)
]]--

local DD_PATHFINDING_BASE = require(script:GetCustomProperty("DDPathfindingBase"))
local DD_PRIORITY_QUEUE = require(script:GetCustomProperty("DDPriorityQueue"))

local GREEDINESS = script:GetCustomProperty("Greediness") or 0.0
assert(GREEDINESS >= 0.0)

local DDAStar = {}
DDAStar.__index = DD_PATHFINDING_BASE
setmetatable(DDAStar, DDAStar)

-- GScore Pack format:
-- 0[Node_Closed 1 bit][GScore 26 bit][ParentId 36 bit]
local GSCORE_BITSHIFT = 36
local BITMASK_GSCORE = 0x3FFFFFF << GSCORE_BITSHIFT
local BITMASK_PARENT = 0xFFFFFFFFF
local NODE_CLOSED = 1 << 62 -- Second top bit represent it being closed

function DDAStar:PopPathTask(startTileId, endTileId, navMeshGen)
    local newPathTask = DD_PATHFINDING_BASE.PopPathTask(self, startTileId, endTileId, navMeshGen)
    if not newPathTask.open then
        newPathTask.open = DD_PRIORITY_QUEUE.New()
    end
    if not newPathTask.gScores then
        newPathTask.gScores = {}
    end
    return newPathTask
end

function DDAStar:PushPathTask(pathTask)
    pathTask.open:reset()
    for key, _ in pairs(pathTask.gScores) do
        pathTask.gScores[key] = BITMASK_GSCORE
    end
    DD_PATHFINDING_BASE.PushPathTask(self, pathTask)
end

-- Shouldn't be called manually, call QueueFindPath instead
function DDAStar:FindPath(pathTask)
    local startTileId = pathTask.startTileId
    local endTileId = pathTask.endTileId
    local open = pathTask.open
    local gScores = pathTask.gScores
    local taskTimer = pathTask.taskTimer
    local navMeshGen = pathTask.navMeshGen
    local PATH_DIR_CACHE = DD_PATHFINDING_BASE.PATH_DIR_CACHE
    local greediness = 1.0 + GREEDINESS

    -- TODO: Move this to pathfinding manager
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

        -- Close current
        gScores[currentId] = currentPackData | NODE_CLOSED

        -- We found the endtile, calculate the shortest path and then return
        if currentId == endTileId then
            -- Construct shortest path and return it
            return self:CreateShortestPath(startTileId, endTileId, pathTask, navMeshGen, true)
        end

        local currentGScore = currentPackData & BITMASK_GSCORE

        local neighboursDirMask = navMesh.neighbours[currentId]
        local neighbourDirections = navMeshGen.UnpackDirections(neighboursDirMask)

        for i = 1, neighbourDirections.num do
            local neighbourId = currentId + neighbourDirections.dirTileDiffId[i]
            local neighbourPackData = gScores[neighbourId]

            local dirId = neighbourDirections.dirId[i]
            local newGScore
            if neighbourPackData then
                if neighbourPackData & NODE_CLOSED > 0 then
                    -- Has already been closed
                    goto next_neighbour
                end

                local neighbourGScore = neighbourPackData & BITMASK_GSCORE
                newGScore = currentGScore + PATH_DIR_CACHE.OCTILE_DIST_BITSHIFT_36[dirId]

                if newGScore >= neighbourGScore then
                    -- If the new gscore is worse
                    goto next_neighbour
                end
            else
                newGScore = currentGScore + PATH_DIR_CACHE.OCTILE_DIST_BITSHIFT_36[dirId]
            end

            gScores[neighbourId] = newGScore | currentId -- Pack parent in this

            local tileX, tileY, tileZ = navMeshGen.UnpackTileCoords(neighbourId)
            local distToEnd = DD_PATHFINDING_BASE.OctileHeuristic(tileX, tileY, tileZ, endTileX, endTileY, endTileZ) * DD_PATHFINDING_BASE.TIE_BREAKING_FACTOR * greediness
            local fScore = (newGScore >> GSCORE_BITSHIFT) + (distToEnd // DD_PATHFINDING_BASE.HEURISTIC_TO_INT)
            open:put(neighbourId, fScore)
            if distToEnd < pathTask.bestGuessTileScore then
                pathTask.bestGuessTileScore = distToEnd
                pathTask.bestGuessTileId = neighbourId
            end
            ::next_neighbour::
        end

        iterCount = iterCount + 1
        local stopIterCount = 400

        -- Debug show closed tiles
        -- stopIterCount = 1
        -- local closedWorldPos = navMeshGen.GetNavTileWorldPos(currentId)
        -- CoreDebug.DrawBox(closedWorldPos, Vector3.New(10.0), {
        --         color = Color.PURPLE,
        --         duration = 9999.0,
        --     })

        if iterCount % stopIterCount == 0 then
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

function DDAStar.GetParentId(currentTileId, pathTask)
    return pathTask.gScores[currentTileId] & BITMASK_PARENT
end

return DDAStar