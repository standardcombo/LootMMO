--[[
    DDPathfinding
    v0.8.0
    by: truedarkdev (DarkDev#3167 at discord)
]]--

local DD_PERF_TIMER = require(script:GetCustomProperty("DDPerfTimer"))
local DD_PROMISE = require(script:GetCustomProperty("DDPromise"))

-- TODO: Move these to DDPathfindingManager
local MERGE_PATHS_WITH_SAME_DIRECTION = script:GetCustomProperty("MergePathsWithSameDirection") -- Optimizes the paths (especially good for non any-angle pathfinders) by merging parts that have  the same direction
-- Insert nodes in the path to try to follow the ground z as closely as possible.
-- This can be disabled if the seekers following the path can figure out on their own where in z they collide,
--      this is mostly intended to make on-rails ai (ais without collision against terrain) look like they are running on the ground
-- I highly recommend turning this off if you can handle it on the ai instead as it introduces some extra costs to the processing of paths.
local FIT_PATH_AGAINST_NAVMESH_Z = script:GetCustomProperty("FitPathAgainstNavMeshZ")
local MAX_PATH_SEARCH_TIME = script:GetCustomProperty("MaxPathSearchTime") or 0.5 -- Max search time in seconds, when this is overrun it will return the closest found path so far.

local MAX_NUM_PATH_TASKS_IN_CACHE = 10

local currentTaskId = 0

local DDPathfindingBase = {
    HEURISTIC_TO_INT = 0.0002,
    TIE_BREAKING_FACTOR = 1.0 + 0.0002,
    PATH_DIR_CACHE = {
        OCTILE_DIST = {},
        OCTILE_DIST_BITSHIFT_36 = {},
    },
    MAX_PATH_SEARCH_TIME = MAX_PATH_SEARCH_TIME,
    pathTaskCache = nil,
}
DDPathfindingBase.__index = DDPathfindingBase

function DDPathfindingBase:PopPathTask(startTileId, endTileId, navMeshGen)
    if not self.pathTaskCache then
        self.pathTaskCache = {}
    end

    local pathTask
    if #self.pathTaskCache > 0 then
        pathTask = self.pathTaskCache[#self.pathTaskCache]
        self.pathTaskCache[#self.pathTaskCache] = nil
    else
        pathTask = {
            navMeshGen = nil,
            pathfinder = self,
            taskId = -1,
            startTileId = -1,
            endTileId = -1,
            started = false,
            finished = false,
            taskTimer = DD_PERF_TIMER.New(false),
            promise = nil,
            bestGuessTileId = nil, -- used if we couldn't find a path to the target
            bestGuessTileScore = nil,
            foundPathToGoal = true, -- If we found a path all the way to the goal, or just a best guess
        }
    end

    -- if #self.pathTaskCache == 0 then
    --     print("PopPathTask New Task")
    -- else
    --     print("PopPathTask", #self.pathTaskCache)
    -- end

    currentTaskId = currentTaskId + 1

    pathTask.bestGuessTileScore = 99999999999999999.0
    pathTask.navMeshGen = navMeshGen
    pathTask.taskId = currentTaskId
    pathTask.startTileId = startTileId
    pathTask.endTileId = endTileId
    pathTask.promise = DD_PROMISE.New()
    return pathTask
end

function DDPathfindingBase:PushPathTask(pathTask)
    if #self.pathTaskCache < MAX_NUM_PATH_TASKS_IN_CACHE then
        pathTask.navMeshGen = nil
        pathTask.taskId = -1
        pathTask.startTileId = -1
        pathTask.endTileId = -1
        pathTask.started = false
        pathTask.finished = false
        pathTask.taskTimer:End()
        pathTask.promise = nil
        pathTask.bestGuessTileId = nil
        pathTask.bestGuessTileScore = 99999999999999999.0
        pathTask.foundPathToGoal = true
        self.pathTaskCache[#self.pathTaskCache + 1] = pathTask
        --print("PushPathTask", #self.pathTaskCache)
    end
end

function DDPathfindingBase.OctileHeuristic(aX, aY, aZ, bX, bY, bZ)
    local dx = aX >= bX and aX - bX or bX - aX
    local dy = aY >= bY and aY - bY or bY - aY
    local dz = aZ >= bZ and aZ - bZ or bZ - aZ
    -- local dMax = math.max(dx, dy, dz)
    -- local dMin = math.min(dx, dy, dz)
    -- local dMid = dx + dy + dz - dMax - dMin
    local dMax
    local dMid
    local dMin
    if dz >= dy then
        if dz >= dx then
            if dy >= dx then
                dMax, dMid, dMin = dz, dy, dx
            else
                dMax, dMid, dMin = dz, dx, dy
            end
        else
            dMax, dMid, dMin = dx, dz, dy
        end
    elseif dy >= dx then
        if dz >= dx then
            dMax, dMid, dMin = dy, dz, dx
        else
            dMax, dMid, dMin = dy, dx, dz
        end
    else
        dMax, dMid, dMin = dx, dy, dz
    end
    -- assert(dMax >= dMid and dMid >= dMin)
    return dMax + 0.41 * dMid + 0.32 * dMin
end

function DDPathfindingBase.EuclidianHeuristic(dx, dy, dz)
    local sqrt = math.sqrt
    return sqrt(dx * dx + dy * dy + dz * dz)
end

function DDPathfindingBase.ManhattanHeuristic(aX, aY, aZ, bX, bY, bZ)
    local dx = aX >= bX and aX - bX or bX - aX
    local dy = aY >= bY and aY - bY or bY - aY
    local dz = aZ >= bZ and aZ - bZ or bZ - aZ
    return dx + dy + dz
end

-- luacheck: ignore pathTask
function DDPathfindingBase.FindPath(pathTask)
    error("FindPath was called on the DDPathfindingBase which has no implementation, make sure to use one of the pathfinding classes (like DDAStar)")
end

-- Some more instruction heavy pathfinders may need to spawn more tasks
function DDPathfindingBase.GetNumProcessingTasks()
    return 20
end

local function GetClosestPointOnLineSegment(worldPos, lineStartPos, lineDir)
    local lineDirNorm = lineDir:GetNormalized()
    local lineSize = lineDir.size
    local posToLineA = worldPos - lineStartPos
	local t = lineDirNorm .. posToLineA
	if t < 0.0 then
		return lineStartPos
	elseif t > lineSize then
		return lineStartPos + lineDir
	else
		return lineStartPos + lineDirNorm * t
	end
end

-- https://en.wikipedia.org/wiki/M%C3%B6ller%E2%80%93Trumbore_intersection_algorithm
local function RayIntersectsTriangle(rayOrigin, rayVector, triA, triB, triC)
    local EPSILON = 0.0000001
    local edge1 = triB - triA
    local edge2 = triC - triA
    local h = rayVector ^ edge2
    local a = edge1 .. h
    if a > -EPSILON and a < EPSILON then
        return false -- This ray is parallel to this triangle.
    end
    local f = 1.0 / a
    local s = rayOrigin - triA
    local u = f * (s .. h)
    if u < 0.0 or u > 1.0 then
        return false
    end
    q = s ^ edge1
    v = f * (rayVector .. q)
    if v < 0.0 or u + v > 1.0 then
        return false
    end
    -- At this stage we can compute t to find out where the intersection point is on the line.
    local t = f * (edge2 .. q)
    if t > EPSILON then -- ray intersection
        return rayOrigin + rayVector * t
    else -- This means that there is a line intersection but not a ray intersection.
        return false
    end
end

-- Construct shortest path and return it, goes from startTile to endTile in order
-- Returns path as a serie of WorldPositions (Vector3)
function DDPathfindingBase:CreateShortestPath(startTileId, endTileId, pathTask, navMeshGen)
    -- luacheck: ignore shortestPathTimer
    local shortestPathTimer = DD_PERF_TIMER.New(true)

    local abs = math.abs
    local path = {}

    local getDirectionBetween = function(fromTileId, toTileId)
        local pathTileX, pathTileY, pathTileZ = navMeshGen.UnpackTileCoords(toTileId)
        local prevTileX, prevTileY, prevTileZ = navMeshGen.UnpackTileCoords(fromTileId)
        return pathTileX - prevTileX, pathTileY - prevTileY, pathTileZ - prevTileZ
    end

    -- TODO: Add debug assert that all paths have line of sight to each other

    -- Construct path normally
    function constructPath()
        local pathTileId = endTileId
        while not (pathTileId == startTileId) do
            path[#path + 1] = pathTileId
            pathTileId = self.GetParentId(pathTileId, pathTask)
        end
        path[#path + 1] = startTileId
    end
    constructPath()


    -- Reverse order so endTile is last
    rev = {}
    local revNum = 0
    for i = #path, 1, -1 do
        revNum = revNum + 1
        rev[revNum] = path[i]
    end
    path = rev

    if MERGE_PATHS_WITH_SAME_DIRECTION then
        -- Try to merge paths that are in the same direction of each other
        local newPath = {}
        local culledTilesInPath = 0

        newPath[#newPath + 1] = path[1]

        local dx, dy, dz = getDirectionBetween(path[1], path[2])
        local prevDir = 0xffffffff
        if abs(dx) <= 1 and abs(dy) <= 1 and abs(dz) <= 1 then
            prevDir = navMeshGen.HashDirection(dx, dy, 0)
        end

        for i = 2, #path - 1 do
            local pathTileId = path[i]
            local nextTileId = path[i + 1]
            dx, dy, dz = getDirectionBetween(pathTileId, nextTileId)
            -- Must be direct neighbour to work
            if abs(dx) <= 1 and abs(dy) <= 1 and abs(dz) <= 1 then
                -- NOTE: Ignoring z won't work for flying navigation
                local dir = navMeshGen.HashDirection(dx, dy, 0) -- We don't care about z

                if not(dir == prevDir) then
                    -- Not the same dir so we need this node
                    newPath[#newPath + 1] = pathTileId
                    prevDir = dir
                else
                    -- We can skip this as path to both prev and next tile share the same direction
                    culledTilesInPath = culledTilesInPath + 1
                end
            else
                newPath[#newPath + 1] = pathTileId
                prevDir = 0xffffffff -- We can't let next tile be removed so set it to something it will never be the same as
            end
        end

        newPath[#newPath + 1] = path[#path]
        path = newPath

        --print("Culled tiles in path:", culledTilesInPath)
    end

    -- Go through all paths and try to find any turning point in z that is significant enough to make the path appear above or below ground
    -- We add these so on-rails ais (without any collision against terrain) will follow the ground better, but it can probably be prefered to raytrace actual ground each frame for them as well
    if FIT_PATH_AGAINST_NAVMESH_Z then
        local addedTilesInPath = 0

        local navMesh = navMeshGen.GetNavMesh()
        local MAX_ALLOWED_Z_DIFF = 5.0

        -- Insert new nodes in the path where it's needed
        local fromTileId = startTileId
        local i = 2 -- StartTile is on pos 1, so start after it
        while i <= #path do
            local fromTileX, fromTileY, fromTileZ = navMeshGen.UnpackTileCoords(fromTileId)
            local fromWorldPos = navMeshGen.GetNavTileWorldPos(fromTileId)

            local toTileId = path[i]
            local toTileX, toTileY, toTileZ = navMeshGen.UnpackTileCoords(toTileId)
            local toWorldPos = navMeshGen.GetNavTileWorldPos(toTileId)

            -- assert(not(fromTileId == toTileId))

            local currentPathLinePos = fromWorldPos
            local prevIterNotNewPathPoint = nil

            local lineTracesVisitedTiles = {}
            local lineTraceIter = function(tileId, isReverseIter)
                if isReverseIter then
                    table.insert(lineTracesVisitedTiles, 1, tileId)
                else
                    lineTracesVisitedTiles[#lineTracesVisitedTiles + 1] = tileId
                end
            end

            if not navMeshGen.NavMeshLineTrace(fromTileX, fromTileY, fromTileZ, toTileX, toTileY, toTileZ, lineTraceIter, false) then
                warn("Found a path which didn't have line of sight between two positions, all pathfinders should always guarantee line of sight between all nodes in the path")
            end

            -- assert(lineTracesVisitedTiles[1] == navMeshGen.PackTileCoords(fromTileX, fromTileY, fromTileZ))
            -- assert(lineTracesVisitedTiles[#lineTracesVisitedTiles] == navMeshGen.PackTileCoords(toTileX, toTileY, toTileZ))

            -- Go through each tile between from and to tiles
            for _, tileId in ipairs(lineTracesVisitedTiles) do
                -- Find closest point from the path tile to the straight line between the path nodes (where the AI will actually walk)
                local currentTileX, currentTileY, currentTileZ = navMeshGen.UnpackTileCoords(tileId)
                local currentTileWorldPos = navMeshGen.GetNavTileWorldPos(tileId)
                local closestPathWorldPos = GetClosestPointOnLineSegment(currentTileWorldPos, currentPathLinePos, toWorldPos - currentPathLinePos)

                local estimateAccurateZ = function()
                    local xDiff = closestPathWorldPos.x - currentTileWorldPos.x
                    local yDiff = closestPathWorldPos.y - currentTileWorldPos.y
                    if abs(xDiff) + abs(yDiff) < MAX_ALLOWED_Z_DIFF then
                        -- Very close to the tile position, just use it's z
                        -- print("None")
                        -- CoreDebug.DrawBox(currentTileWorldPos, Vector3.ONE * 15.0, {
                        --     duration = 9999.0,
                        --     color = Color.YELLOW,
                        --     thickness = 4.0
                        -- })
                        return currentTileWorldPos.z
                    end
                    local xTileDiff = xDiff > 0 and 1 or -1
                    local yTileDiff = yDiff > 0 and 1 or -1

                    -- TODO: This pretty much does a (simplified) raycast against the navmesh, would be nice to move this to the navmeshgen
                    -- Try to find existing neighbours so we can estimate our z value on this position

                    -- Select first ortogonal neighbour
                    local xFirstOrtoDir
                    local yFirstOrtoDir
                    local xSecondOrtoDir
                    local ySecondOrtoDir
                    if (abs(xDiff) > abs(yDiff)) then
                        xFirstOrtoDir = xTileDiff
                        yFirstOrtoDir = 0
                        xSecondOrtoDir = 0
                        ySecondOrtoDir = yTileDiff
                    else
                        xFirstOrtoDir = 0
                        yFirstOrtoDir = yTileDiff
                        xSecondOrtoDir = xTileDiff
                        ySecondOrtoDir = 0
                    end

                    local findNeighbourInZ = function(tileX, tileY, tileZ)
                        if navMesh.neighbours[navMeshGen.PackTileCoords(tileX, tileY, tileZ)] then return navMeshGen.PackTileCoords(tileX, tileY, tileZ) end
                        if navMesh.neighbours[navMeshGen.PackTileCoords(tileX, tileY, tileZ + 1)] then return navMeshGen.PackTileCoords(tileX, tileY, tileZ + 1) end
                        if navMesh.neighbours[navMeshGen.PackTileCoords(tileX, tileY, tileZ - 1)] then return navMeshGen.PackTileCoords(tileX, tileY, tileZ - 1) end
                        return nil
                    end

                    local neighbourOrto1 = findNeighbourInZ(currentTileX + xFirstOrtoDir, currentTileY + yFirstOrtoDir, currentTileZ) -- orto 1
                    local neighbourDiag3 = findNeighbourInZ(currentTileX + xTileDiff, currentTileY + yTileDiff, currentTileZ) -- diagonal

                    local vertex3TileId = nil
                    local vertex2TileId = nil

                    -- Possible combinations that can create a triangle we can hit
                    -- neighbourOrto1 and neighbourOrto2
                    -- neighbourOrto1 and neighbourDiag3
                    if neighbourOrto1 then
                        vertex2TileId = neighbourOrto1
                        if neighbourDiag3 then
                            vertex3TileId = neighbourDiag3
                        else
                            local neighbourOrto2 = findNeighbourInZ(currentTileX + xSecondOrtoDir, currentTileY + ySecondOrtoDir, currentTileZ) -- orto 2 (this is in the wrong direction, but can sometimes be used to create a legal triangle)
                            if neighbourOrto2 then
                                vertex3TileId = neighbourOrto2
                            end
                        end
                    else
                        -- Can't create a triangle in this location
                        -- Fallback to linear interpolation between one neighbour
                        if neighbourDiag3 then
                            vertex2TileId = neighbourDiag3
                        end
                    end

                    if vertex3TileId then
                        -- NOTE: Paths looks pretty good with just linear interpolation, disable this if you need better performance
                        -- Calc z by raytracing against the triangle created by the three neighbours
                        local triA = currentTileWorldPos
                        local triB = navMeshGen.GetNavTileWorldPos(vertex2TileId)
                        local triC = navMeshGen.GetNavTileWorldPos(vertex3TileId)
                        local rayOffset = Vector3.UP * 999999.0
                        local intersectPos = RayIntersectsTriangle(closestPathWorldPos + rayOffset, -rayOffset * 2.0, triA, triB, triC)
                        if intersectPos then
                            -- print("Barycentric")
                            return intersectPos.z
                        end
                        -- CoreDebug.DrawBox(closestPathWorldPos, Vector3.ONE * 15.0, {duration = 9999.0, color = Color.CYAN, thickness = 4.0})
                        -- CoreDebug.DrawBox(triA, Vector3.ONE * 15.0, {duration = 9999.0, color = Color.GREEN, thickness = 4.0})
                        -- CoreDebug.DrawBox(triB, Vector3.ONE * 15.0, {duration = 9999.0, color = Color.YELLOW, thickness = 4.0})
                        -- CoreDebug.DrawBox(triC, Vector3.ONE * 15.0, {duration = 9999.0, color = Color.WHITE, thickness = 4.0})
                    end

                    if vertex2TileId then
                        -- Calc z by linear interpolation between the two neighbours
                        local getInterpolationAlpha = function(worldPos, lineStartPos, lineDir)
                            -- Pretty much GetClosestPointOnLineSegment but projected into 2d space and returns alpha instead of position
                            worldPos = Vector3.New(worldPos.x, worldPos.y, 0.0)
                            lineStartPos = Vector3.New(lineStartPos.x, lineStartPos.y, 0.0)
                            lineDir = Vector3.New(lineDir.x, lineDir.y, 0.0)
                            local lineDirNorm = lineDir:GetNormalized()
                            local lineSize = lineDir.size
                            local posToLineA = worldPos - lineStartPos
                            local t = lineDirNorm .. posToLineA
                            if t < 0.0 then
                                return 0.0
                            end
                            if t > lineSize then
                                return 1.0
                            end
                            return t / lineSize
                        end
                        local neighbourTilePos = navMeshGen.GetNavTileWorldPos(vertex2TileId)
                        local lineDir = neighbourTilePos - currentTileWorldPos
                        local lerpAlpha = getInterpolationAlpha(closestPathWorldPos, currentTileWorldPos, lineDir)
                        local resPos = currentTileWorldPos + lineDir * lerpAlpha
                        -- CoreDebug.DrawBox(resPos, Vector3.ONE * 15.0, {
                        -- CoreDebug.DrawBox(currentTileWorldPos, Vector3.ONE * 15.0, {
                        -- CoreDebug.DrawBox(closestPathWorldPos, Vector3.ONE * 15.0, {
                        --     duration = 9999.0,
                        --     color = Color.CYAN,
                        --     thickness = 4.0
                        -- })
                        -- print("Linear")
                        return resPos.z
                    end

                    -- Fallback to the path tile z when we can't estimate a better z
                    -- CoreDebug.DrawBox(closestPathWorldPos, Vector3.ONE * 15.0, {
                    --     duration = 9999.0,
                    --     color = Color.BLUE,
                    --     thickness = 4.0
                    -- })
                    -- print("Fallback")
                    return currentTileWorldPos.z
                end -- estimateAccurateZ
                local currentGroundZ = estimateAccurateZ()

                if abs(closestPathWorldPos.z - currentGroundZ) > MAX_ALLOWED_Z_DIFF then
                    -- The path was not close enough to ground, insert a new point in the path at this location
                    local newPathPoint = Vector3.New(closestPathWorldPos.x, closestPathWorldPos.y, currentGroundZ)
                    currentPathLinePos = newPathPoint -- Update the path line from this new path point

                    if prevIterNotNewPathPoint then
                        -- Insert a new point in the checked tile before this new one if we haven't already, this is to make it fit better
                        table.insert(path, i, prevIterNotNewPathPoint)
                        i = i + 1
                        addedTilesInPath = addedTilesInPath + 1
                    end
                    -- Insert the new path nodes into the path
                    table.insert(path, i, newPathPoint)
                    i = i + 1
                    addedTilesInPath = addedTilesInPath + 1

                    prevIterNotNewPathPoint = nil
                else
                    prevIterNotNewPathPoint = closestPathWorldPos
                end
            end -- For each between from and to

            i = i + 1
            fromTileId = toTileId
        end -- While loop for path

        -- Process all added path nodes from previous step and remove unnecessary (where z change is small)
        local getZFromPath = function(pathIndex)
            local pathVal = path[pathIndex]
            if type(pathVal) == "number" then
                return navMeshGen.GetNavTileWorldPos(pathVal).z
            else
                return pathVal.z
            end
        end
        local newPath = {}
        local zSumDiff = 0
        i = 2
        if #path > 1 then
            newPath[#newPath + 1] = path[1]
            local prevZ = getZFromPath(i - 1)
            local currentZ = getZFromPath(i)
            while i <= #path - 1 do
                local currentPointI = i
                local nextPointI = i + 1

                local nextZ = getZFromPath(nextPointI)

                -- We can only remove ones that was added from previous step (Vector3 nodes)
                local currentPathVal = path[currentPointI]
                if type(currentPathVal) == "number" then
                    newPath[#newPath + 1] = currentPathVal
                else
                    local dz1 = prevZ - currentZ
                    local dz2 = currentZ - nextZ
                    local dzDiff = dz1 - dz2
                    zSumDiff = zSumDiff + dzDiff

                    if abs(zSumDiff) > MAX_ALLOWED_Z_DIFF then
                        -- Keep this point
                        newPath[#newPath + 1] = currentPathVal
                        zSumDiff = 0.0
                    else
                        addedTilesInPath = addedTilesInPath - 1
                    end
                end

                prevZ = currentZ
                currentZ = nextZ
                i = i + 1
            end
        end
        newPath[#newPath + 1] = path[#path]
        path = newPath
        -- print("Num tiles added to fit path to ground:", addedTilesInPath, "", "Total path nodes:", #path)
    end

    -- Convert path from tileIds to worldPos
    for i = 1, #path do
        local pathVal = path[i]
        -- If not number then it should already be converted (Vector3)
        if type(pathVal) == "number" then
            path[i] = navMeshGen.GetNavTileWorldPos(pathVal)
        end
    end

    --print(string.format("CreateShortestPath took %.0fms to complete", shortestPathTimer:End() * 1000))

    -- Finish up this task
    local taskTimer = pathTask.taskTimer
    taskTimer:End()
    if not(pathTask.endTileId == endTileId) then
        pathTask.foundPathToGoal = false
        if taskTimer:GetTime() > self.MAX_PATH_SEARCH_TIME then
            warn(string.format("Didn't find a path to the target (took too long time), return the best guess! Elapsed Time = %.0fms", taskTimer:GetTime() * 1000))
        else
            warn(string.format("Didn't find a path to the target, return the closest path! Elapsed Time = %.0fms", taskTimer:GetTime() * 1000))
        end
    end
    pathTask.finished = true
    return path
end

-- Slow, should only be called when creating the finalized path
-- luacheck: ignore currentTileId pathTask
function DDPathfindingBase.GetParentId(currentTileId, pathTask)
    error("GetParentId was called on the DDPathfindingBase which has no implementation, must be overriden by the pathfinding class")
end

for dirZ = -1, 1 do
    for dirY = -1, 1 do
        for dirX = -1, 1 do
            -- TODO: Expose HashDirection so we can access it here
            -- Must be the same as HashDirection in NavMeshGenerator
            local dirId = 1 + (dirX + 1) + (dirY + 1) * 3 + (dirZ + 1) * 9 -- 1 -> 27
            local h = DDPathfindingBase.OctileHeuristic(0, 0, 0, dirX, dirY, dirZ)
            DDPathfindingBase.PATH_DIR_CACHE.OCTILE_DIST[dirId] = (h // DDPathfindingBase.HEURISTIC_TO_INT)
            DDPathfindingBase.PATH_DIR_CACHE.OCTILE_DIST_BITSHIFT_36[dirId] =  DDPathfindingBase.PATH_DIR_CACHE.OCTILE_DIST[dirId] << 36
        end
    end
end

return DDPathfindingBase