--[[
    DDPathfinding
    v0.8.0
    by: truedarkdev (DarkDev#3167 at discord)
]]--

local DD_PERF_TIMER = require(script:GetCustomProperty("DDPerfTimer"))
local DD_PROMISE = require(script:GetCustomProperty("DDPromise"))
local A_STAR_SCRIPT = require(script:GetCustomProperty("AStarPathfinder"))
local THETA_STAR_SCRIPT = require(script:GetCustomProperty("ThetaStarPathfinder"))
local LAZYTHETA_STAR_SCRIPT = require(script:GetCustomProperty("LazyThetaStarPathfinder"))

local ROOT = script:FindTemplateRoot()
local DEFAULT_PATHFINDER = require(ROOT:GetCustomProperty("DefaultPathfinder"))
local REGISTER_IN_GLOBALS = ROOT:GetCustomProperty("RegisterInGlobals")
local VERBOSE_DEBUG = ROOT:GetCustomProperty("VerboseDebug")
local DEBUG = ROOT:GetCustomProperty("Debug") or VERBOSE_DEBUG
local DEFAULT_PATH_SEARCH_AREA = ROOT:GetCustomProperty("DefaultPathSearchArea") or "x=3_y=3_zMin=10_zMax=2"
local MAX_PROCESSING_TIME_EACH_FRAME = ROOT:GetCustomProperty("MaxProcessingTimeEachFrame") or 0.05
FOLIAGE_NAVMESH_GENERATION_FIX = ROOT:GetCustomProperty("FoliageNavMeshGenerationFix") or false

local numberStringToTable = function(str)
    local t = {}
    for k, v in string.gmatch(str, "(%w+)=(%w+)") do
        t[k] = tonumber(v)
    end
    return t
end
DEFAULT_PATH_SEARCH_AREA = numberStringToTable(DEFAULT_PATH_SEARCH_AREA)

local PATHFINDING_A_STAR = "a_star"
local PATHFINDING_THETA_STAR = "theta_star"
local PATHFINDING_LAZYTHETA_STAR = "lazy_theta_star"

local DD_NAVMESH_GLOBAL_ACCESS = "darkdev.navmeshgenerator"
local DD_PATHFINDER_GLOBAL_ACCESS = "darkdev.pathfinder"

local pathTaskQueue = {}

function GetNavMeshGenerator(startWorldPos, endWorldPos, pathSettings)
    if not _G[DD_NAVMESH_GLOBAL_ACCESS] then
        warn("No DDNavMeshGenerator found, pathfinder will not work")
        return nil
    end

    assert(startWorldPos)
    if not endWorldPos then
        endWorldPos = startWorldPos
    end

    local abs = math.abs
    local bestNavMeshGen = {
        navMeshGen = nil,
        distStartPos = 9999999.0,
        distEndPos = 9999999.0,
        unitSizeDiff = 9999999.0,
        unitHeightDiff = 9999999.0,
        maxSlopeDiff = 9999999.0,
        navMeshRes = 0xffffffffffffff,
    }
    for i = 1, #_G[DD_NAVMESH_GLOBAL_ACCESS].generators do
        local navMeshGen = _G[DD_NAVMESH_GLOBAL_ACCESS].generators[i].context
        local numTiles = navMeshGen.GetNumTiles()

        local unitSizeDiff = 0.0
        local unitHeightDiff = 0.0
        local maxSlopeDiff = 0.0

        -- Check so the requirements match
        if pathSettings then
            if pathSettings.unitSize then
                if pathSettings.unitSize > navMeshGen.MAX_UNIT_SIZE_RADIUS then goto next_loop end -- Didn't fit requirement
                unitSizeDiff = navMeshGen.MAX_UNIT_SIZE_RADIUS - pathSettings.unitSize
            end
            if pathSettings.unitHeight then
                if pathSettings.unitHeight > navMeshGen.MAX_UNIT_HEIGHT then goto next_loop end -- Didn't fit requirement
                unitHeightDiff = navMeshGen.MAX_UNIT_HEIGHT - pathSettings.unitHeight
            end
            if pathSettings.maxSlope then
                if pathSettings.maxSlope > navMeshGen.ALLOWED_SLOPE then goto next_loop end -- Didn't fit requirement
                maxSlopeDiff = navMeshGen.ALLOWED_SLOPE - pathSettings.maxSlope
            end
        end

        -- All requirments match, find the closest navmesh
        local distStartPos = navMeshGen.GetDistanceToNavMesh(startWorldPos)
        local distEndPos = navMeshGen.GetDistanceToNavMesh(endWorldPos)
        local navMeshRes = numTiles.x * numTiles.y * numTiles.z

        -- TODO: We could allow paths that intersects the navmesh
        -- The search area must be inside this navmesh, ">= 0" makes it so that it also ignores this if you are standing on the border of the navmesh
        if distStartPos >= 0 and distEndPos > 0 then
            goto next_loop
        end

        -- Check if this is better than last picked navMeshGen
        -- Selection priority:
        -- StartPosition inside navmesh
        -- EndPosition inside navmesh
        -- Higher resolution navmesh
        -- Better path settings
        -- Closest to StartPosition
        -- Closest to EndPosition

        local changeNavMeshGen = function()
            bestNavMeshGen.navMeshGen = navMeshGen
            bestNavMeshGen.distStartPos = distStartPos
            bestNavMeshGen.distEndPos = distEndPos
            bestNavMeshGen.unitHeightDiff = unitHeightDiff
            bestNavMeshGen.unitSizeDiff = unitSizeDiff
            bestNavMeshGen.maxSlopeDiff = maxSlopeDiff
            bestNavMeshGen.navMeshRes = navMeshRes
        end

        -- Check start pos inside navmesh
        if distStartPos <= 0 then
            if bestNavMeshGen.distStartPos > 0 then
                changeNavMeshGen()
                goto next_loop
            end
        else
            if bestNavMeshGen.distStartPos <= 0 then
                goto next_loop
            end
        end

        -- Check end pos inside navmesh
        if distEndPos <= 0 then
            if bestNavMeshGen.distEndPos > 0 then
                changeNavMeshGen()
                goto next_loop
            end
        else
            if bestNavMeshGen.distEndPos <= 0 then
                goto next_loop
            end
        end

        -- Higher resolution navmesh
        if navMeshRes < bestNavMeshGen.navMeshRes then
            changeNavMeshGen()
            goto next_loop
        else
            if navMeshRes > bestNavMeshGen.navMeshRes then
                goto next_loop
            end
        end

        -- Better path settings
        if unitHeightDiff < bestNavMeshGen.unitHeightDiff
            and unitHeightDiff < bestNavMeshGen.unitSizeDiff
            and unitHeightDiff < bestNavMeshGen.maxSlopeDiff then
            changeNavMeshGen()
            goto next_loop
        else
            if unitHeightDiff > bestNavMeshGen.unitHeightDiff
                and unitHeightDiff > bestNavMeshGen.unitSizeDiff
                and unitHeightDiff > bestNavMeshGen.maxSlopeDiff then
                goto next_loop
            end
        end

        -- Closer to StartPosition
        if abs(distStartPos - bestNavMeshGen.distStartPos) > 300.0 then
            if distStartPos < bestNavMeshGen.distStartPos then
                changeNavMeshGen()
            end
            goto next_loop
        end

        -- Closer to StartPosition, EndPosition
        if abs(distEndPos - bestNavMeshGen.distEndPos) > 300.0 then
            if distEndPos < bestNavMeshGen.distEndPos then
                changeNavMeshGen()
            end
            goto next_loop
        end

        ::next_loop::
    end
    return bestNavMeshGen.navMeshGen
end

function IsAllNavmeshesReady()
    if not _G[DD_NAVMESH_GLOBAL_ACCESS] then
        return false
    end
    local readyCount = 0
    for _, navMeshGen in ipairs(_G[DD_NAVMESH_GLOBAL_ACCESS].generators) do
        if navMeshGen.context.IsNavMeshReady() then
            readyCount = readyCount + 1
        end
    end
    return readyCount > 0 and readyCount == #_G[DD_NAVMESH_GLOBAL_ACCESS].generators
end

function WaitForAllNavmeshesReady()
    while IsAllNavmeshesReady() == false do
        Task.Wait(0.1)
    end
end

local function TickProcessPathTaskQueue()
    local processingTimer = nil

    local processPathTasks = function()
        if #pathTaskQueue == 0 then
            return
        end

        if not processingTimer then
            processingTimer = DD_PERF_TIMER.New(true)
        end

        if processingTimer:GetTime() > MAX_PROCESSING_TIME_EACH_FRAME then
            return
        end

        -- TODO: Would be good if we had some controll over running multiple paths at the same time and some prioritization for them,
        --         so we don't get a large path that stops everyone else until it finishes.
        local currentPathTask = pathTaskQueue[1]

        if currentPathTask.navMeshGen:IsNavMeshReady() == false then
            return
        end

        if currentPathTask.promise:GetState() == DD_PROMISE.STATE_PENDING then
            currentPathTask.promise:SetIsRunning()
        end
        local pathRes = currentPathTask.pathfinder:FindPath(currentPathTask)

        if currentPathTask.finished then
            table.remove(pathTaskQueue, 1)

            Task.Wait() -- Wait a frame so we don't get into instruction limit problems
            local result = {
                taskId = currentPathTask.taskId,
                taskTime = currentPathTask.taskTimer:GetTime(),
                path = {},
                foundPathToGoal = currentPathTask.foundPathToGoal,
            }
            if pathRes then
                local navMeshGen = currentPathTask.navMeshGen

                if DEBUG then
                    print(string.format("Found Path! Length = %i, Time = %.0fms", #pathRes, currentPathTask.taskTimer:GetTime() * 1000))
                end

                result.path = pathRes

                local searchOnlyInZ = {x = 0, y = 0, zMin = 2, zMax = 2}
                if #result.path > 0 then
                    local checkStartTileId = navMeshGen.GetWalkableTileFromWorldPos(currentPathTask.startWorldPos, false, searchOnlyInZ)
                    if checkStartTileId then
                        checkTileX, checkTileY, _ = navMeshGen.UnpackTileCoords(checkStartTileId)
                        startTileX, startTileY, _ = navMeshGen.UnpackTileCoords(currentPathTask.startTileId)
                        if checkTileX == startTileX and checkTileY == startTileY then
                            -- If start position was on the same tile as what the start tile became, we can let it use its more accurate position
                            result.path[1].x = currentPathTask.startWorldPos.x
                            result.path[1].y = currentPathTask.startWorldPos.y
                        end
                    end
                end

                if #result.path > 1 and currentPathTask.foundPathToGoal then
                    local checkEndTileId = navMeshGen.GetWalkableTileFromWorldPos(currentPathTask.endWorldPos, false, searchOnlyInZ)
                    if checkEndTileId then
                        checkTileX, checkTileY, _ = navMeshGen.UnpackTileCoords(checkEndTileId)
                        endTileX, endTileY, _ = navMeshGen.UnpackTileCoords(currentPathTask.endTileId)
                        if checkTileX == endTileX and checkTileY == endTileY then
                            -- If end position was on the same tile as what the end tile became, we can let it use its more accurate position
                            result.path[#result.path].x = currentPathTask.endWorldPos.x
                            result.path[#result.path].y = currentPathTask.endWorldPos.y
                        end
                    end
                end

                if VERBOSE_DEBUG then
                    DebugRenderPath(result.path, 1.0)
                end

                currentPathTask.promise:SetResult(DD_PROMISE.RESULT_SUCCEEDED, result)
            else
                currentPathTask.promise:SetResult(DD_PROMISE.RESULT_REJECTED, result)
            end
            currentPathTask.pathfinder:PushPathTask(currentPathTask) -- Cache it so it can be reused
        end
    end

    if #pathTaskQueue > 0 then
        -- Spawn some processing tasks
        for _ = 1, pathTaskQueue[1].pathfinder.GetNumProcessingTasks() do
            Task.Spawn(processPathTasks)
        end
    end
end

function IsPositionInsideNavmesh(worldPos)
    if not worldPos then
        return false
    end
    local navMeshGen = GetNavMeshGenerator(worldPos)
    if not(navMeshGen) or not(navMeshGen.IsNavMeshReady()) then
        return false
    end
    return navMeshGen.GetGridTileFromWorldPos(worldPos, false)
end

--[[
    Add a new findpath request to the queue, returns future for non blocking result.
    @param {Vector3} startWorldPos - Start the path at this position.
    @param {Vector3} endWorldPos - Ends the path at this position.
    @param {table} [pathSettings] - Set requirements for which navmesh to choose. Current values are unitSize, unitHeight, maxSlope.
    @param {table} [checkNeighbours=DefaultPathSearchArea] - Will search around positions to find a walkable tile if the target wasn't walkable,
        it can eiter be a boolean or it can be an extent table (e.g. {x = 2, y = 2, zMin = 3, zMax = 3}).
    @param {string} [pathfinder] - Pathfinder to use for this path, use either the string (e.g. "a_star") or the enum value (e.g. PATHFINDING_A_STAR).
    @returns {table} - Returns a table with the result of the path task. If it failed creating a path task then it returns nil.
        Return table looks like this:
        {
            taskId {number} Unique identifier for each requested path.
            taskTime {number} Time to finish task.
            path {table} Array with the path in world positions
            pathTileIds {table}, Array with the tileIds for each point in the path
            foundPathToGoal {bool} If we found a path all the way to the goal or if this is just a best guess
        }
--]]
function QueueFindPath(startWorldPos, endWorldPos, pathSettings, checkNeighbours, pathfinder)
    if not(startWorldPos) or not(endWorldPos) then
        return nil
    end
    if type(checkNeighbours) == "nil" then
        checkNeighbours = DEFAULT_PATH_SEARCH_AREA
    end

    local navMeshGen = GetNavMeshGenerator(startWorldPos, endWorldPos, pathSettings)
    if navMeshGen and navMeshGen.IsNavMeshReady() then
        local startTileId = navMeshGen.GetWalkableTileFromWorldPos(startWorldPos, true, checkNeighbours)
        local endTileId = navMeshGen.GetWalkableTileFromWorldPos(endWorldPos, true, checkNeighbours)
        if startTileId and endTileId then
            local task
            if not pathfinder then
                task = DEFAULT_PATHFINDER:PopPathTask(startTileId, endTileId, navMeshGen)
            else
                if pathfinder == PATHFINDING_A_STAR then task = A_STAR_SCRIPT:PopPathTask(startTileId, endTileId, navMeshGen) end
                if pathfinder == PATHFINDING_THETA_STAR then task = THETA_STAR_SCRIPT:PopPathTask(startTileId, endTileId, navMeshGen) end
                if pathfinder == PATHFINDING_LAZYTHETA_STAR then task = LAZYTHETA_STAR_SCRIPT:PopPathTask(startTileId, endTileId, navMeshGen) end
            end
            -- Save our startWorldPos and endWorldPos so we can insert it instead of the tile positions
            task.startWorldPos = startWorldPos
            task.endWorldPos = endWorldPos
            pathTaskQueue[#pathTaskQueue + 1] = task
            return task.promise:GetFuture()
        end
        return nil -- Failed because we couldn't get tile from worldpos
    end
    return nil -- Failed because we found no navmesh or it wasn't ready yet
end

-- Blocking version of QueueFindPath, will call Task.Wait until the path is finished.
-- For more info, check out the description for QueueFindPath.
function FindPath(startWorldPos, endWorldPos, pathSettings, checkNeighbours, pathfinder)
    local waitForPath = function (future)
        while true do
            Task.Wait()
            if future:IsFinished() then
                return future:GetResultValue()
            end
        end
    end
    local future = QueueFindPath(startWorldPos, endWorldPos, pathSettings, checkNeighbours, pathfinder)
    if future then
        return waitForPath(future)
    end
    return nil
end

function DebugRenderPath(path, renderDuration)
    if path then
        if not renderDuration then
            renderDuration = 9999.0
        end
        local drawLineParams = {
            duration = renderDuration,
            color = Color.RED,
            thickness = 6.0
        }
        local drawConnectionsParams = {
            duration = renderDuration,
            color = Color.ORANGE,
            thickness = 4.0
        }
        local zDrawOffset = 20.0
        local lastTilePos = nil
        for i = 1, #path do
            local tileWorldPos = path[i]
            tileWorldPos.z = tileWorldPos.z + zDrawOffset
            if lastTilePos then
                CoreDebug.DrawLine(lastTilePos, tileWorldPos, drawLineParams)
            end
            CoreDebug.DrawBox(tileWorldPos, Vector3.New(1) * 25.0, drawConnectionsParams)
            lastTilePos = tileWorldPos
        end
    end
end

function RunPathfindingBenchmark(randomPaths, numPaths, renderPaths)
    local benchmarkTimer = DD_PERF_TIMER.New(false)
    --local preheatTimer = DD_PERF_TIMER.New(false)
    local taskTime = 0
    local lastTaskFuture = nil

    local pathTaskDone = function(future, resultState)
        local result = future:GetResultValue()
        taskTime = taskTime + result.taskTime

        if resultState == DD_PROMISE.RESULT_SUCCEEDED then
            if renderPaths then
                DebugRenderPath(result.path)
            end
        end

        if future == lastTaskFuture then
            print(string.format("Benchmark Time = %.3fs, Total Tasks Time = %.3fs", benchmarkTimer:End(), taskTime))
        end
    end

    local startBenchmark = function()
        local benchmarkTask = Task.Spawn(function()
            if IsAllNavmeshesReady() then
                benchmarkTimer:Start()

                -- TODO: These are invalid on the demo map, need to update them
                local startPos = {Vector3.New(6080, 5300, 2080), Vector3.New(-470, 4180, 0), Vector3.New(0, -500, 650), Vector3.New(6080, 5300, 2080), Vector3.New(0, -500, 650), Vector3.New(6080, 5300, 2080)}
                local endPos = {Vector3.New(-800, 800, 2150), Vector3.New(1350, 6350, 0), Vector3.New(6080, 5300, 2080), Vector3.New(3650, -1400, 0), Vector3.New(-800, 800, 2150), Vector3.New(5850, 1000, 0)}
                local numStandardPaths = 6

                for i = 1, numPaths do
                    local startWorldPos
                    local endWorldPos
                    if randomPaths then
                        local navMeshGen = _G[DD_NAVMESH_GLOBAL_ACCESS].generators[1].context
                        local randomTile1 = navMeshGen.GetRandomNavMeshTile()
                        local randomTile2 = navMeshGen.GetRandomNavMeshTile()
                        startWorldPos = navMeshGen.GetNavTileWorldPos(randomTile1)
                        endWorldPos = navMeshGen.GetNavTileWorldPos(randomTile2)
                    else
                        startWorldPos = startPos[i % numStandardPaths + 1]
                        endWorldPos = endPos[i % numStandardPaths + 1]
                    end

                    print("Find Path for:", startWorldPos, endWorldPos)

                    local future = QueueFindPath(startWorldPos, endWorldPos)
                    assert(future)
                    future:AddResultCallback(pathTaskDone)
                    if i == numPaths then
                        lastTaskFuture = future
                    end

                    if i % 500 == 0 then
                        Task.Wait()
                    end
                end

                Task.GetCurrent():Cancel()
                return
            end
            Task.Wait()
        end)
        benchmarkTask.repeatCount = -1
    end

    -- local preheatLastTaskFuture = nil
    -- local preheatTaskDone = function(future, _)
    --     if future == preheatLastTaskFuture then
    --         print(string.format("Preheat Benchmark Time = %.3fs", preheatTimer:End(), taskTime))
    --         startBenchmark()
    --     end
    -- end

    -- -- First preheat the pathfinder, so we get preallocated cached tasks when running the benchmark
    -- local preheatTask = Task.Spawn(function()
    --     navMeshGen = GetNavMeshGenerator(Vector3.ZERO)
    --     if navMeshGen and navMeshGen.IsNavMeshReady() then
    --         preheatTimer:Start()

    --         local numPreheats = 10
    --         for i = 1, numPreheats do
    --             local startWorldPos
    --             local endWorldPos
    --             local randomIterCount = 0
    --             repeat
    --                 startWorldPos = navMeshGen.GetNavTileWorldPos(navMeshGen.GetRandomNavMeshTile())
    --                 endWorldPos = navMeshGen.GetNavTileWorldPos(navMeshGen.GetRandomNavMeshTile())
    --                 randomIterCount = randomIterCount + 1
    --             until ((startWorldPos - endWorldPos).size > navMeshGen.AREA_REAL_SIZE.x * 0.5 or randomIterCount > 50)
    --             local future = QueueFindPath(startWorldPos, endWorldPos)
    --             assert(future)
    --             future:AddResultCallback(preheatTaskDone)
    --             if i == numPreheats then
    --                 preheatLastTaskFuture = future
    --             end
    --             if i % 500 == 0 then
    --                 Task.Wait()
    --             end
    --         end

    --         Task.GetCurrent():Cancel()
    --         return
    --     end
    --     Task.Wait()
    -- end)
    -- preheatTask.repeatCount = -1

    startBenchmark()
end

-- luacheck: ignore TestPath
local function TestPath()
    local testTask = Task.Spawn(function()
        WaitForAllNavmeshesReady()

        -- luacheck: ignore castleWalls bigHill tower testStairs playerSpawn fitzErrorStart fitzErrorEnd
        local castleWalls = Vector3.New(-6880, 5390, -10)
        local bigHill = Vector3.New(1060, -3060, 1610)
        local tower = Vector3.New(6490, 1780, -50)
        local testStairs = Vector3.New(7070, 220, 1380)
        local playerSpawn = Vector3.New(6970, 3250, -2200)
        local fitzErrorStart = Vector3.New(-3150, 5570, -16)
        local fitzErrorEnd = Vector3.New(4050, -12230, -1654)

        local startPos = playerSpawn
        local endPos = bigHill

        local pathRes = FindPath(startPos, endPos, nil, true)
        if pathRes then
            DebugRenderPath(pathRes.path)
            Events.BroadcastToAllPlayers("ServerSendString", "Found Path " .. #pathRes.path)
        end
        Task.GetCurrent():Cancel()
        return
    end)
    testTask.repeatCount = -1
end

-- luacheck: ignore RunNavMeshLineTraceBenchmark
local function RunNavMeshLineTraceBenchmark()
    local linetraceTask = Task.Spawn(function()
        local navMeshGen = GetNavMeshGenerator(Vector3.ZERO)
        if navMeshGen and navMeshGen.IsNavMeshReady() then
            local numOuterIters = 100
            local numInnerIters = 100
            local taskTimer = DD_PERF_TIMER.New(false)
            for _ = 1, numOuterIters do
                taskTimer:Continue()
                for _ = 1, numInnerIters do
                    local startId = navMeshGen.GetRandomNavMeshTile()
                    local endId = navMeshGen.GetRandomNavMeshTile()
                    local startTileX, startTileY, startTileZ = navMeshGen.UnpackTileCoords(startId)
                    local endTileX, endTileY, endTileZ = navMeshGen.UnpackTileCoords(endId)
                    navMeshGen.NavMeshLineTrace(startTileX, startTileY, startTileZ, endTileX, endTileY, endTileZ)
                    --navMeshGen.DebugDrawTile(startId, Color.GREEN, 5.0)
                    --navMeshGen.DebugDrawTile(endId, Color.RED, 5.0)
                end
                taskTimer:Pause()
                Task.Wait()
            end
            local time = taskTimer:End()
            print(string.format("TestNavMeshLineTrace finished in Time = %.3fs, RaysPerMs = %.1f", time, (numOuterIters * numInnerIters) / (time * 1000.0)))
            Task.GetCurrent():Cancel()
            return
        end
        Task.Wait()
    end)
    linetraceTask.repeatCount = -1
end

-- luacheck: ignore StartShowPlayerLocationOnGrid
local function StartShowPlayerLocationOnGrid()
    Task.Spawn(function()
        while true do
            Task.Wait(0.1)
            local players = Game.GetPlayers()
            if #players > 0 then
                local playerPos = players[1]:GetWorldPosition()
                local navMeshGen = GetNavMeshGenerator(playerPos)
                if navMeshGen then
                    local tileId = navMeshGen.GetWalkableTileFromWorldPos(players[1]:GetWorldPosition(), true, true)
                    if tileId then
                        navMeshGen.DebugDrawTile(tileId, Color.YELLOW, 4.0, 0.1)
                    end
                end
            end
        end
    end)
end

-- TODO: Need to be updated for demo map
-- luacheck: ignore TestIncorrectPath
local function TestIncorrectPath()
    local waitForPath = function (future)
        while true do
            Task.Wait()
            if future:IsFinished() then
                Task.GetCurrent():Cancel()
                DebugRenderPath(future:GetResultValue().path)
                return
            end
        end
    end

    startWorldPos = Vector3.New(6080, 5300, 2080)
    endWorldPos = Vector3.New(1410, -820, 1370)
    local incorrectPathTask = Task.Spawn(function()
        local navMeshGen = GetNavMeshGenerator(startWorldPos, endWorldPos)
        if navMeshGen and navMeshGen.IsNavMeshReady() then
            local startTileId = navMeshGen.GetGridTileFromWorldPos(startWorldPos, true)
            local endTileId = navMeshGen.GetGridTileFromWorldPos(endWorldPos, true)
            if startTileId and endTileId then
                local task = DEFAULT_PATHFINDER:PopPathTask(startTileId, endTileId)
                pathTaskQueue[#pathTaskQueue + 1] = task
                local future = task.promise:GetFuture()
                if future then
                    return waitForPath(future)
                end
            end
            return
        end
        Task.Wait()
    end)
    incorrectPathTask.repeatCount = -1
end

function Tick()
    TickProcessPathTaskQueue()
end

Task.Wait() -- WaitForObject

if REGISTER_IN_GLOBALS then
    if _G.NavMesh or _G.Pathfinder or _G.PathfindingManager or _G[DD_PATHFINDER_GLOBAL_ACCESS] then
        warn("A pathfinder have already registered itself in globals, do you have 2 PathfindingManagers in the level?")
    else
        local wrapper = {}
        -- Called by either _G.NavMesh.FindPath(Vector3, Vector3) or _G.NavMesh:FindPath(Vector3, Vector3)
        wrapper.FindPath = function (startPosOrSelf, StartPosOrEndPos, EndPos)
            local res
            if startPosOrSelf == wrapper then
                -- Called with self first
                res = FindPath(StartPosOrEndPos, EndPos)
            else
                res = FindPath(startPosOrSelf, StartPosOrEndPos)
            end
            if res then
                return res.path
            else
                return nil
            end
        end
        _G.NavMesh, _G.Pathfinder, _G.PathfindingManager = wrapper, wrapper, wrapper -- Bind a generic wrapper
        _G[DD_PATHFINDER_GLOBAL_ACCESS] = script.context
    end
end

-- Run tests
Task.Spawn(function()
    --StartShowPlayerLocationOnGrid()
    --TestPath()
    --RunPathfindingBenchmark(true, 100, true)
    --RunNavMeshLineTraceBenchmark()
    --TestIncorrectPath()
end)

Task.Wait(0.5) -- Give navmeshes some time to register

if VERBOSE_DEBUG and _G[DD_NAVMESH_GLOBAL_ACCESS] then
    for _, navMeshGen in pairs(_G[DD_NAVMESH_GLOBAL_ACCESS].generators) do
        navMeshGen.context.StartVisualizeNavMesh()
    end
end

