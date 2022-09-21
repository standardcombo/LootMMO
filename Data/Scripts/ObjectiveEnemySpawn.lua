
local QUEST_ID = script:GetCustomProperty("QuestID")
local OBJECTIVE_INDEX = script:GetCustomProperty("ObjectiveIndex")

local ADDITIONAL_RADIUS = script:GetCustomProperty("AdditionalRadius")
local TRIGGER_TEMPLATE = script:GetCustomProperty("TriggerTemplate")
local DESPAWN_DELAY = script:GetCustomProperty("DespawnDelay")

-- Search for these objects
local QUEST_AREAS = script.parent:FindDescendantsByName("Quest Area")
local ENEMY_SPAWNS = script.parent:FindDescendantsByName("Enemy Spawn")

-- TODO: Temporary
local RPGRAPTOR = script:GetCustomProperty("RPGRaptor")

local countersPerPlayer = {}
local playerCount = 0
local isSpawned = false
local despawnTask = nil
local enemies = {}


function SpawnEnemies()
	isSpawned = true
	
	for _,point in ipairs(ENEMY_SPAWNS) do
		local pos = point:GetWorldPosition()
		local rot = point:GetWorldRotation()
		local npcTemplate = RPGRAPTOR--TODO
		local npc = World.SpawnAsset(npcTemplate, {position = pos, rotation = rot})
		table.insert(enemies, npc)
	end
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
	
	if not countersPerPlayer[player] then
		countersPerPlayer[player] = 1
	else
		countersPerPlayer[player] = countersPerPlayer[player] + 1
	end
	
	if countersPerPlayer[player] == 1 then
		playerCount = playerCount + 1
		
		if not isSpawned then
			SpawnEnemies()
		else
			CancelDespawn()
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


-- Spawn a trigger for each quest area
local params = {
	networkContext = NetworkContextType.SERVER_CONTEXT,
	parent = script.parent
}
for _,area in ipairs(QUEST_AREAS) do
	params.position = area:GetWorldPosition()
	params.scale = area:GetScale() + Vector3.ONE * ADDITIONAL_RADIUS / 100
	local trigger = World.SpawnAsset(TRIGGER_TEMPLATE, params)
	trigger.beginOverlapEvent:Connect(OnBeginOverlap)
	trigger.endOverlapEvent:Connect(OnEndOverlap)
end


Events.Connect("Quest_Changed", function(player)
	print("ObjectiveEnemySpawn")
	if not isSpawned then
		local obj = _G.QuestController.GetQuestObjective(QUEST_ID, OBJECTIVE_INDEX)
		if _G.QuestController.IsActive(player, obj) then

		end
	end
end)

