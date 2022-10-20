local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))

local RANGE = 120.0
local COOLDOWN = 0.0
local DAMAGE = 15.0

local currentTasks = {}

function GetPriority(npc, taskHistory)
	return 1.0
end

function OnTaskStart(npc, threatTable)
	local target = API_NPC.GetTarget(npc)
	API_NPC.LookAtTargetWithoutPitch(npc, target:GetWorldPosition())
	
	currentTasks[npc] = Task.Spawn(function()
		Task.Wait(0.4)

		if Object.IsValid(target) then
			API_D.ApplyDamage(npc, target, DAMAGE)
		end
	end)

	return 1.5
end

function OnTaskEnd(npc, interrupted)
	if interrupted and currentTasks[npc] then
		currentTasks[npc]:Cancel()
	end

	currentTasks[npc] = nil
end

API_NPC.RegisterTaskServer("boss4_punch", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
