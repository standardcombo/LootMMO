local API_NPC = require(script:GetCustomProperty("API_NPC"))

local SUMMON_TEMPLATE1 = script:GetCustomProperty("SummonTemplate1")
local SUMMON_TEMPLATE2 = script:GetCustomProperty("SummonTemplate2")

local RANGE = 0.0
local COOLDOWN = 30.0
local ARMY_SIZE = {2, 2, 2, 3, 3, 3}			-- Based on the number of players

local currentTasks = {}

function GetPriority(npc, taskHistory)
	return 0.3
end

function OnTaskStart(npc, threatTable)
	local targetCount = 0

	for _, _ in pairs(threatTable) do
		targetCount = targetCount + 1
	end

	currentTasks[npc] = Task.Spawn(function()
		for i = 1, ARMY_SIZE[targetCount] do
			Task.Wait(2.5 / ARMY_SIZE[targetCount])

			local rotation = Rotation.New(0.0, 0.0, math.random() * 360.0)
			local target = API_NPC.GetRandomCharacterInThreatTable(threatTable)

			if Object.IsValid(target) then
				local targetPosition = target:GetWorldPosition() - rotation * Vector3.FORWARD * 200.0
				hitResult = World.Raycast(targetPosition + Vector3.UP * 500.0, targetPosition - Vector3.UP * 500.0, {ignorePlayers = true})

				if hitResult then
					targetPosition = hitResult:GetImpactPosition()
				end

				if math.random(2) == 1 then
					API_NPC.SpawnNPC(SUMMON_TEMPLATE1, npc, targetPosition, rotation)
				else
					API_NPC.SpawnNPC(SUMMON_TEMPLATE2, npc, targetPosition, rotation)
				end
			end
		end
	end)

	return 2.5
end

function OnTaskEnd(npc, interrupted)
	if interrupted and currentTasks[npc] then
		currentTasks[npc]:Cancel()
	end

	currentTasks[npc] = nil
end

API_NPC.RegisterTaskServer("boss1_raise_army", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
