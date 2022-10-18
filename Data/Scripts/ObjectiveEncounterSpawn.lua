--[[
	Objective Enemy Spawn (server)
	v1.0
	by: standardcombo
	
	Defines an encounter in which enemies are randomly spawned
	whenever a player enters the area.
	
	Dependencies
	============
	- Loot Drop Factory v3.0
]]

-- EnemyInfo 
local ENEMY_DEFINITIONS = require(script:GetCustomProperty("enemyDefinitions"))
local ENEMY_IDS = script:GetCustomProperty("EnemyIDs")
local ENEMY_COUNT = script:GetCustomProperty("EnemyCount")
local CHANCE_RARE_ENEMY = script:GetCustomProperty("ChanceRareEnemy")
local CHANCE_EPIC_ENEMY = script:GetCustomProperty("ChanceEpicEnemy")
local CHANCE_LEGENDARY_ENEMY = script:GetCustomProperty("ChanceLegendaryEnemy")

if ENEMY_COUNT <= 0 then
	error("Enemy count should be positive at: ".. script.id)
end

local splitParams = {delimiters = {",", " "}, removeEmptyResults = true}
ENEMY_IDS = { CoreString.Split(ENEMY_IDS, splitParams) }

-- EncounterArea
local ADDITIONAL_RADIUS = script:GetCustomProperty("AdditionalRadius")
local TRIGGER_TEMPLATE = script:GetCustomProperty("TriggerTemplate")
local DESPAWN_DELAY = script:GetCustomProperty("DespawnDelay")
local MIN_PLAYER_LEVEL = script:GetCustomProperty("MinPlayerLevel")
local MAX_PLAYER_LEVEL = script:GetCustomProperty("MaxPlayerLevel")

-- Rewards 
local COMMON_LOOT_ID = script:GetCustomProperty("CommonLootId")
local RARE_LOOT_ID = script:GetCustomProperty("RareLootId")
local EPIC_LOOT_ID = script:GetCustomProperty("EpicLootId")
local LEGENDARY_LOOT_ID = script:GetCustomProperty("LegendaryLootId")

-- Search for these objects
local QUEST_AREAS = script.parent:FindDescendantsByName("Quest Area")
local ENEMY_SPAWNS = script.parent:FindDescendantsByName("Enemy Spawn")

if #QUEST_AREAS <= 0 then
	error("Insufficient quest area objects at: ".. script.id)
end

if ENEMY_COUNT > #ENEMY_SPAWNS then
	error("Insufficient quest spawn points at: ".. script.id)
end

local SPAWN_POSITIONS = {}
for _,p in ipairs(ENEMY_SPAWNS) do
	table.insert(SPAWN_POSITIONS, p:GetWorldPosition())
end

-- Supports up to 15 enemies in a single encounter, up to 4 clusters
local DISTRIBUTIONS = {
	{1},
	{1, 1},
	{1, 2},
	{1, 1, 2},
	{1, 2, 2},
	{1, 2, 3},
	{2, 2, 3},
	{1, 2, 2, 3},
	{1, 2, 2, 4},
	{1, 2, 3, 4},
	{2, 2, 3, 4},
	{2, 3, 3, 4},
	{2, 3, 4, 4},
	{2, 3, 4, 5},
	{2, 4, 4, 5},
}
local enemyDistribution = DISTRIBUTIONS[ENEMY_COUNT] or DISTRIBUTIONS[#DISTRIBUTIONS]

local questAreasCenter = nil
local countersPerPlayer = {}
local playerCount = 0
local isSpawned = false
local despawnTask = nil
local enemies = {}

local rng = RandomStream.New()


function SpawnEnemies(level, playerPos)
	isSpawned = true
	
	local spawnData = {
		level = level,
		remaining = ENEMY_COUNT,
		rareCount = 0,
		epicCount = 0,
		legendaryCount = 0,
		maxRares = 1,
		maxEpics = 1,
		maxLegendaries = 1,
	}
	if level < 5 then
		spawnData.maxEpics = 0
		spawnData.maxLegendaries = 0
		
	elseif level >= 50 then
		if ENEMY_COUNT >= 7 then
			spawnData.maxRares = 4
		elseif ENEMY_COUNT >= 5 then
			spawnData.maxRares = 3
		else
			spawnData.maxRares = 2
		end
		if ENEMY_COUNT >= 5 then
			spawnData.maxEpics = 2
		end
	elseif level >= 35 then
		if ENEMY_COUNT >= 7 then
			spawnData.maxRares = 3
			
		elseif ENEMY_COUNT >= 5 then
			spawnData.maxRares = 2
		end
	elseif level >= 20 and ENEMY_COUNT >= 6 then
		spawnData.maxRares = 2
	end
	
	spawnData.remaining = ENEMY_COUNT
	if spawnData.remaining > #SPAWN_POSITIONS then
		spawnData.remaining = #SPAWN_POSITIONS
		warn("Not enough spawn points for encounter "..script.parent.id)
	end
	
	-- Look towards the player
	local forward = playerPos - questAreasCenter
	forward.z = 0
	forward = forward:GetNormalized()
	spawnData.rotation = Rotation.New(forward, Vector3.UP)
	
	-- Find nearest and furthest points relative to the player who entered the encounter
	local nearestPoint = nil
	local furthestPoint = nil
	local nearestDist = nil
	local furthestDist = nil
	for _,pointPos in ipairs(SPAWN_POSITIONS) do
		local dist = (playerPos - pointPos).sizeSquared
		if nearestPoint == nil or dist < nearestDist then
			nearestPoint = pointPos
			nearestDist = dist
		end
		if furthestPoint == nil or dist > furthestDist then
			furthestPoint = pointPos
			furthestDist = dist
		end
	end
	
	-- Copy points, excluding nearest and furthest points
	local remainingPoints = {}
	for _,pointPos in ipairs(SPAWN_POSITIONS) do
		if pointPos ~= nearestPoint and pointPos ~= furthestPoint then
			table.insert(remainingPoints, pointPos)
		end
	end
	
	-- Find middle point
	local midPoint = nil
	if #remainingPoints > 0 then
		table.sort(remainingPoints, function(p1, p2)
			local d1 = (p1 - nearestPoint).sizeSquared + (p1 - furthestPoint).sizeSquared
			local d2 = (p2 - nearestPoint).sizeSquared + (p2 - furthestPoint).sizeSquared
			return d1 < d2
		end)
		local midIndex = math.floor(#remainingPoints / 2)
		if midIndex == 0 then midIndex = 1 end
		midPoint = remainingPoints[midIndex]
		table.remove(remainingPoints, midIndex)
	end
	
	-- Start points
	SpawnCluster(remainingPoints, spawnData, nearestPoint, enemyDistribution[1])
	
	if spawnData.remaining <= 0 then return end
	
	-- End points
	if #enemyDistribution == 2 and midPoint ~= nil then
		table.insert(remainingPoints, furthestPoint)
		furthestPoint = midPoint
		midPoint = nil
	end
	SpawnCluster(remainingPoints, spawnData, furthestPoint, enemyDistribution[#enemyDistribution])
	
	if spawnData.remaining <= 0 then return end
	
	-- Middle
	for e = 2, #enemyDistribution - 1 do
		if midPoint == nil then
			midPoint = remainingPoints[1]
			table.remove(remainingPoints, 1)
		end
		
		SpawnCluster(remainingPoints, spawnData, midPoint, enemyDistribution[e])
		
		if spawnData.remaining > 0 and #remainingPoints > 0 then
			local midIndex = CoreMath.Ceil(#remainingPoints / 2)
			midPoint = remainingPoints[midIndex]
			table.remove(remainingPoints, midIndex)
		else
			break
		end
	end
	
	-- Register the encounter with Loot Drop Factory
	local enemiesCopy = {}
	for _,e in ipairs(enemies) do
		table.insert(enemiesCopy, e)
	end
	local lootId = COMMON_LOOT_ID
	if spawnData.legendaryCount > 0 then
		lootId = LEGENDARY_LOOT_ID
	
	elseif spawnData.epicCount > 0 then
		lootId = EPIC_LOOT_ID
		
	elseif spawnData.rareCount > 0 then
		lootId = RARE_LOOT_ID
	end
	_G.LootDropFactory.RegisterEncounter(enemiesCopy, lootId)
end

function SpawnCluster(remainingPoints, spawnData, focusPoint, remainingInCluster)
	SpawnOne(focusPoint, spawnData)
	
	remainingInCluster = remainingInCluster - 1
	
	if remainingInCluster > 0 then
		table.sort(remainingPoints, function(p1, p2)
			local d1 = (p1 - focusPoint).sizeSquared
			local d2 = (p2 - focusPoint).sizeSquared
			return d1 < d2
		end)
		
		while remainingInCluster > 0 do
			remainingInCluster = remainingInCluster - 1
			
			local point = remainingPoints[1]
			table.remove(remainingPoints, 1)
			
			SpawnOne(point, spawnData)
		end
	end
end

function SpawnOne(pos, spawnData)
	-- Rotation
	local rot = spawnData.rotation
	rot.z = rot.z + rng:GetInteger(-45, 45)
	
	-- Template
	local randomIndex = rng:GetInteger(1, #ENEMY_IDS)
	local enemyId = ENEMY_IDS[randomIndex]
	local def = ENEMY_DEFINITIONS[enemyId]
	local template = def.commonTemplate
	if ENEMY_COUNT == 1 or spawnData.remaining < ENEMY_COUNT then
		if def.legendaryTemplate
		and spawnData.legendaryCount < spawnData.maxLegendaries
		and rng:GetNumber() < CHANCE_LEGENDARY_ENEMY then
			spawnData.legendaryCount = spawnData.legendaryCount + 1
			template = def.legendaryTemplate
			
		elseif def.epicTemplate
		and spawnData.epicCount < spawnData.maxEpics
		and rng:GetNumber() < CHANCE_EPIC_ENEMY then
			spawnData.epicCount = spawnData.epicCount + 1
			template = def.epicTemplate
			
		elseif def.rareTemplate
		and spawnData.rareCount < spawnData.maxRares
		and rng:GetNumber() < CHANCE_RARE_ENEMY then
			spawnData.rareCount = spawnData.rareCount + 1
			template = def.rareTemplate
		end
	end
	
	-- Spawn
	local npc = World.SpawnAsset(template, {position = pos, rotation = rot})
	
	if npc:IsCustomPropertyDynamic("Level") then
		npc:SetCustomProperty("Level", spawnData.level)
	end
	
	table.insert(enemies, npc)
	
	spawnData.remaining = spawnData.remaining - 1
end

function BeginDespawn()
	despawnTask = Task.Spawn(DoDespawn, DESPAWN_DELAY)
end

function CancelDespawn()
	if despawnTask then
		despawnTask:Cancel()
		despawnTask = nil
	end
end

function DoDespawn()
	isSpawned = false
	
	for _,e in ipairs(enemies) do
		if Object.IsValid(e) then
			e:Destroy()
		end
	end
	enemies = {}
end


function OnBeginOverlap(trigger, player)
	if not player:IsA("Player") then return end
	
	local playerLevel = GetPlayerLevel(player)
	
	if not countersPerPlayer[player] then
		countersPerPlayer[player] = 1
	else
		countersPerPlayer[player] = countersPerPlayer[player] + 1
	end
	
	if countersPerPlayer[player] == 1 then
		playerCount = playerCount + 1
		
		if playerLevel >= MIN_PLAYER_LEVEL 
		and playerLevel <= MAX_PLAYER_LEVEL 
		then
			if not isSpawned then
				local playerPos = player:GetWorldPosition()
				SpawnEnemies(playerLevel, playerPos)
			else
				CancelDespawn()
			end
		end
	end
end

function OnEndOverlap(trigger, player)
	if not player:IsA("Player") then return end
	
	if countersPerPlayer[player] then
		countersPerPlayer[player] = countersPerPlayer[player] - 1
		
		if countersPerPlayer[player] == 0 then
			playerCount = playerCount - 1
			
			if playerCount == 0 then
				BeginDespawn()
			end
		end
	end
end


function GetPlayerLevel(player)
	if _G["Character.EquipAPI"] then
		local char = _G["Character.EquipAPI"].GetCurrentCharacter(player)
		if char then
			return char:GetComponent("Level").level
		end
	end
	return player:GetResource("Level")
end


-- Spawn a trigger for each quest area
local params = {
	networkContext = NetworkContextType.SERVER_CONTEXT,
	parent = script.parent
}
for _,area in ipairs(QUEST_AREAS) do
	params.position = area:GetPosition()
	params.scale = area:GetScale() + Vector3.ONE * ADDITIONAL_RADIUS / 100
	local trigger = World.SpawnAsset(TRIGGER_TEMPLATE, params)
	trigger.beginOverlapEvent:Connect(OnBeginOverlap)
	trigger.endOverlapEvent:Connect(OnEndOverlap)
	
	if questAreasCenter == nil then
		questAreasCenter = params.position
	else
		questAreasCenter = questAreasCenter + params.position
	end
end
questAreasCenter = questAreasCenter / #QUEST_AREAS

