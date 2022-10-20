local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local RANGE = 120.0
local COOLDOWN = 5.0

local currentTasks = {}

function GetPriority(npc, taskHistory)
	return 0.5
end

function OnTaskStart(npc, threatTable)
	local target = API_NPC.GetTarget(npc)
	API_NPC.LookAtTargetWithoutPitch(npc, target:GetWorldPosition())

	currentTasks[npc] = Task.Spawn(function()
		Task.Wait(0.5)
		
		if Object.IsValid(target) then
			API_SE.ApplyStatusEffect(npc, target, API_SE.STATUS_EFFECT_DEFINITIONS["Cut"].id)
		end
	end)

	return 1.5
end

function OnTaskEnd(npc, interrupted)
	if not interrupted then
		currentTasks[npc]:Cancel()
	end

	currentTasks[npc] = nil
end

API_NPC.RegisterTaskServer("small_melee_elemental_cut", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
