local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))

local RANGE = 120.0
local COOLDOWN = 0.0
local DAMAGE = 8.0

local currentTasks = {}

function GetPriority(npc, taskHistory)
	return 1.0
end

function OnTaskStart(npc, threatTable)
	local target = API_NPC.GetTarget(npc)
	
	currentTasks[npc] = Task.Spawn(function()
		Task.Wait(0.4)
		
		if Object.IsValid(target) then
			API_D.ApplyDamage(npc, target, DAMAGE)
		end
	end)

	API_NPC.LookAtTargetWithoutPitch(npc, target:GetWorldPosition())

	return 1.5
end

function OnTaskEnd(npc)
	if interrupted and currentTasks[npc] then
		currentTasks[npc]:Cancel()
	end

	currentTasks[npc] = nil
end

API_NPC.RegisterTaskServer("reanimated_skeleton_slash", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
