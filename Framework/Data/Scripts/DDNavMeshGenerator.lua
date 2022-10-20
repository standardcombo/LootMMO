--[[
    DDPathfinding
    v0.8.0
    by: truedarkdev (DarkDev#3167 at discord)
]]--

local DD_PERF_TIMER = require(script:GetCustomProperty("DDPerfTimer"))
local DD_NAV_MESH_DATA_STORE = require(script:GetCustomProperty("DDNavMeshDataStore"))
local DD_PRIORITY_QUEUE = require(script:GetCustomProperty("DDPriorityQueue"))
local DD_PATHFINDING_BASE = require(script:GetCustomProperty("DDPathfindingBase"))
local DD_PROMISE = require(script:GetCustomProperty("DDPromise"))

local ROOT = script:FindTemplateRoot()
local TILE_SIZE = ROOT:GetCustomProperty("TileSize")
-- TODO: Fix getters for these instead
ALLOWED_SLOPE = ROOT:GetCustomProperty("MaxAllowedSlope") or 0.7  -- Lower value means more steep slope -- TODO: convert to angles (same as player movement slope angle variable)
MAX_UNIT_HEIGHT = ROOT:GetCustomProperty("MaxUnitHeight") or 200.0
MAX_UNIT_SIZE_RADIUS = ROOT:GetCustomProperty("MaxUnitSizeRadius") or 50.0
local REMOVE_ISLANDS = ROOT:GetCustomProperty("RemoveIslands")
local AUTO_START_NAVMESH_VISUALIZATION = ROOT:GetCustomProperty("AutoStartNavMeshVisualization")
local ENABLE_NAVMESH = ROOT:GetCustomProperty("EnableNavMesh")
local NAV_MESH_AREA = script:GetCustomProperty("NavMeshArea"):WaitForObject()
local ISLAND_REMOVER_START_POS = script:GetCustomProperty("IslandRemoverStartPos"):WaitForObject()
local FOLIAGE_NAVMESH_GENERATION_FIX = ROOT:GetCustomProperty("FoliageNavMeshGenerationFix") or false -- Enable if you get problem with navmesh going through foliage with collision

local DD_NAVMESH_GLOBAL_ACCESS = "darkdev.navmeshgenerator"
local DD_PATHFINDER_GLOBAL_ACCESS = "darkdev.pathfinder"

if not(NAV_MESH_AREA:GetWorldRotation() == Rotation.ZERO) then
    warn(string.format("%s NavMeshArea has been rotated, which is not allowed (it must be an axis align bounding box). Forcing it to zero rotation.", ROOT.id, NAV_MESH_AREA.name))
    NAV_MESH_AREA:SetWorldRotation(Rotation.ZERO)
end

local NavMeshArea = nil

while(NavMeshArea == nil) do
    NavMeshArea = _G.NavMeshArea
    Task.Wait()
end

NAV_MESH_AREA:SetWorldPosition(NavMeshArea.position)
NAV_MESH_AREA:SetWorldScale(NavMeshArea.scale)

local HALF_TILE_SIZE = TILE_SIZE * 0.5
AREA_REAL_SIZE = NAV_MESH_AREA:GetWorldScale() * 100.0
HALF_AREA_REAL_SIZE = AREA_REAL_SIZE * 0.5
AREA_ORIGIN = NAV_MESH_AREA:GetWorldPosition()
START_GRID_POSITION = AREA_ORIGIN - HALF_AREA_REAL_SIZE
local NUM_TILES = {
    X = math.ceil(AREA_REAL_SIZE.x / TILE_SIZE.x),
    Y = math.ceil(AREA_REAL_SIZE.y / TILE_SIZE.y),
    Z = math.ceil(AREA_REAL_SIZE.z / TILE_SIZE.z),
    TOTAL = 0,
    LAYER = 0,
}
NUM_TILES.TOTAL = NUM_TILES.X * NUM_TILES.Y * NUM_TILES.Z
NUM_TILES.LAYER = NUM_TILES.X * NUM_TILES.Y
assert(NUM_TILES.TOTAL > 0)

local X_NUM_BITS = 0
local Y_NUM_BITS = 0
local Z_NUM_BITS = 0
for i = 1, 32 do
    if X_NUM_BITS == 0 and NUM_TILES.X >> i == 0 then
        X_NUM_BITS = i
    end
    if Y_NUM_BITS == 0 and NUM_TILES.Y >> i == 0 then
        Y_NUM_BITS = i
    end
    if Z_NUM_BITS == 0 and NUM_TILES.Z >> i == 0 then
        Z_NUM_BITS = i
    end
end
local X_BITMASK = 0xffffffff >> (32 - X_NUM_BITS)
local Y_BITMASK = 0xffffffff >> (32 - Y_NUM_BITS)
--local Z_BITMASK = 0xffffffff >> (32 - Z_NUM_BITS)
assert(NUM_TILES.TOTAL <= 68719476735) -- We need to pack tile coord in 36 bit max (28 bit for priority in prio queue)
local SPHERICAL_APPROX_MAX_RAYS = 8
local SPHERICAL_APPROX_ANGLE_PER_RAY = (2.0 * math.pi) / SPHERICAL_APPROX_MAX_RAYS
local PRINT_PREFIX = "[" .. ROOT.id .. "] "
local DIRETIONS_CACHED_GROUND = 253440 -- neighbour result for normal horizontal ground
local DIRECTIONS_DATA_CACHE = {
    DIR_X = {},
    DIR_Y = {},
    DIR_Z = {},
    DIR_BITMASK = {},
    DIR_TILE_DIFF_ID = {},
}
local UNPACK_DIRECTIONS_CACHE = {} -- bitmask to directions array
local FOLIAGE_COLLISION_SAFE_DISTANCE = 8000.0 -- Distance from foliage where collision works, used to determine calculation subdivisions

-- Debug Settings
local GENERATION_ASSERTS = false -- Do additional fail testing, good for when changes to generation is done, but adds quite a bit of overhead
local DEBUG_REMOVED_TILES = false -- Shows debug drawings for all failed tiles and the reason why it failed
local DEBUG_SUCCESS_INITIAL_RAYCAST = false -- Shows all initial raycast that hit ground (may be culled later on)
local DEBUG_SHOW_ALL_TILES = false -- Shows all tiles in the grid (WARNING, THIS IS SEVERELY PERFORMANCE HEAVY)
local DEBUG_SHOW_GRID = false -- Shows all generated tiles in the grid

-- Runtime Variables
local navMesh = {
    neighbours = {},
    z = {},
    numTiles = 0
}

-- Only exists when generating navmesh
local generationData = {
    started = false,
    navGrid = {
        walkable = {},
        z = {},
        numTiles = 0,
    },
    info = {
        firedRays = 0,
        culledTiles = 0,
    },
    areaSubdivisions = {}, -- from CalculateAreaSubdivisions
    totalTimer = DD_PERF_TIMER:New(false),
    disabledObjects = {},
    hasRunInitialDisableObjects = false,
    playerToTeleport = {
        ref = nil,
        position = nil,
        velocity = nil,
        gravityScale = nil,
        latestTeleportPosition = nil,
    }
}

local navMeshReady = false -- We have a finished navmesh
local isVisualizingNavMesh = false
local requestStopVisualizingNavMesh = false

function GetNumTiles()
    return {
        x = NUM_TILES.X,
        y = NUM_TILES.Y,
        z = NUM_TILES.Z,
        total = NUM_TILES.TOTAL,
        layer = NUM_TILES.LAYER,
    }
end

-- Returns Vector3
function GetTileSize()
    return TILE_SIZE
end

local function GridIteration(func)
    for x = 1, NUM_TILES.X do
        for y = 1, NUM_TILES.Y do
            for z = 1, NUM_TILES.Z do
                func(x, y, z)
            end
        end
    end
end

local function GridIterationBounds(xStart, yStart, zStart, xEnd, yEnd, zEnd, func)
    xStart = xStart >= 1 and xStart or 1 -- max
    yStart = yStart >= 1 and yStart or 1 -- max
    zStart = zStart >= 1 and zStart or 1 -- max
    xEnd = xEnd <= NUM_TILES.X and xEnd or NUM_TILES.X -- min
    yEnd = yEnd <= NUM_TILES.Y and yEnd or NUM_TILES.Y -- min
    zEnd = zEnd <= NUM_TILES.Z and zEnd or NUM_TILES.Z -- min
    for x = xStart, xEnd do
        for y = yStart, yEnd do
            for z = zStart, zEnd do
                func(x, y, z)
            end
        end
    end
end

local function ValidTileIndex(tileX, tileY, tileZ)
    return tileX >= 1 and tileY >= 1 and tileZ >= 1 and tileX <= NUM_TILES.X and tileY <= NUM_TILES.Y and tileZ <= NUM_TILES.Z
end

function GetGridTileFromWorldPos(worldPos, forceWithinBounds)
    local tilePos = worldPos - START_GRID_POSITION
    local tileX = (tilePos.x // TILE_SIZE.x) + 1
    local tileY = (tilePos.y // TILE_SIZE.y) + 1
    local tileZ = (tilePos.z // TILE_SIZE.z) + 1

    if forceWithinBounds then
        tileX = tileX >= 1 and tileX or 1 -- max
        tileX = tileX <= NUM_TILES.X and tileX or NUM_TILES.X -- min
        tileY = tileY >= 1 and tileY or 1 -- max
        tileY = tileY <= NUM_TILES.Y and tileY or NUM_TILES.Y -- min
        tileZ = tileZ >= 1 and tileZ or 1 -- max
        tileZ = tileZ <= NUM_TILES.Z and tileZ or NUM_TILES.Z -- min
    else
        if not ValidTileIndex(tileX, tileY, tileZ) then
            return false
        end
    end
    return PackTileCoords(tileX, tileY, tileZ)
end

local Z_SHIFT = X_NUM_BITS + Y_NUM_BITS
function PackTileCoords(tileX, tileY, tileZ)
    return (tileZ << Z_SHIFT) | (tileY << X_NUM_BITS) | tileX
end

function UnpackTileCoords(tileId)
    return tileId & X_BITMASK, (tileId >> X_NUM_BITS) & Y_BITMASK, tileId >> Z_SHIFT
end
local testTileX, testTileY, testTileZ = UnpackTileCoords(PackTileCoords(NUM_TILES.X, NUM_TILES.Y, NUM_TILES.Z))
assert(testTileX == NUM_TILES.X and testTileY == NUM_TILES.Y and testTileZ == NUM_TILES.Z)

-- Each dir param must be between -1 and 1
-- Returns a bitmask
local function PackDirection(dirX, dirY, dirZ)
    dirX = dirX + 1 -- convert to (0,2)
    dirY = dirY + 1 -- convert to (0,2)
    dirZ = dirZ + 1 -- convert to (0,2)
    local bitshiftSum = dirX + dirY * 3 + dirZ * 9
    return 1 << bitshiftSum
end
assert(DIRETIONS_CACHED_GROUND == (PackDirection(-1, -1, 0) | PackDirection(-1, 0, 0) | PackDirection(-1, 1, 0) |
                                    PackDirection(0, -1, 0) | PackDirection(0, 1, 0) |
                                    PackDirection(1, -1, 0) | PackDirection(1, 0, 0) | PackDirection(1, 1, 0)))
assert(PackDirection(-1, -1, -1) == 1)
assert(PackDirection(1, 1, 1) >> 26 == 1)

-- Returns all directions in the bitmask
-- Return table can come from cache, so it's not mutable!
function UnpackDirections(dirMask)
    -- We have already cached this result
    local cachedDirections = UNPACK_DIRECTIONS_CACHE[dirMask]
    if cachedDirections then
        return cachedDirections
    end

    local rtnDirections = {
        dirX = {}, -- Change in x coord
        dirY = {}, -- Change in y coord
        dirZ = {}, -- Change in z coord
        dirId = {}, -- Identifiy which direction it is
        dirTileDiffId = {}, -- Change in tileId in this direction, add to parentTileId to get childTileId
        num = 0
    }

    local num = 0
    for dirId = 1, 3 * 9 do
        local hasDir = dirMask & DIRECTIONS_DATA_CACHE.DIR_BITMASK[dirId]
        if hasDir > 0 then
            num = num + 1
            local dirX = DIRECTIONS_DATA_CACHE.DIR_X[dirId]
            local dirY = DIRECTIONS_DATA_CACHE.DIR_Y[dirId]
            local dirZ = DIRECTIONS_DATA_CACHE.DIR_Z[dirId]
            rtnDirections.dirX[num] = dirX
            rtnDirections.dirY[num] = dirY
            rtnDirections.dirZ[num] = dirZ
            rtnDirections.dirId[num] = dirId
            rtnDirections.dirTileDiffId[num] = DIRECTIONS_DATA_CACHE.DIR_TILE_DIFF_ID[dirId]
        end
    end
    rtnDirections.num = num

    UNPACK_DIRECTIONS_CACHE[dirMask] = rtnDirections
    return rtnDirections
end

-- Dir must be between -1 and 1
function HashDirection(dirX, dirY, dirZ)
    return 1 + (dirX + 1) + (dirY + 1) * 3 + (dirZ + 1) * 9 -- 1 -> 27
end

local function GetGridTileWorldPos(tileX, tileY, tileZ)
    tileX = tileX - 1
    tileY = tileY - 1
    tileZ = tileZ - 1
    return Vector3.New(
        START_GRID_POSITION.x + tileX * TILE_SIZE.x + HALF_TILE_SIZE.x
        , START_GRID_POSITION.y + tileY * TILE_SIZE.y + HALF_TILE_SIZE.y
        , START_GRID_POSITION.z + tileZ * TILE_SIZE.z + HALF_TILE_SIZE.z
    )
end

local function GetGridWorldZ(tileZ)
    tileZ = tileZ - 1
    return START_GRID_POSITION.z + tileZ * TILE_SIZE.z + HALF_TILE_SIZE.z
end

function GetNavTileWorldPos(tileId)
    local tileX, tileY, tileZ = UnpackTileCoords(tileId)
    local pos = GetGridTileWorldPos(tileX, tileY, tileZ)
    local zPos = navMesh.z[tileId]
    if zPos then
        pos.z = zPos
    end
    return pos
end

-- Returns closest distance to the navmesh edge, positive number is outside of navmesh while negative is from inside it
function GetDistanceToNavMesh(worldPos)
    local tileId = GetGridTileFromWorldPos(worldPos, false)
    if tileId then -- Check inside bounds
        local min = math.min
        local tileX, tileY, tileZ = UnpackTileCoords(tileId)
        local dx = min(NUM_TILES.X - tileX, tileX - 1)
        local dy = min(NUM_TILES.Y - tileY, tileY - 1)
        local dz = min(NUM_TILES.Z - tileZ, tileZ - 1)
        return -min(dx * TILE_SIZE.x, dy * TILE_SIZE.y, dz * TILE_SIZE.z)
    else
        local tileIdInBounds = GetGridTileFromWorldPos(worldPos, true)
        return (GetNavTileWorldPos(tileIdInBounds) - worldPos).size
    end
end

-- forceWithinBounds will find the closest walkable tile even though the position is outside of the navmesh.
-- CheckNeighbours will search around the target to find a walkable tile if the target wasn't walkable,
--      it can eiter be a boolean or it can be an extent table (e.g. {x = 2, y = 2, zMin = 3, zMax = 3}).
function GetWalkableTileFromWorldPos(worldPos, forceWithinBounds, checkNeighbours)
    local tileId = GetGridTileFromWorldPos(worldPos, forceWithinBounds)
    if not tileId then
        return false -- Tried to get tile outside the bounds
    end

    if navMesh.neighbours[tileId] then
        --print("Same Check")
        return tileId
    end

    if not checkNeighbours then
        return false -- Couldn't find a walkable tile
    end

    if not(type(checkNeighbours) == "table") then
        checkNeighbours = {}
    end
    if not checkNeighbours.x then checkNeighbours.x = 3 end
    if not checkNeighbours.y then checkNeighbours.y = 3 end
    if not checkNeighbours.zMin then checkNeighbours.zMin = 3 end
    if not checkNeighbours.zMax then checkNeighbours.zMax = 3 end

    local max = math.max
    local min = math.min
    local maxExtent = max(checkNeighbours.x, checkNeighbours.y, checkNeighbours.zMin, checkNeighbours.zMax)
    if maxExtent == 0 then
        return false -- Only allowed to check the specified tile
    end

    local tileX, tileY, tileZ = UnpackTileCoords(tileId)
    local testTile = function (xDir, yDir, zDir)
        local neighbourId = PackTileCoords(tileX + xDir, tileY + yDir, tileZ + zDir)
        if navMesh.neighbours[neighbourId] then
            return neighbourId
        end
    end

    -- First check if we are close to ground
    local zFirstTestExtent = min(2, checkNeighbours.zMin, checkNeighbours.zMax)
    for zDir = 0, zFirstTestExtent do
        local foundTile

        foundTile = testTile(0, 0, zDir) -- prefer downwards first
        if not foundTile then foundTile = testTile(0, 0, -zDir) end

        if foundTile then
            --print("Ground Check")
            return foundTile
        end
    end

    -- Redo search, but this time we expand in all directions
    local open = DD_PRIORITY_QUEUE.New()
    local iterCount = 0
    -- TODO: This is really slow, how it should work is that it should expand from the center until it find the first one
    for x = -checkNeighbours.x, checkNeighbours.x do
        for y = -checkNeighbours.y, checkNeighbours.y do
            for z = -checkNeighbours.zMin, checkNeighbours.zMax do
                local addTileId = PackTileCoords(tileX + x, tileY + y, tileZ + z)
                if navMesh.neighbours[addTileId] then
                    open:put(addTileId, DD_PATHFINDING_BASE.EuclidianHeuristic(x, y, z) // 0.0001)
                end
                iterCount = iterCount + 1
                if iterCount % 10000 == 0 then
                    Task.Wait()
                end
            end
        end
    end

    if open.num > 0 then
        return open:pop()
    end

    return false -- Couldn't find any walkable tiles
end

function GetRandomNavMeshTile()
    local random = math.random
    while true do
        local x = random(1, NUM_TILES.X)
        local y = random(1, NUM_TILES.Y)
        local z = random(1, NUM_TILES.Z)
        for zi = z, 1, -1 do -- Trace downwards
            local id = PackTileCoords(x, y, zi)
            if navMesh.neighbours[id] then
                return id
            end
        end
    end
end

local function GetProgressString(progress)
    local progressStrTable = {}
    local progressIterations = 10
    local progressIndex = CoreMath.Round(10 * progress)
    for i = 1, progressIterations do
        if i <= progressIndex then
            progressStrTable[i] = "="
        else
            progressStrTable[i] = " "
        end
    end
    local progressStr = table.concat(progressStrTable)
    return string.format("[%s] (%i%%)", progressStr, CoreMath.Round(progress * 100.0))
end

local function IsFoliageCollisionFixEnabled()
    return FOLIAGE_NAVMESH_GENERATION_FIX or _G[DD_PATHFINDER_GLOBAL_ACCESS].FOLIAGE_NAVMESH_GENERATION_FIX
end

local function SetPlayerToTeleportWithGeneration()
    if IsFoliageCollisionFixEnabled() then
        players = Game.GetPlayers()
        if #players > 0 then
            local playerToTeleport = players[1]
            generationData.playerToTeleport.ref = playerToTeleport
            if playerToTeleport then
                generationData.playerToTeleport.position = playerToTeleport:GetWorldPosition()
                generationData.playerToTeleport.velocity = playerToTeleport:GetVelocity()
                generationData.playerToTeleport.gravityScale = playerToTeleport.gravityScale
            end
        end

        -- Reset player pos and velocity all the time so they doesn't move
        Task.Spawn(function ()
            local playerToTeleport = generationData.playerToTeleport.ref
            while playerToTeleport do
                if generationData.playerToTeleport.latestTeleportPosition then
                    playerToTeleport:SetWorldPosition(generationData.playerToTeleport.latestTeleportPosition)
                    playerToTeleport:SetVelocity(Vector3.ZERO)
                    playerToTeleport.gravityScale = 0.0
                end
                Task.Wait()
                playerToTeleport = generationData.playerToTeleport.ref
            end
        end)
    end
end

local function TeleportPlayer(position)
    if generationData.playerToTeleport.ref then
        Task.Wait(0.1)
        local playerToTeleport = generationData.playerToTeleport.ref
        playerToTeleport:SetWorldPosition(position)
        playerToTeleport.gravityScale = 0.0
        playerToTeleport:SetVelocity(Vector3.ZERO)
        generationData.playerToTeleport.latestTeleportPosition = position
        Task.Wait(0.1)
    end
end

local function ResetTeleportedPlayer()
    if generationData.playerToTeleport.ref then
        local playerToTeleport = generationData.playerToTeleport.ref
        playerToTeleport.gravityScale = generationData.playerToTeleport.gravityScale
        playerToTeleport:SetVelocity(generationData.playerToTeleport.velocity)
        playerToTeleport:SetWorldPosition(generationData.playerToTeleport.position)
        generationData.playerToTeleport.ref = nil
        generationData.playerToTeleport.latestTeleportPosition = nil
    end
end

local function PrintNavMeshGenerationInfo()
    --print)
    --printstring.format("%sFinished navmesh generation in %.0fs", PRINT_PREFIX, generationData.totalTimer:GetTime()))
    --printstring.format("%sNum raycasts done = %.2fm", PRINT_PREFIX, generationData.info.firedRays / 1000000))
    --printstring.format("%sWalkable tiles = %i", PRINT_PREFIX, navMesh.numTiles))
    --printstring.format("%sCulled tiles = %i", PRINT_PREFIX, generationData.info.culledTiles))
    --print)
end

function IsNavMeshReady()
    return navMeshReady
end

function GetNavMesh()
    return navMesh
end

local raycastParamTable = {ignorePlayers = true}
local function Raycast(rayStartPos, rayEndPos, showDebugLineOnHit, debugLineColor)
    local hitResult = World.Raycast(rayStartPos, rayEndPos, raycastParamTable)
    generationData.info.firedRays = generationData.info.firedRays + 1
    if hitResult then
        if showDebugLineOnHit then
            CoreDebug.DrawLine(rayStartPos, rayEndPos, {
                duration = 9999,
                color = debugLineColor,
                thickness = 2.0
            })
        end
    end
    return hitResult
end

-- Figure out if there's a path between neighbours
-- luacheck: ignore tileIdA xa ya za tileIdB xb yb zb
local function CanConnectNeighbours(tileIdA, xa, ya, za, tileIdB, xb, yb, zb)
    local gridPosA = GetNavTileWorldPos(tileIdA)
    local gridPosB = GetNavTileWorldPos(tileIdB)

    local AtoB = gridPosB - gridPosA
    local AtoBLength = AtoB.size
    local AtoBDir = AtoB:GetNormalized()

    -- First check if the direct line between the points are too steep
    if math.abs(AtoBDir .. Vector3.UP) >= ALLOWED_SLOPE then
        if DEBUG_REMOVED_TILES then
            CoreDebug.DrawLine(gridPosA, gridPosA + AtoB, {
                duration = 9999,
                color = Color.YELLOW,
                thickness = 2.0
            })
        end
        return false
    end

    local orthoHorizontal = (Vector3.UP ^ AtoBDir):GetNormalized()

    -- Figure out if there's actually a walkable slope between these two
    local raycastGroundCheck = function()
        -- Make sure that we actually have a slope between the points
        local normal = AtoBDir ^ orthoHorizontal

        local distBetweenRays = 20.0 -- TODO: should be custom prop in script (advanced)
        local aboveGroundOffset = 40.0 -- TODO: should be custom prop in script (advanced)
        local maxHoleHeight = 30.0 -- TODO: should be custom prop in script (advanced)

        local debugArray
        if DEBUG_REMOVED_TILES then
            debugArray = {
                rayPosStart = {},
                rayPosEnd = {},
            }
        end

        local offsetVec = normal * aboveGroundOffset
        local rayTargetOffsetVec =  (-offsetVec + -normal * maxHoleHeight)
        local startRayPos = gridPosA + offsetVec
        local rayPosStartOffset = distBetweenRays
        --local lastHitPos = gridPosA
        --local slopeErrorHeightSum = 0
        while rayPosStartOffset < AtoBLength do
            local currentRayPos = startRayPos + rayPosStartOffset * AtoBDir
            local hitResult = World.Raycast(currentRayPos, currentRayPos + rayTargetOffsetVec, {ignorePlayers = true})
            generationData.info.firedRays = generationData.info.firedRays + 1

            if DEBUG_REMOVED_TILES then
                debugArray.rayPosStart[#debugArray.rayPosStart + 1] = currentRayPos
                debugArray.rayPosEnd[#debugArray.rayPosEnd + 1] = currentRayPos + rayTargetOffsetVec
            end

            if not hitResult then
                -- Hole between the paths, not allowed
                if DEBUG_REMOVED_TILES then
                    CoreDebug.DrawLine(gridPosA, gridPosA + AtoB, {
                        duration = 9999,
                        color = Color.MAGENTA,
                        thickness = 2.0
                    })
                    for i = 1, #debugArray.rayPosStart do
                        local color = Color.BLUE
                        if i == #debugArray.rayPosStart then
                            color = Color.RED
                        end
                        CoreDebug.DrawLine(debugArray.rayPosStart[i], debugArray.rayPosEnd[i], {
                            duration = 9999,
                            color = color,
                            thickness = 2.0
                        })
                    end
                end
                return false
            end

            -- Check if we have some bad slope angles on the path
            -- TODO: This doesn't really work with complex traces (stairs becomes too bad)
            -- NOTE: We could maybe get this to work even with complex traces, clear the slopeErrorHeightSum when encountering flat enough ground,
                    -- we may have to increase raycasting density though
            -- local lastHitToNewHit = hitResult:GetImpactPosition() - lastHitPos
            -- if lastHitToNewHit.sizeSquared > 1.0 then
            --     local lastHitToNewHitDir = lastHitToNewHit:GetNormalized()
            --     if math.abs(lastHitToNewHitDir .. Vector3.UP) >= ALLOWED_SLOPE then
            --         -- Bad slope angle, but can be allowed if the height difference is low enough
            --         slopeErrorHeightSum = slopeErrorHeightSum + lastHitToNewHit.z

            --         if math.abs(slopeErrorHeightSum) > maxHoleHeight then
            --             if DEBUG_REMOVED_TILES then
            --                 CoreDebug.DrawLine(gridPosA, gridPosA + AtoB, {
            --                     duration = 9999,
            --                     color = Color.MAGENTA,
            --                     thickness = 2.0
            --                 })

            --                 for i = 1, #debugArray.rayPosStart do
            --                     local color = Color.BLUE
            --                     if i == #debugArray.rayPosStart then
            --                         color = Color.YELLOW
            --                     end
            --                     CoreDebug.DrawLine(debugArray.rayPosStart[i], debugArray.rayPosEnd[i], {
            --                         duration = 9999,
            --                         color = color,
            --                         thickness = 2.0
            --                     })
            --                 end
            --             end
            --             return false
            --         end
            --     end
            -- end
            -- lastHitPos = hitResult:GetImpactPosition()

            rayPosStartOffset = rayPosStartOffset + distBetweenRays
        end

        return true
    end -- end raycastGroundCheck
    if not(raycastGroundCheck()) then
        return false
    end

    -- Raycast between the points to see that we have free sight and that we fit with our unit size
    local freePathCheck = function()
        local raycastBothWays = function (rayStartPos, rayEndPos, debugLineColor)
            local hitResult = Raycast(rayStartPos, rayEndPos, DEBUG_REMOVED_TILES, debugLineColor)
            if hitResult then
                return true
            end
            hitResult = Raycast(rayEndPos, rayStartPos, DEBUG_REMOVED_TILES, debugLineColor)
            if hitResult then
                return true
            end
            return false
        end

        local heightStep = 50.0 -- TODO: should be custom prop in script (advanced)
        --local widthStep = 50.0 -- TODO: should be custom prop in script (advanced)

        -- Fire rays at different heights to make sure nothing is blocking
        local startZ = 70.0 -- Start a bit above ground, we don't want to hit ground, needs to be quite large because of stairs
        local endZ = MAX_UNIT_HEIGHT
        while startZ < endZ do -- TODO: Reduce height checks, probably not needed to do that many
            -- Lets just do one raycast in the middle and one each for the unit size limits, will not be good enough for large unit sizes
            local rayStartPos = gridPosA + Vector3.UP * startZ
            local rayEndPos = gridPosB + Vector3.UP * startZ
            if raycastBothWays(rayStartPos, rayEndPos, Color.MAGENTA) then
                return false
            end

            -- TODO: Fix multiple traces horizontally as well
            local horizontalOffset = orthoHorizontal * MAX_UNIT_SIZE_RADIUS
            if raycastBothWays(rayStartPos + horizontalOffset, rayEndPos + horizontalOffset, Color.ORANGE) then
                return false
            end
            if raycastBothWays(rayStartPos - horizontalOffset, rayEndPos - horizontalOffset, Color.ORANGE) then
                return false
            end

            startZ = startZ + heightStep
        end

        return true
    end
    if not(freePathCheck()) then
        return false
    end

    return true
end

function DebugDrawTileAtCoords(x, y, z, color, thickness, renderDuration)
    if not thickness then
        thickness = 2.0
    end
    if not renderDuration then
        renderDuration = 9999.0
    end
    CoreDebug.DrawBox(GetGridTileWorldPos(x, y, z), HALF_TILE_SIZE * 0.8, {
        duration = renderDuration,
        color = color,
        thickness = thickness,
    })
end

function DebugDrawTile(tileId, color, thickness, renderDuration)
    local tileX, tileY, tileZ = UnpackTileCoords(tileId)
    DebugDrawTileAtCoords(tileX, tileY, tileZ, color, thickness, renderDuration)
end

-- Don't call on large grids, only for debugging smaller ones
-- luacheck: ignore VisualizeGrid
local function VisualizeGrid()
    local gridFunc = function(x, y, z)
        CoreDebug.DrawBox(GetGridTileWorldPos(x, y, z), HALF_TILE_SIZE, {
            duration = 9999
        })
    end
    GridIteration(gridFunc)
end

-- luacheck: ignore VisualizeNavGrid
-- Need to be updated before use
-- local function VisualizeNavGrid()
--     local taskTimer = DD_PERF_TIMER.New(true)

--     local gridFunc = function(x, y, z)
--         if generationData.navGrid.walkable[PackTileCoords(x, y, z)] then
--             local navPointLocation = GetGridTileWorldPos(x, y, z)
--             local boxSize = HALF_TILE_SIZE * 0.9
--             CoreDebug.DrawBox(navPointLocation, boxSize, {
--                 duration = 9999,
--                 color = Color.GREEN
--             })
--         end

--         if taskTimer:GetTime() > 0.016 then
--             taskTimer:End()
--             Task.Wait()
--             taskTimer:Start()
--         end
--     end
--     GridIteration(gridFunc)
-- end

local function VisualizeNavMesh(renderDuration, worldPos, renderRadius)
    local taskTimer = DD_PERF_TIMER.New(true)
    local gridCount = 0

    local lowTileX, lowTileY, lowTileZ = UnpackTileCoords(GetGridTileFromWorldPos(worldPos - renderRadius, true))
    local highTileX, highTileY, highTileZ = UnpackTileCoords(GetGridTileFromWorldPos(worldPos + renderRadius, true))

    local drawLine = CoreDebug.DrawLine
    local drawLineParams = {
        duration = renderDuration,
        color = Color.MAGENTA,
        thickness = 2.0
    }

    local zDrawOffset = 15.0
    local gridFunc = function(tileX, tileY, tileZ)
        local tileId = PackTileCoords(tileX, tileY, tileZ)
        local thisPos = GetNavTileWorldPos(tileId)
        thisPos.z = thisPos.z + zDrawOffset

        local neighbours = navMesh.neighbours[tileId]

        if neighbours then
            local directionsArray = UnpackDirections(neighbours)
            for i = 1, directionsArray.num do
                local thisToNeighbourDirX = directionsArray.dirX[i]
                local thisToNeighbourDirY = directionsArray.dirY[i]
                local thisToNeighbourDirZ = directionsArray.dirZ[i]

                -- Only look at tiles we haven't visited yet
                if thisToNeighbourDirX == -1 then -- Previous row
                    goto continue
                elseif thisToNeighbourDirX == 0 and thisToNeighbourDirY == -1 then -- Current row, column before this
                    goto continue
                elseif thisToNeighbourDirX == 0 and thisToNeighbourDirY == 0 and thisToNeighbourDirZ == -1 then -- Current row, Current column, previous tile
                    goto continue
                end

                local neighbourX = tileX + thisToNeighbourDirX
                local neighbourY = tileY + thisToNeighbourDirY
                local neighbourZ = tileZ + thisToNeighbourDirZ
                local neighbourPos = GetNavTileWorldPos(PackTileCoords(neighbourX, neighbourY, neighbourZ))
                neighbourPos.z = neighbourPos.z + zDrawOffset

                drawLine(thisPos, neighbourPos, drawLineParams)

                ::continue::
            end
        end

        gridCount = gridCount + 1

        if taskTimer:GetTime() > 0.008 or gridCount % 7500 == 0 then
            taskTimer:End()
            Task.Wait()
            taskTimer:Start()
        end
    end
    GridIterationBounds(lowTileX, lowTileY, lowTileZ
                        , highTileX, highTileY, highTileZ, gridFunc)
end

-- Bresenhem linedrawing with some changes to handle z values
-- Both coordinates must be legal tiles but can't be the same tile
-- This is a grounded linetrace, it can step in z but will only do so if needed. Doesn't work for flight traces.
-- eachTileCallback: Callback for each tile (excluding start/endtile). The order can be reverse from the sent in coordinates in the linetrace (it will always go from low coord to high coord)
-- luacheck: ignore debugMode
function NavMeshLineTrace(x1, y1, z1, x2, y2, z2, eachTileCallback, debugMode)
    -- http://www.edepot.com/linebresenham.html
    if debugMode then
        DebugDrawTileAtCoords(x1, y1, z1, Color.GREEN, 10.0)
        DebugDrawTileAtCoords(x2, y2, z2, Color.PURPLE, 10.0)
    end

    if x1 == x2 and y1 == y2 then
        return true
    end

    -- TODO: Make a fast path when starttile and endtile is neighbours

    local orgX1, orgY1, orgZ1 = x1, y1, z1
    local orgX2, orgY2, orgZ2 = x2, y2, z2

    local xDiff = x2 > x1 and x2 - x1 or x1 - x2
    local yDiff = y2 > y1 and y2 - y1 or y1 - y2

    -- If y is steeper, swap it with x (so we step the steepest every iteration)
    local steep = yDiff > xDiff
    if steep then
        -- luacheck: ignore y2
        x1, y1 = y1, x1
        x2, y2 = y2, x2
        xDiff, yDiff = yDiff, xDiff
    end

    -- Make this bidirectional consistent by always going from low x -> high x
    local isReverseIter = false -- If we iterate reverse from the sent in coordinates
    if x2 < x1 then
        x1, x2 = x2, x1
        y1, y2 = y2, y1
        z1, z2 = z2, z1
        isReverseIter = true
    end

    local x = x1
    local y = y1
    local z = z1
    local dx = xDiff
    local dy = yDiff
    local prevId
    local yStep = y1 < y2 and 1 or -1

    local balance = yDiff - xDiff
    balance = balance // 2
    assert(balance <= 0)

    -- Because we skip first tile, simulate a step
    prevId = steep and PackTileCoords(y1, x1, z) or PackTileCoords(x1, y1, z)
    -- if eachTileCallback then
    --     eachTileCallback(prevId, isReverseIter)
    -- end

    -- Main loop
    while x < x2 do
        x = x + 1 -- Skip first node (otherwise we have no valid prevId)
        local yMove = 0
        if balance >= 0 then
            y = y + yStep
            balance = balance - dx
            yMove = yStep
        end
        balance = balance + dy

        local tileX
        local tileY
        local dirMask
        if steep then -- Change y and x
            dirMask = 1 << ((yMove + 1) + 2 * 3) -- Inlined PackDirection for x,y
            tileX, tileY = y, x
        else
            dirMask = 1 << (2 + (yMove + 1) * 3) -- Inlined PackDirection for x,y
            tileX, tileY = x, y
        end

        local prevNeighbours = navMesh.neighbours[prevId]

        -- Check if there's a path in this direction
        if prevNeighbours & (dirMask << 9) == 0 then -- Check this direction without z movement
            if prevNeighbours & dirMask == 0 then -- Check this direction when moving down z
                if prevNeighbours & (dirMask << 18) == 0 then -- Check this direction when moving up z
                    if debugMode then
                        DebugDrawTileAtCoords(tileX, tileY, z, Color.RED)
                        NavMeshLineTraceDebugDraw(orgX1, orgY1, orgZ1, orgX2, orgY2, orgZ2)
                    end
                    return false -- This path didn't exist, failed linetrace
                else
                    z = z + 1
                end
            else
                z = z - 1
            end
        end

        prevId = PackTileCoords(tileX, tileY, z)
        if x2 > x and eachTileCallback then -- Skip this on last tile
            eachTileCallback(prevId, isReverseIter)
        end
    end
    assert(x == x2 and y == y2)

    if debugMode then
        NavMeshLineTraceDebugDraw(orgX1, orgY1, orgZ1, orgX2, orgY2, orgZ2)
    end
    return z == z2 -- We could potentially walk towards incorrect z, should be a very rare (or impossible depending on which pathfinder is calling this)
end

function NavMeshLineTraceDebugDraw(x1, y1, z1, x2, y2, z2)
    local lineTraceIter = function(tileId)
        local tileX, tileY, tileZ = UnpackTileCoords(tileId)
        DebugDrawTileAtCoords(tileX, tileY, tileZ, Color.CYAN)
    end
    NavMeshLineTrace(x1, y1, z1, x2, y2, z2, lineTraceIter, false) -- Must be false for debug mode, otherwise this till be an endless loop
end

local function DisableCollisionOnObjectsDuringGeneration()
    generationData.hasRunInitialDisableObjects = false

    Task.Wait(0.25) -- Give objects some time to register that they don't want to affect navmesh

    local checkForObjects = function(initialCheck)
        -- Disable collision on objects that shouldn't affect navmesh generation
        local taskTimer = DD_PERF_TIMER.New(true)
        local iterTimer = DD_PERF_TIMER.New(true)
        local stopIteration = initialCheck and 10000 or 2000
        local stopIterationTime = initialCheck and 0.033 or 0.005
        local disableObjects = {}

        local waitIter = function(i)
            if iterTimer:GetTime() > stopIterationTime or i % stopIteration == 0 then
                if debug and initialCheck then
                    --printstring.format("%sDisableCollisionOnObjectsDuringGeneration, ElapsedTime = %.2fs", PRINT_PREFIX, taskTimer:GetTime()))
                end
                iterTimer:End()
                Task.Wait()
                iterTimer:Start()
            end
        end

        local overlappingObjects = NAV_MESH_AREA:GetOverlappingObjects()
        for i = 1, #overlappingObjects do
            local overlappingObject = overlappingObjects[i]
            if overlappingObject and overlappingObject:IsValid() and overlappingObject:IsA("CoreObject") then
                local disableScript = overlappingObject:FindDescendantByName("DDDontAffectNavMesh")
                if not disableScript then
                    disableScript = overlappingObject:FindAncestorByName("DDDontAffectNavMesh")
                end
                if disableScript and disableScript.context.GetDisabledObject then
                    local disableObject = disableScript.context:GetDisabledObject()
                    if not(generationData.disabledObjects[disableObject]) then
                        disableObjects[#disableObjects + 1] = disableObject
                    end
                end
            end
            waitIter(i)
        end

        local waitIterStart = #overlappingObjects
        for i = 1, #disableObjects do
            local disableObject = disableObjects[i]
            if disableObject:IsCollidableInHierarchy() then
                -- Disable collision on this temporarily until generation is done
                local prevCollision = disableObject.collision
                disableObject.collision = Collision.FORCE_OFF
                generationData.disabledObjects[disableObject] = prevCollision
            end
            waitIter(waitIterStart + i)
        end

        return taskTimer:End()
    end

    Task.Spawn(function()
        local initialCheck = true
        -- TODO: No need to do this continuously, we should use enter/exit callback on the area instead.
        --          The only problem with that is overlapping navmeshes, so we need to wait to enable collision when all navmeshes is ready.
        while IsNavMeshReady() == false do
            local time = checkForObjects(initialCheck)
            generationData.hasRunInitialDisableObjects = true
            if debug and initialCheck then
                --printstring.format("%sDisableCollisionOnObjectsDuringGeneration Completed After: %.2fs", PRINT_PREFIX, time))
            end
            -- Continue searching for new objects that could be created or entering the area, but make sure we don't slow down the navmesh generation process
            Task.Wait(time * 5)
            initialCheck = false
        end

        -- TODO: Move this so it only runs when all navmeshes is done
        -- NavMesh is finished, reenable collision
        local iterCount = 0
        for disabledObject, prevCollision in pairs(generationData.disabledObjects) do
            if disabledObject:IsValid() then
                disabledObject.collision = prevCollision
            end
            iterCount = iterCount + 1
            if iterCount % 10000 == 0 then
                Task.Wait()
            end
        end
        generationData.disabledObjects = {}
        NAV_MESH_AREA.collision = Collision.FORCE_OFF -- Disable the trigger
    end)
end

local function SaveNavMesh(lastGeneratingNavMesh)
    local totalTimer = DD_PERF_TIMER.New(true)
    local iterCount = 0

    if debug then
        --printPRINT_PREFIX .. "Start SaveNavMesh")
    end

    if navMesh.numTiles > 0 then
        local navMeshSaveTable = {}
        navMeshSaveTable.navMeshId = script.id
        navMeshSaveTable.areaPos = {x = AREA_ORIGIN.x, y = AREA_ORIGIN.y, z = AREA_ORIGIN.z}
        navMeshSaveTable.areaSize = {x = AREA_REAL_SIZE.x, y = AREA_REAL_SIZE.y, z = AREA_REAL_SIZE.z}
        navMeshSaveTable.navMeshTileSize = {x = TILE_SIZE.x, y = TILE_SIZE.y, z = TILE_SIZE.z}
        navMeshSaveTable.numTiles = navMesh.numTiles
        navMeshSaveTable.tileIds = {}
        navMeshSaveTable.zDelta = {}
        navMeshSaveTable.neighbours = {}

        -- Start moving over the navmesh into the saveTable
        for key, value in pairs(navMesh.neighbours) do
            local tileId = key
            local _, _, tileZ = UnpackTileCoords(tileId)
            local tileZPos = GetGridWorldZ(tileZ)
            local neighbours = value
            local index = #navMeshSaveTable.tileIds + 1

            navMeshSaveTable.tileIds[index] = tileId
            navMeshSaveTable.zDelta[index] = (navMesh.z[tileId] - (tileZPos - HALF_TILE_SIZE.z)) // 1 -- Compress it with delta from the grid bottom pos and remove all decimals
            if neighbours == DIRETIONS_CACHED_GROUND then
                -- We store normal ground as 0 as this is the most common result, this only works because we have culled all real 0 tiles (PostProcessNavMesh)
                navMeshSaveTable.neighbours[index] = 0
            else
                navMeshSaveTable.neighbours[index] = neighbours
            end

            iterCount = iterCount + 1
            if iterCount % 15000 == 0 then
                Task.Wait()
            end
        end

        Task.Wait()

        DD_NAV_MESH_DATA_STORE:QueueSaveNavMesh(navMeshSaveTable)
    else
        warn(string.format("No navmesh was actually generated for %s, skipping saving for this. Make sure that the NavMeshArea overlaps walkable ground. If this problem still persist, try increasing the NavMeshArea size.", ROOT.id))
    end

    if lastGeneratingNavMesh then
        DD_NAV_MESH_DATA_STORE:FlushSaveQueue()
    end

    --printPRINT_PREFIX .. "SaveNavMesh Completed After: " .. CoreMath.Round(totalTimer:End(), 2) .. "s")
end

local function LoadNavMesh()
    local totalTimer = DD_PERF_TIMER.New(true)

    --printPRINT_PREFIX .. "Start LoadNavMesh")

    -- Disable the trigger because it's not needed except when generating
    NAV_MESH_AREA.collision = Collision.FORCE_OFF

    local loadData = DD_NAV_MESH_DATA_STORE.LoadNavMesh(script.id)

    if not loadData then
        return false
    end

    local dataVersion = loadData.version

    local compareVector = function(v1, v2)
        local compareFloat = function(n1, n2)
            local epsilon = 0.00001
            return math.abs(n1 - n2) < epsilon
        end
        return compareFloat(v1.x, v2.x)
            and compareFloat(v1.y, v2.y)
            and compareFloat(v1.z, v2.z)
    end

    if not (compareVector(loadData.areaPos, AREA_ORIGIN)) then
        warn(string.format("Found navmesh data for %s to load but area location missmatched, generating a new navmesh for this area.", ROOT.id))
        return false
    end
    if not (compareVector(loadData.areaSize, AREA_REAL_SIZE)) then
        warn(string.format("Found navmesh data for %s to load but area size missmatched, generating a new navmesh for this area.", ROOT.id))
        return false
    end
    if not (compareVector(loadData.navMeshTileSize, TILE_SIZE)) then
        warn(string.format("Found navmesh data for %s to load but tile size missmatched, generating a new navmesh for this area.", ROOT.id))
        return false
    end

    local loadNavMeshImpl = function ()
        local iterCount = 0

        for i = 1, loadData.numTiles do
            local neighbours = loadData.neighbours[i]
            local tileId = loadData.tileIds[i]

            local z
            if loadData.zDelta then
                local _, _, tileZ = UnpackTileCoords(tileId)
                local tileBottomZPos = GetGridWorldZ(tileZ) - HALF_TILE_SIZE.z
                z = loadData.zDelta[i] + tileBottomZPos
            elseif loadData.z then -- Old format
                z = loadData.z[i] + START_GRID_POSITION.z
            end

            -- Prepare values
            if neighbours == 0 then
                neighbours = DIRETIONS_CACHED_GROUND
            end

            -- Store values
            navMesh.neighbours[tileId] = neighbours
            navMesh.z[tileId] = z

            iterCount = iterCount + 1
            if iterCount % 15000 == 0 then
                Task.Wait()
            end
        end

        navMesh.numTiles = loadData.numTiles
    end
    loadNavMeshImpl()

    if AUTO_START_NAVMESH_VISUALIZATION then
        StartVisualizeNavMesh()
    end

    --printPRINT_PREFIX .. "LoadNavMesh (v" .. dataVersion .. ") Completed After: " .. CoreMath.Round(totalTimer:End(), 2) .. "s")

    navMeshReady = true
    return true
end

local function FindGroundRaycastSphericalApprox(rayStartPos, rayEndPos, radius, centerImpactPoint)
    -- Spherical approx, cast rays around in a circle, oriented around Z
    local sphericalGroundHits = {}
    for i = 1, SPHERICAL_APPROX_MAX_RAYS do
        local angle = SPHERICAL_APPROX_ANGLE_PER_RAY * (i - 1)
        local offset = Vector3.New(math.cos(angle) * radius, math.sin(angle) * radius, 0.0)
        local hitResult = World.Raycast(rayStartPos + offset, rayEndPos + offset, {ignorePlayers = true})
        generationData.info.firedRays = generationData.info.firedRays + 1
        if hitResult then
            sphericalGroundHits[i] = hitResult:GetImpactPosition()
        else
            -- We missed any of the raycasts, return failed
            if DEBUG_REMOVED_TILES then
                CoreDebug.DrawLine(rayStartPos + offset, rayEndPos + offset, {
                    duration = 60,
                    color = Color.RED
                })
            end
            return nil
        end
    end

    -- All raycast hit something, make sure our traced "plane" doesn't slope to much
    for i = 1, SPHERICAL_APPROX_MAX_RAYS do
        local dir = (sphericalGroundHits[i] - centerImpactPoint):GetNormalized()
        if dir .. Vector3.UP > ALLOWED_SLOPE * 1.2 then -- TODO: Should only be ALLOWED_SLOPE but that doesn't work that well with complex raycasts
            -- Sloping too much, return failed
            return nil
        end
    end

    -- Success!
    return sphericalGroundHits
end

local function CheckSizeClearanceHorizontally(centerImpactPos, groundHits, radius)
    local horizontalClearanceHeightStep = 50.0 -- TODO: should be custom prop in script (advanced)

    -- Start out by finding the highest point, as we must start from here (otherwise we would collide with slopes)
    local startZ = -99999999.0
    for _, value in ipairs(groundHits) do
        if startZ < value.z then
            startZ = value.z
        end
    end
    local bias = 5.0
    local endZ = startZ + MAX_UNIT_HEIGHT - bias
    startZ = startZ + bias

    -- Fire rays horizontally each step, until we reach our height target
    while startZ < endZ do
        for i = 1, SPHERICAL_APPROX_MAX_RAYS do
            local angle = SPHERICAL_APPROX_ANGLE_PER_RAY * (i - 1)
            local rayStartPos = Vector3.New(centerImpactPos.x, centerImpactPos.y, startZ)
            local rayEndPos = rayStartPos + Vector3.New(math.cos(angle) * radius, math.sin(angle) * radius, 0.0)
            local hitResult = World.Raycast(rayStartPos, rayEndPos, {ignorePlayers = true})
            generationData.info.firedRays = generationData.info.firedRays + 1
            if hitResult then
                return false
            end
        end

        startZ = startZ + horizontalClearanceHeightStep
    end

    return true
end

local function CheckHeightClearanceFromGroundTrace(groundHits)
    local startAboveGroundOffsetVec = Vector3.UP * 5.0 -- with some bias
    local unitHeightOffsetVec = Vector3.UP * MAX_UNIT_HEIGHT

    -- Fire raycast for each ground ground hit
    for _, value in ipairs(groundHits) do
        rayStartPos = value + startAboveGroundOffsetVec
        rayEndPos = value + unitHeightOffsetVec
        heightHitResult = World.Raycast(rayStartPos, rayEndPos, {ignorePlayers = true})
        generationData.info.firedRays = generationData.info.firedRays + 1
        if heightHitResult then
            return false
        end
    end
    return true
end

-- Calculates an array with subdivisions of the navmesh area, used to divide the navmesh calc step into chunks for the foliage collision problem
local function CalculateAreaSubdivisions()
    assert(generationData.calcAreaSubdivisions == nil)

    local maxSubAreaSize = 9999999999.0
    if IsFoliageCollisionFixEnabled() then
        maxSubAreaSize = FOLIAGE_COLLISION_SAFE_DISTANCE * 2.0 -- Radian to diameter
    end

    -- Make sure the whole cubical subdivision fit inside the max range
    maxSubAreaSize = math.sqrt((maxSubAreaSize ^ 2.0) / 2.0)

    local numTilesXPerDiv = math.floor(maxSubAreaSize / TILE_SIZE.x)
    local numTilesYPerDiv = math.floor(maxSubAreaSize / TILE_SIZE.y)
    local numTilesZPerDiv = math.floor(maxSubAreaSize / TILE_SIZE.z)

    -- Remove 2 tiles for each coordinate as CalculateNavMesh looks at neighbours
    numTilesXPerDiv = math.max(numTilesXPerDiv - 2, 1)
    numTilesYPerDiv = math.max(numTilesYPerDiv - 2, 1)
    numTilesZPerDiv = math.max(numTilesZPerDiv - 2, 1)

    local numXDivisions = math.ceil(NUM_TILES.X / numTilesXPerDiv)
    local numYDivisions = math.ceil(NUM_TILES.Y / numTilesYPerDiv)
    local numZDivisions = math.ceil(NUM_TILES.Z / numTilesZPerDiv)

    local subdivisionsArray = {}

    for x = 1, numXDivisions do
        for y = 1, numYDivisions do
            for z = 1, numZDivisions do
                local sub = {
                    minX = (x - 1) * numTilesXPerDiv + 1,
                    maxX = math.min(x * numTilesXPerDiv, NUM_TILES.X),
                    minY = (y - 1) * numTilesYPerDiv + 1,
                    maxY = math.min(y * numTilesYPerDiv, NUM_TILES.Y),
                    minZ = (z - 1) * numTilesZPerDiv + 1,
                    maxZ = math.min(z * numTilesZPerDiv, NUM_TILES.Z),
                    numTilesX = 0,
                    numTilesY = 0,
                    numTilesZ = 0,
                    centerPos = Vector3.ZERO,
                    walkableArray = {}, -- Used later on to track walkable tiles per area
                }
                sub.numTilesX = (sub.maxX - sub.minX) + 1
                sub.numTilesY = (sub.maxY - sub.minY) + 1
                sub.numTilesZ = (sub.maxZ - sub.minZ) + 1
                sub.centerPos = (GetGridTileWorldPos(sub.maxX, sub.maxY, sub.maxZ) + GetGridTileWorldPos(sub.minX, sub.minY, sub.minZ)) * 0.5
                subdivisionsArray[#subdivisionsArray + 1] = sub

                assert(sub.minX >= 1)
                assert(sub.minY >= 1)
                assert(sub.minZ >= 1)
                assert(sub.maxX <= NUM_TILES.X)
                assert(sub.maxY <= NUM_TILES.Y)
                assert(sub.maxZ <= NUM_TILES.Z)
                assert(sub.numTilesX > 0)
                assert(sub.numTilesY > 0)
                assert(sub.numTilesZ > 0)
                assert(sub.numTilesX <= NUM_TILES.X)
                assert(sub.numTilesY <= NUM_TILES.Y)
                assert(sub.numTilesZ <= NUM_TILES.Z)
            end
        end
    end

    generationData.areaSubdivisions = subdivisionsArray

    return subdivisionsArray
end

local function FinishGeneration()
    navMeshReady = true
    generationData.started = false

    local lastGeneratingNavMesh = _G[DD_NAVMESH_GLOBAL_ACCESS].waitingForGeneration == 0
    _G[DD_NAVMESH_GLOBAL_ACCESS].isGenerating = false

    PrintNavMeshGenerationInfo()

    -- These takes a lot of memory, clear them
    generationData.navGrid.walkable = {}
    generationData.navGrid.z = {}
    generationData.areaSubdivisions = {}

    if AUTO_START_NAVMESH_VISUALIZATION then
        StartVisualizeNavMesh()
    end
    Task.Wait()
    SaveNavMesh(lastGeneratingNavMesh)
    Events.Broadcast("NavMeshGenerated")
end

-- Post process for navmesh, cleans up unnecessary parts of it
local function PostProcessNavMesh()
    local iterCount = 0
    local cullCount = 0
    local totalTimer = DD_PERF_TIMER.New(true)
    local taskTimer = DD_PERF_TIMER.New(true)

    for key, value in pairs(navMesh.neighbours) do
        local removeThis = false
        local neighbours = value

        -- Cull tiles with no neighbours
        -- This step is required as we use 0 as an optimization when saving
        if neighbours == 0 then
            removeThis = true
            goto postprocess_done
        end

        ::postprocess_done::
        if removeThis then
            navMesh.neighbours[key] = nil
            navMesh.numTiles = navMesh.numTiles - 1
            cullCount = cullCount + 1
        end

        iterCount = iterCount + 1

        if taskTimer:GetTime() > 0.033 or iterCount % 5000 == 0 then
            taskTimer:End()
            if debug then
                local progressStr
                if REMOVE_ISLANDS then
                    progressStr = GetProgressString((iterCount / navMesh.numTiles) * 0.5)
                else
                    progressStr = GetProgressString(iterCount / navMesh.numTiles)
                end
                --printPRINT_PREFIX .. "PostProcessNavMesh Progress " .. progressStr .. ", ElapsedTime = " .. CoreMath.Round(totalTimer:GetTime(), 2) .. "s" )
            end
            Task.Wait()
            taskTimer:Start()
        end
    end

    Task.Wait()

    -- TODO: Break out the flood filling into its own function
    -- Remove islands (parts of the navmesh that cant be accessed from the main part)
    if REMOVE_ISLANDS then
        if ISLAND_REMOVER_START_POS then
            local rayStartPos = ISLAND_REMOVER_START_POS:GetWorldPosition()
            local hitResult = Raycast(rayStartPos, rayStartPos + (-Vector3.UP * 1000.0), false)
            if hitResult then
                local startTileId = GetWalkableTileFromWorldPos(hitResult:GetImpactPosition(), false, true)
                if startTileId then
                    -- Expand all nodes from this and place them in a new table that will replace the navmesh afterwards
                    local newNavMesh = {
                        neighbours = {},
                        z = {},
                        numTiles = 0,
                    }

                    -- Assert debug, make sure this is the same table as the file scoped one
                    for key, _ in pairs(navMesh) do
                        local newHasKey = false
                        for newKey, _ in pairs(newNavMesh) do
                            if key == newKey then
                                newHasKey = true
                            end
                        end
                        assert(newHasKey)
                    end

                    local tileQueue = {}
                    local tileQueueNum = 0
                    local addedToTileQueue = {}

                    tileQueueNum = tileQueueNum + 1
                    tileQueue[tileQueueNum] = startTileId
                    addedToTileQueue[startTileId] = true

                    while tileQueueNum > 0 do
                        local currentTileId = tileQueue[tileQueueNum]
                        tileQueueNum = tileQueueNum - 1

                        -- Debug show picked tiles
                        -- local tileX, tileY, tileZ = UnpackTileCoords(currentTileId)
                        -- DebugDrawTileAtCoords(tileX, tileY, tileZ, Color.PURPLE)

                        local neighboursDirMask = navMesh.neighbours[currentTileId]

                        --print(currentTileId, neighboursDirMask)

                        -- Add this to the new navmesh
                        newNavMesh.neighbours[currentTileId] = neighboursDirMask
                        newNavMesh.z[currentTileId] = navMesh.z[currentTileId]
                        newNavMesh.numTiles = newNavMesh.numTiles + 1

                        -- Find our neighbours and add them to the queue
                        local directions = UnpackDirections(neighboursDirMask)
                        for i = 1, directions.num do
                            local neighbourId = currentTileId + directions.dirTileDiffId[i]
                            -- Check so we haven't added this yet
                            if not addedToTileQueue[neighbourId] then
                                tileQueueNum = tileQueueNum + 1
                                tileQueue[tileQueueNum] = neighbourId
                                addedToTileQueue[neighbourId] = true
                            end
                        end

                        if taskTimer:GetTime() > 0.033 or newNavMesh.numTiles % 8000 == 0 then
                            taskTimer:End()
                            if debug then
                                local progressStr = GetProgressString(0.5 + (newNavMesh.numTiles / navMesh.numTiles) * 0.5) -- Not exactely accurate but good enough
                                --printPRINT_PREFIX .. "PostProcessNavMesh Progress " .. progressStr .. ", ElapsedTime = " .. CoreMath.Round(totalTimer:GetTime(), 2) .. "s" )
                            end
                            Task.Wait()
                            taskTimer:Start()
                        end
                    end

                    cullCount = cullCount + (navMesh.numTiles - newNavMesh.numTiles)

                    navMesh = newNavMesh -- Replace navmesh with our new one
                else -- startTileId
                    warn("Tried to remove islands from navmesh but failed because the ground below IslandRemoverStartPos was not legal, make sure to place it above the main ground and inside the pathfinder area")
                end
            else -- hitResult
                warn("Tried to remove islands from navmesh but failed because we couldn't find any ground below the IslandRemoverStartPos, make sure to place it above the main ground")
            end
        else -- ISLAND_REMOVER_START_POS
            warn("Tried to remove islands from navmesh but failed because no IslandRemoverStartPos have been set")
        end
    end

    -- Assert that paths exists in both directions for each tile
    if GENERATION_ASSERTS then
        Task.Wait()
        iterCount = 0
        for tileId, neighbourDirMask in pairs(navMesh.neighbours) do
            local neighbourDirections = UnpackDirections(neighbourDirMask)
            for i = 1, neighbourDirections.num do
                local neighbourId = tileId + neighbourDirections.dirTileDiffId[i]
                if navMesh.neighbours[neighbourId] & PackDirection(-neighbourDirections.dirX[i], -neighbourDirections.dirY[i], -neighbourDirections.dirZ[i]) == 0 then
                    warn(string.format("tile %i had %i as a neighbour but not the reverse, critical error", tileId, neighbourId))
                end
            end

            iterCount = iterCount + 1

            if taskTimer:GetTime() > 0.033 or iterCount % 2000 == 0 then
                taskTimer:End()
                Task.Wait()
                taskTimer:Start()
            end
        end
    end

    generationData.totalTimer:Stop()
    generationData.info.culledTiles = generationData.info.culledTiles + cullCount
    --printstring.format("%sPostProcessNavMesh Completed After: %0.1fs, culled tiles = %i, tiles left = %i", PRINT_PREFIX, CoreMath.Round(totalTimer:End(), 2), cullCount, navMesh.numTiles))

    FinishGeneration()
end

-- Evaluate each tile with its neighbours to see if that path is "walkable"
-- CalculateNavGrid must be called before this
local function CalculateNavMesh()
    local iterCount = 0
    local totalTimer = DD_PERF_TIMER.New(true)
    local taskTimer = DD_PERF_TIMER.New(true)

    --for tileId, isWalkable in pairs(generationData.navGrid.walkable) do
       -- assert(isWalkable)
    local subdivisionsArray = generationData.areaSubdivisions
    for subIdx = 1, #subdivisionsArray do
        local subArea = subdivisionsArray[subIdx]

        TeleportPlayer(subArea.centerPos)

        for _, tileId in ipairs(subArea.walkableArray) do
            if generationData.navGrid.walkable[tileId] then -- Need to check if these are walkable as postprocess could have removed some of them
                local x, y, z = UnpackTileCoords(tileId)

                local neighbourMinX = math.max(x - 1, 1)
                local neighbourMinY = math.max(y - 1, 1)
                local neighbourMinZ = math.max(z - 1, 1)

                local neighbourMaxX = math.min(x + 1, NUM_TILES.X)
                local neighbourMaxY = math.min(y + 1, NUM_TILES.Y)
                local neighbourMaxZ = math.min(z + 1, NUM_TILES.Z)

                for neighbourX = neighbourMinX, neighbourMaxX do
                    for neighbourY = neighbourMinY, neighbourMaxY do
                        for neighbourZ = neighbourMinZ, neighbourMaxZ do
                            -- Skip ourselves or vertical neighbours
                            if not (neighbourX == x and neighbourY == y) then
                                local thisToNeighbourDirX = neighbourX - x
                                local thisToNeighbourDirY = neighbourY - y
                                local thisToNeighbourDirZ = neighbourZ - z

                                -- Only look at tiles we haven't visited yet
                                if thisToNeighbourDirX == -1 then -- Previous row
                                    goto continue
                                elseif thisToNeighbourDirX == 0 and thisToNeighbourDirY == -1 then -- Current row, column before this
                                    goto continue
                                elseif thisToNeighbourDirX == 0 and thisToNeighbourDirY == 0 and thisToNeighbourDirZ == -1 then -- Current row, Current column, previous tile
                                    goto continue
                                end

                                local neighbourTileId = PackTileCoords(neighbourX, neighbourY, neighbourZ)
                                -- Only check against walkable tiles
                                if generationData.navGrid.walkable[neighbourTileId] then
                                    if CanConnectNeighbours(tileId, x, y, z, neighbourTileId, neighbourX, neighbourY, neighbourZ) then
                                        -- Connect them
                                        local thisToNeighbourDirMask = PackDirection(thisToNeighbourDirX, thisToNeighbourDirY, thisToNeighbourDirZ)
                                        local neighbourToThisDirMask = PackDirection(-thisToNeighbourDirX, -thisToNeighbourDirY, -thisToNeighbourDirZ)

                                        -- Debug check duplicates
                                        if GENERATION_ASSERTS then
                                            if (navMesh.neighbours[tileId] & thisToNeighbourDirMask > 0) then
                                                error(PRINT_PREFIX .. "CalculateNavMesh checked duplicated path, shouldn't be able to happen!");
                                            end
                                        end

                                        navMesh.neighbours[tileId] = navMesh.neighbours[tileId] | thisToNeighbourDirMask
                                        navMesh.neighbours[neighbourTileId] = navMesh.neighbours[neighbourTileId] | neighbourToThisDirMask
                                    end
                                end
                            end
                            ::continue::
                        end
                    end
                end

                iterCount = iterCount + 1

                if taskTimer:GetTime() > 0.033 or iterCount % 5000 == 0 then
                    taskTimer:End()
                    local progressStr = GetProgressString(iterCount / generationData.navGrid.numTiles)
                    --printPRINT_PREFIX .. "CalculateNavMesh Progress " .. progressStr .. ", ElapsedTime = " .. CoreMath.Round(totalTimer:GetTime(), 2) .. "s" )
                    Events.Broadcast("NavMeshProgress", iterCount / generationData.navGrid.numTiles, false)
                    Task.Wait()
                    taskTimer:Start()
                end
            end
        end
    end

    ResetTeleportedPlayer()

    --printstring.format("%sCalculateNavMesh Completed After: %0.1fs", PRINT_PREFIX, CoreMath.Round(totalTimer:End(), 2)))

    Task.Wait()
    PostProcessNavMesh()
end

-- Post process for nav grid, cleans up some misses, also initializes navMesh to default value
local function PostProcessNavGrid()
    local iterCount = 0
    local cullCount = 0
    local totalTimer = DD_PERF_TIMER.New(true)
    local taskTimer = DD_PERF_TIMER.New(true)
    local beforeNumTiles = generationData.navGrid.numTiles

    for tileId, isWalkable in pairs(generationData.navGrid.walkable) do
        assert(isWalkable)
        local x, y, z = UnpackTileCoords(tileId)
        local removeThis = false

        -- Don't allow two tiles directly above/below eachother
        local neighbourMinZ = z - 1
        local neighbourMaxZ = z + 1
        if (z > 1 and generationData.navGrid.walkable[PackTileCoords(x, y, neighbourMinZ)]) or
            (z < NUM_TILES.Z and generationData.navGrid.walkable[PackTileCoords(x, y, neighbourMaxZ)]) then
            removeThis = true
            goto postprocess_done
        end

        ::postprocess_done::
        if removeThis then
            generationData.navGrid.walkable[tileId] = nil
            generationData.navGrid.z[tileId] = nil
            generationData.navGrid.numTiles = generationData.navGrid.numTiles - 1
            cullCount = cullCount + 1
        else
            -- Keep this tile, lets initalize the navmesh for this tile
            navMesh.neighbours[tileId] = 0
            navMesh.z[tileId] = generationData.navGrid.z[tileId]
            navMesh.numTiles = navMesh.numTiles + 1
        end

        iterCount = iterCount + 1

        if taskTimer:GetTime() > 0.033 or iterCount % 10000 == 0 then
            taskTimer:End()
            local progressStr = GetProgressString(iterCount / beforeNumTiles)
            --printPRINT_PREFIX .. "PostProcessNavGrid Progress " .. progressStr .. ", ElapsedTime = " .. CoreMath.Round(totalTimer:GetTime(), 2) .. "s" )
            Task.Wait()
            taskTimer:Start()
        end
    end

    generationData.info.culledTiles = generationData.info.culledTiles + cullCount
    --printstring.format("%sPostProcessNavGrid Completed After: %0.1fs, culled tiles = %i, tiles left = %i", PRINT_PREFIX, CoreMath.Round(totalTimer:End(), 2), cullCount, generationData.navGrid.numTiles))

    Task.Wait()
    CalculateNavMesh()
    --Task.Spawn(VisualizeNavGrid)
    --Task.Spawn(VisualizeNavPoints)
end

-- Evaluate each tile in the grid if they are "walkable"
local function CalculateNavGrid()
    local currentTileCount = 0
    local iterCount = 0
    local emptyColumnsCount = 0
    local totalTimer = DD_PERF_TIMER.New(true)
    local taskTimer = DD_PERF_TIMER.New(true)
    local gridSizeHeightVec = Vector3.UP * TILE_SIZE.z
    local halfGridSizeOffsetVec = Vector3.UP * HALF_TILE_SIZE.z

    if DEBUG_SHOW_ALL_TILES then
        for x = 1, NUM_TILES.X do
            for y = 1, NUM_TILES.Y do
                for z = 1, NUM_TILES.Z do
                    DebugDrawTileAtCoords(x, y, z, Color.MAGENTA)
                end
            end
        end
    end

    SetPlayerToTeleportWithGeneration()

    local subdivisionsArray = CalculateAreaSubdivisions()
    for subIdx = 1, #subdivisionsArray do
        local subArea = subdivisionsArray[subIdx]
        TeleportPlayer(subArea.centerPos)

        for x = subArea.minX, subArea.maxX do
            for y = subArea.minY, subArea.maxY do

                -- Optimization, find the last z that we need to check (raycast downwards from the top of the navmesh area)
                local findZLowestRayPos = GetGridTileWorldPos(x, y, subArea.minZ) - halfGridSizeOffsetVec
                local findZCurrentRayPos = GetGridTileWorldPos(x, y, subArea.maxZ) + halfGridSizeOffsetVec
                local findZHitResult = Raycast(findZCurrentRayPos, findZLowestRayPos, false)
                if not(findZHitResult) then
                    -- A total empty column, if we get to many warn the user to fit the navmesh area better around the level
                    -- TODO: This need to be updated to support subdivided areas
                    -- emptyColumnsCount = emptyColumnsCount + 1
                end
                local zMax = subArea.maxZ
                while findZHitResult do
                    local pos = findZHitResult:GetImpactPosition()
                    local tileId = GetGridTileFromWorldPos(pos, true)
                    local _, _, z = UnpackTileCoords(tileId)
                    -- This is needed because of float precision errors when raycasting, we can hit the tile above the one we are raycasting for
                    z = z > zMax and zMax or z

                    if DEBUG_SHOW_GRID then
                        DebugDrawTile(tileId, Color.RED, 5.0, 9999.0)
                    end

                    pos = GetGridTileWorldPos(x, y, z) -- Set position to the center of the tile

                    local hitResult = findZHitResult
                    if hitResult then
                        if DEBUG_SUCCESS_INITIAL_RAYCAST then
                            CoreDebug.DrawLine(findZCurrentRayPos, findZLowestRayPos, {
                                duration = 9999,
                                color = Color.GREEN,
                                thickness = 2.0
                            })
                        end
                        local result = false
                        local centerImpactPos = hitResult:GetImpactPosition()
                        -- Make sure we hit the intended tile, as we overlap a bit with the above tile we can potentially hit it
                        local hitGridTile = GetGridTileFromWorldPos(centerImpactPos)
                        if hitGridTile == tileId then
                            -- Don't allow too steep slopes
                            if hitResult:GetImpactNormal() .. Vector3.UP > ALLOWED_SLOPE then
                                -- Do a spherical cast downwards, this is to make sure we have space around our grid
                                rayStartPos = pos + halfGridSizeOffsetVec + gridSizeHeightVec -- start one grid above
                                rayEndPos = pos - halfGridSizeOffsetVec - gridSizeHeightVec -- end one grid  below
                                local groundHits = FindGroundRaycastSphericalApprox(rayStartPos, rayEndPos, MAX_UNIT_SIZE_RADIUS, centerImpactPos)
                                if groundHits then
                                    table.insert(groundHits, centerImpactPos) -- insert middle raycast into groundHits
                                    -- Check size requirement horizontally
                                    if CheckSizeClearanceHorizontally(centerImpactPos, groundHits, MAX_UNIT_SIZE_RADIUS) then
                                        -- Check cleared max height, fire each spherical ray impact point but upwards
                                        if CheckHeightClearanceFromGroundTrace(groundHits) then
                                            result = true
                                        else
                                            if DEBUG_REMOVED_TILES then
                                                DebugDrawTileAtCoords(x, y, z, Color.MAGENTA)
                                            end
                                        end
                                    else
                                        if DEBUG_REMOVED_TILES then
                                            DebugDrawTileAtCoords(x, y, z, Color.PURPLE)
                                        end
                                    end
                                else
                                    if DEBUG_REMOVED_TILES then
                                        DebugDrawTileAtCoords(x, y, z, Color.ORANGE)
                                    end
                                end
                            else
                                if DEBUG_REMOVED_TILES then
                                    DebugDrawTileAtCoords(x, y, z, Color.YELLOW)
                                end
                            end
                        end

                        if result then
                            generationData.navGrid.walkable[tileId] = true
                            generationData.navGrid.z[tileId] = centerImpactPos.z
                            generationData.navGrid.numTiles = generationData.navGrid.numTiles + 1
                            subArea.walkableArray[#subArea.walkableArray + 1] = tileId
                        end
                    -- else
                        -- DebugDrawTileAtCoords(x, y, z, Color.CYAN)
                    end

                    iterCount = iterCount + 1

                    if taskTimer:GetTime() > 0.033 or iterCount % 5000 == 0 then
                        taskTimer:End()
                        local progressStr = GetProgressString(currentTileCount / NUM_TILES.TOTAL)
                        --printPRINT_PREFIX .. "CalculateNavGrid Progress " .. progressStr .. ", ElapsedTime = " .. CoreMath.Round(totalTimer:GetTime(), 2) .. "s" )
                        Events.Broadcast("NavMeshProgress", currentTileCount / NUM_TILES.TOTAL, true)
                        Task.Wait()
                        taskTimer:Start()
                    end

                    zMax = z - 1 -- Move it to next tile in Z
                    if zMax >= subArea.minZ then
                        -- Fire next long raycast to see where we hit next
                        findZCurrentRayPos = GetGridTileWorldPos(x, y, zMax) + halfGridSizeOffsetVec
                        findZHitResult = Raycast(findZCurrentRayPos, findZLowestRayPos, false)
                    else
                        -- We're at the bottom of the navmesh area, go to next column
                        findZHitResult = nil
                    end
                end
                currentTileCount = currentTileCount + subArea.numTilesZ
            end
        end
    end

    if emptyColumnsCount > (NUM_TILES.X + NUM_TILES.Y) * 100 then
        warn("A big portion of NavMeshArea seems to be empty, which can negatively affect performance. Try scaling X and Y to better fit the level.")
    end

    --printstring.format("%sCalculateNavGrid Completed After: %0.1fs, generated tiles = %i", PRINT_PREFIX, CoreMath.Round(totalTimer:End(), 2), generationData.navGrid.numTiles))

    Task.Wait()
    PostProcessNavGrid()
end

-- Prepare for generation
local function BeforeGeneration()
    _G[DD_NAVMESH_GLOBAL_ACCESS].waitingForGeneration = _G[DD_NAVMESH_GLOBAL_ACCESS].waitingForGeneration + 1

    -- Someone is already generating, lets just do one at a time
    while _G[DD_NAVMESH_GLOBAL_ACCESS].isGenerating do
        Task.Wait(0.5)
    end

    -- This turn to start generation
    _G[DD_NAVMESH_GLOBAL_ACCESS].isGenerating = true
    _G[DD_NAVMESH_GLOBAL_ACCESS].waitingForGeneration = _G[DD_NAVMESH_GLOBAL_ACCESS].waitingForGeneration - 1

    DisableCollisionOnObjectsDuringGeneration()

    -- Wait for objects to have their collision disabled before generation
    while generationData.hasRunInitialDisableObjects == false do
        Task.Wait()
    end

    CalculateNavGrid()
end

function StartGeneratingNavMesh()
    if ENABLE_NAVMESH == false then
        return false
    end

    if generationData.started == false then
        generationData.started = true
        generationData.totalTimer:Start()
        Task.Spawn(BeforeGeneration)
    end
end

function StartLoadingNavMesh()
    if generationData.started then
        return nil
    end

    if DD_NAV_MESH_DATA_STORE.HasLoadDataForNavMesh(script.id) == false then
        return nil
    end

    local promise = DD_PROMISE.New()

    Task.Spawn(function ()
        promise:SetIsRunning()
        local loaded = LoadNavMesh()
        if loaded then
            promise:SetResult(DD_PROMISE.RESULT_SUCCEEDED)
        else
            promise:SetResult(DD_PROMISE.RESULT_REJECTED)
        end
    end)

    return promise:GetFuture()
end

function HasLoadData()
    return DD_NAV_MESH_DATA_STORE.HasLoadDataForNavMesh(script.id)
end

function StartVisualizeNavMesh()
    if isVisualizingNavMesh then
        return
    end
    isVisualizingNavMesh = true

    local targetRenderTime = 0.5
    local maxRadius = 2000.0
    local minRadius = 500.0
    Task.Spawn(function ()
        local radius = 1000.0
        local currentRenderTime = targetRenderTime
        local renderTimeMargin = targetRenderTime * 0.2
        local taskTimer = DD_PERF_TIMER.New(true)
        while IsNavMeshReady() == false do
            Task.Wait(0.25)
        end
        while true do
            if requestStopVisualizingNavMesh then
                break
            end

            local players = Game.GetPlayers()
            while #players == 0 or GetDistanceToNavMesh(players[1]:GetWorldPosition()) > (TILE_SIZE.size * 10) do
                Task.Wait(1.0)
                players = Game.GetPlayers()
            end

            VisualizeNavMesh(math.max(targetRenderTime * 1.5, currentRenderTime * 1.5), players[1]:GetWorldPosition(), radius)

            currentRenderTime = taskTimer:GetTime()
            local timeLeft = targetRenderTime - currentRenderTime
            if timeLeft > 0 then
                Task.Wait(timeLeft)
            else
                Task.Wait()
            end

            local renderTimeTargetDist = math.abs(targetRenderTime - currentRenderTime) / targetRenderTime
            local radiusScaling = math.max(1.0, renderTimeTargetDist)
            if currentRenderTime > targetRenderTime + renderTimeMargin then
                radius = math.max(minRadius, radius * (1.0 - 0.05 * radiusScaling))
            elseif currentRenderTime < targetRenderTime - renderTimeMargin then
                radius = math.min(maxRadius, radius * (1.0 + 0.025 * radiusScaling))
            end

            taskTimer:Reset()
        end
        isVisualizingNavMesh = false
        requestStopVisualizingNavMesh = false
    end)
end

function StopVisualizeNavMesh()
    requestStopVisualizingNavMesh = true
end

function DrawFullNavMesh(renderDuration)
    Task.Spawn(function ()
        while IsNavMeshReady() == false do
            Task.Wait(0.25)
        end
        VisualizeNavMesh(renderDuration, Vector3.ZERO, 9999999.0)
    end)
end

-- Populate DIRECTIONS_DATA_CACHE
for dirZ = -1, 1 do
    for dirY = -1, 1 do
        for dirX = -1, 1 do
            local abs = math.abs
            local dirId = HashDirection(dirX, dirY, dirZ)
            local dirXSign = dirX < 0 and -1 or 1
            local dirYSign = dirY < 0 and -1 or 1
            local dirZSign = dirZ < 0 and -1 or 1
            DIRECTIONS_DATA_CACHE.DIR_X[dirId] = dirX
            DIRECTIONS_DATA_CACHE.DIR_Y[dirId] = dirY
            DIRECTIONS_DATA_CACHE.DIR_Z[dirId] = dirZ
            DIRECTIONS_DATA_CACHE.DIR_BITMASK[dirId] = PackDirection(dirX, dirY, dirZ)
            DIRECTIONS_DATA_CACHE.DIR_TILE_DIFF_ID[dirId] = (PackTileCoords(0, 0, abs(dirZ)) * dirZSign) + (PackTileCoords(0, abs(dirY), 0) * dirYSign) + (PackTileCoords(abs(dirX), 0, 0) * dirXSign)
        end
    end
end

function Generate()
    navMeshReady = false
    
    while(NavMeshArea == nil) do
        Task.Wait()
    end

    if ENABLE_NAVMESH then
        if not _G[DD_NAVMESH_GLOBAL_ACCESS] then
            _G[DD_NAVMESH_GLOBAL_ACCESS] = {
                generators = {},
                isGenerating = false,
                waitingForGeneration = 0,
            }
        end
        local globalGenerators = _G[DD_NAVMESH_GLOBAL_ACCESS].generators
        globalGenerators[#globalGenerators + 1] = script

        local onLoadingDone = function(_, resultState)
            if resultState == DD_PROMISE.RESULT_REJECTED then
                -- Start generating a new nav mesh if the loading failed
                StartGeneratingNavMesh()
            end
        end
        local loadingFuture = StartLoadingNavMesh()
        if loadingFuture then
            loadingFuture:AddResultCallback(onLoadingDone)
        else
            onLoadingDone(nil, DD_PROMISE.RESULT_REJECTED)
        end
    else
        NAV_MESH_AREA.collision = Collision.FORCE_OFF
    end
end

Generate()