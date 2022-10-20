local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))

local RANGE = 1000.0
local COOLDOWN = 12.0
local TICK_DAMAGE = 11.0
local RADIUS = 1000.0

local currentTasks = {}

function GetPriority(npc, taskHistory)
	return 0.5
end

function OnTaskStart(npc, threatTable)
	currentTasks[npc] = Task.Spawn(function()
		for i = 1, 3 do
			Task.Wait(1.0)

			for player, _ in pairs(threatTable) do
				if Object.IsValid(player) and (player:GetWorldPosition() - npc:GetWorldPosition()).size < RADIUS then
					API_D.ApplyDamage(npc, player, TICK_DAMAGE, API_D.TAG_PERIODIC | API_D.TAG_AOE)
				end
			end
		end
	end)

	npc:RotateContinuous(Vector3.UP * 20.0)

	return 3.0
end

function OnTaskEnd(npc, interrupted)
	if interrupted and currentTasks[npc] then
		currentTasks[npc]:Cancel()
	end

	currentTasks[npc] = nil
	npc:StopRotate()
end

API_NPC.RegisterTaskServer("wizard_firestorm", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
