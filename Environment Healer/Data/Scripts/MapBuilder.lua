local ASCIIParser = require(script:GetCustomProperty("ASCIIParser"))
local TILES = require(script:GetCustomProperty("Tiles"))
local ENEMIES = require(script:GetCustomProperty("Enemies"))
local SPAWN_POINT = script:GetCustomProperty("SpawnPoint")

MapBuilder = {}
MapBuilder.Type = {}
MapBuilder.Type.Floor = "0"
MapBuilder.Type.Wall = "1"
MapBuilder.Type.Spawn = "S"
MapBuilder.Type.Encounter = "E"

function MapBuilder.Build(opts)
	local map = ASCIIParser.BuildMap(opts.map, opts.width, opts.height)

	MapBuilder.Spawn(map, opts)
end

function MapBuilder.GetTile(map, row, col)
	local foundRow = map[row]

	if foundRow then
		return foundRow[col]
	end

	return nil
end

function MapBuilder.SpawnEnemies()
	for index, point in ipairs(MapBuilder.enemySpawnPoints) do
		local enemyAsset = ENEMIES[math.random(#ENEMIES)].asset
		local enemy = World.SpawnAsset(enemyAsset, {
			
			position = point + (Vector3.UP * 50),
			networkContext = NetworkContextType.NETWORKED,
			rotation = Rotation.New(0, 0, math.random(0, 360))
		
		})
	end
end

function MapBuilder.GenerateNavMesh(width, height, size, container)
	_G.NavMeshArea = {

		scale = Vector3.New(size / 100 * height, size / 100 * width, size / 100),
		position = Vector3.New(-size / 2, size / 2, size / 2)

	}
end

local _matchPatternRotationCount = 0

function _match(map, row, col, pattern)
	for y = 1, 3 do
		for x = 1, 3 do
			local p = string.sub(pattern[y], x,x)
			
			if p == "?" then
				goto continue
			end
			
			local entry = MapBuilder.GetTile(map, row + y - 2, col + x - 2)
			
			if p == "1" and entry ~= MapBuilder.Type.Wall then
				return false
			end
			
			if p == "0"
			and entry ~= MapBuilder.Type.Floor
			and entry ~= MapBuilder.Type.Spawn
			and entry ~= MapBuilder.Type.Encounter
			then
				return false
			end
			::continue::
		end
	end
	return true
end

local _cachedRotatedPatterns = {}

function _rotatePattern(pattern)
	local key = pattern[1]..pattern[2]..pattern[3]
	
	if _cachedRotatedPatterns[key] then
		return _cachedRotatedPatterns[key]
	end

	local result = {
		string.sub(pattern[1], 3,3)..string.sub(pattern[2], 3,3)..string.sub(pattern[3], 3,3),
		string.sub(pattern[1], 2,2)..string.sub(pattern[2], 2,2)..string.sub(pattern[3], 2,2),
		string.sub(pattern[1], 1,1)..string.sub(pattern[2], 1,1)..string.sub(pattern[3], 1,1),
	}
	_cachedRotatedPatterns[key] = result
	return result
end

function MapBuilder.MatchPattern(map, row, col, pattern, tryDifferentRotations)
	_matchPatternRotationCount = 0
	if _match(map, row, col, pattern) then return true end
	
	if tryDifferentRotations then
		_matchPatternRotationCount = 1
		pattern = _rotatePattern(pattern)
		if _match(map, row, col, pattern) then return true end
		
		_matchPatternRotationCount = 2
		pattern = _rotatePattern(pattern)
		if _match(map, row, col, pattern) then return true end
		
		_matchPatternRotationCount = 3
		pattern = _rotatePattern(pattern)
		if _match(map, row, col, pattern) then return true end
	end
	return false
end

function MapBuilder.Spawn(map, opts)
	local container = opts.parent
	local width = opts.width
	local height = opts.height
	local tileSize = opts.tileSize * opts.scale
	local scale = Vector3.ONE * opts.scale
	
	if not Environment.IsServer() then
		return
	end

	local playerPoint = nil
	local enemyPoints = {}
	
	local pos = Vector3.New(0, 0, 0)
	local rotation = Rotation.New()
	local origin = Vector3.New(
		(height * tileSize) / 2, 
		-(width * tileSize) / 2, 
		0)
	
	for row = 1, height do
		for col = 1, width do
			local assetId, angle, addFloorAndRoof
			
			if map[row][col] == MapBuilder.Type.Spawn then
				playerPoint = Vector3.New(
					-row * tileSize,
					col * tileSize,
					0) + origin
				addFloorAndRoof = true
			
			elseif MapBuilder.MatchPattern(map, row, col, {
				"000",
				"010",
				"?1?"}, 
				true) then
				assetId = TILES["WallConvexDeadEnd"].tile
				rotation.z = -90 * _matchPatternRotationCount
				addFloorAndRoof = true
			
			elseif MapBuilder.MatchPattern(map, row, col, {
				"101",
				"101",
				"?1?"}, 
				true) then
				assetId = TILES["WallConcaveDeadEnd"].tile
				rotation.z = -90 * _matchPatternRotationCount
				addFloorAndRoof = true
			
			elseif MapBuilder.MatchPattern(map, row, col, {
				"?0?",
				"010",
				"?0?"}, 
				false) then
				assetId = TILES["WallIsland"].tile
				rotation.z = -90 * _matchPatternRotationCount
				addFloorAndRoof = true
			
			elseif MapBuilder.MatchPattern(map, row, col, {
				"?01",
				"011",
				"?1?"}, 
				true) then
				assetId = TILES["WallConvex011"].tile
				rotation.z = -90 * _matchPatternRotationCount
				addFloorAndRoof = true
			
			elseif MapBuilder.MatchPattern(map, row, col, {
				"?0?",
				"011",
				"11?"},
				true) then
				assetId = TILES["WallConvex110"].tile
				rotation.z = -90 * _matchPatternRotationCount
				addFloorAndRoof = true
			
			elseif MapBuilder.MatchPattern(map, row, col, {
				"?0?",
				"011",
				"?1?"},
				true) then
				assetId = TILES["WallConvex111"].tile
				rotation.z = -90 * _matchPatternRotationCount
				addFloorAndRoof = true
			
			elseif MapBuilder.MatchPattern(map, row, col, {
				"?00",
				"001",
				"011"},
				true) then
				assetId = TILES["WallConcave010"].tile
				rotation.z = -90 * _matchPatternRotationCount
				addFloorAndRoof = true
			
			elseif MapBuilder.MatchPattern(map, row, col, {
				"?00",
				"001",
				"111"},
				true) then
				assetId = TILES["WallConcave011"].tile
				rotation.z = -90 * _matchPatternRotationCount
				addFloorAndRoof = true
			
			elseif MapBuilder.MatchPattern(map, row, col, {
				"?01",
				"001",
				"011"},
				true) then
				assetId = TILES["WallConcave110"].tile
				rotation.z = -90 * _matchPatternRotationCount
				addFloorAndRoof = true
			
			elseif MapBuilder.MatchPattern(map, row, col, {
				"?0?",
				"001",
				"?1?"},
				true) then
				assetId = TILES["WallConcave111"].tile
				rotation.z = -90 * _matchPatternRotationCount
				addFloorAndRoof = true
			
			elseif MapBuilder.MatchPattern(map, row, col, {
				"?0?",
				"?1?",
				"???"},
				true) then
				assetId = TILES["Wall"].tile
				rotation.z = -90 * _matchPatternRotationCount
			
			else
				local entry = map[row][col]
				if entry == MapBuilder.Type.Floor
				or entry == MapBuilder.Type.Spawn
				or entry == MapBuilder.Type.Encounter then
					addFloorAndRoof = true
				end
			end

			pos.x = -row * tileSize
			pos.y = col * tileSize
			
			if assetId then
				local params = {
					position = pos + origin,
					rotation = rotation,
					scale = scale
				}
				container:SpawnSharedAsset(assetId, params)
			end
			
			if addFloorAndRoof then
				MapBuilder.QueueFloorAndRoof(pos + origin)
			end
		end
	end
	
	-- Add player spawn point
	if playerPoint then
		local playerPoint = playerPoint + Vector3.UP * 150 + container:GetWorldPosition()
		local spawnRot = Rotation.New() --TODO
		World.SpawnAsset(SPAWN_POINT, {position = playerPoint, rotation = spawnRot})
	end
	MapBuilder.enemySpawnPoints = enemyPoints
	MapBuilder.GenerateNavMesh(width, height, tileSize, container)
	MapBuilder.SpawnFloorAndRoof(container, scale)
end

MapBuilder.floorPositions = {}

function MapBuilder.QueueFloorAndRoof(pos)
	table.insert(MapBuilder.floorPositions, pos)
end

function MapBuilder.SpawnFloorAndRoof(container, scale)
	local params = {scale = scale}
	for _,pos in ipairs(MapBuilder.floorPositions) do
		params.position = pos
		-- Floor
		container:SpawnSharedAsset(TILES["Floor"].tile, params)
		-- Roof
		container:SpawnSharedAsset(TILES["Roof"].tile, params)
	end
end

return MapBuilder

