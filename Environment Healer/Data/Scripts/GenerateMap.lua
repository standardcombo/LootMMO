
local MapBuilder = require(script:GetCustomProperty("MapBuilder"))
local MAPS = require(script:GetCustomProperty("CryptsAndCaverns"))
local CRYPTS_PARSER = require(script:GetCustomProperty("CryptsCavernsParser"))
local SELECTED_INDEX = script:GetCustomProperty("SelectedMapIndex")

local container = script.parent

local mapModel = CRYPTS_PARSER:new(MAPS[SELECTED_INDEX].metadata)
local mapData = mapModel.map

local spawnObjectives = MAPS[SELECTED_INDEX].spawnObjectives

if Environment.IsServer() then
	local locationName = mapModel:get_attributes()[1].value
	script.parent:SetCustomProperty("LocationName", locationName)
end

-- Convert for map builder format
local emptyId = "-"
local wallId = nil
local minX = 99999
local maxX = -1
local minY = 99999
local maxY = -1
for row = 1, #mapData do
	for col = 1, #mapData[row] do
		local entry = mapData[row][col]
		if entry ~= "-" then
		    if not wallId then
				wallId = entry
			end
			
			if maxY < row then
				maxY = row
			end
			if minY > row then
				minY = row
			end
			if maxX < col then
				maxX = col
			end
			if minX > col then
				minX = col
			end
		end
	end
end

local width = maxX - minX + 1
local height = maxY - minY + 1

local convertedData = {}
local hasSpawnPoint = false

for row = minY, maxY do
	table.insert(convertedData, {})
	
	local y = row - minY + 1
	
	for col = minX, maxX do
		local x = col - minX + 1
		local entry = mapData[row][col]
		
		if entry == wallId then
			convertedData[y][x] = "1" -- Wall
			
		elseif entry == "-" then
			convertedData[y][x] = "0" -- Empty
			
		elseif spawnObjectives then
			if hasSpawnPoint then
				convertedData[y][x] = "E" -- Encounter
				
			else
				hasSpawnPoint = true
				convertedData[y][x] = "S" -- Start Point
			end
		else
			convertedData[y][x] = "0" -- Empty
		end
	end
end

Task.Wait()

-- Build the dungeon
MapBuilder.Spawn(convertedData, {
	parent = container, 
	width = width, 
	height = height, 
	tileSize = 800, 
	scale = 1
})


-- Wait for NavMesh to generate
Events.Connect("NavMeshProgress", function(v, isGrid)
	if isGrid then
		container:SetCustomProperty("grid", v)
	else
		container:SetCustomProperty("grid", 1)
		container:SetCustomProperty("mesh", v)
	end
end)

Events.Connect("NavMeshGenerated", function()
	container:SetCustomProperty("mesh", 1)
	
	-- Spawn Enemies
	MapBuilder.SpawnEnemies()
	
	-- Spawn Players
	Task.Wait()
	Events.Broadcast("SpawnPlayers")
end)


-- TODO: Add enemy drops (Loot Spawner CC?)
-- TODO: Random loot near walls
-- TODO: Pillars (single tiles on their own)
