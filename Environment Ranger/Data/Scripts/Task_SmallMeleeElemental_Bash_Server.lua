local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))

local RANGE = 120.0
local COOLDOWN = 8.0
local DAMAGE = 45.0

local currentTasks = {}

function GetPriority(npc, taskHistory)
	if API_DS.GetDifficultyLevel() > 2 then
		return 1.0
	else
		return 0.0
	end
end

function OnTaskStart(npc, threatTable)
	local target = API_NPC.GetTarget(npc)
	API_NPC.LookAtTargetWithoutPitch(npc, target:GetWorldPosition())

	currentTasks[npc] = Task.Spawn(function()
		Task.Wait(0.5)
		
		if Object.IsValid(target) then
			API_SE.ApplyStatusEffect(npc, target, API_SE.STATUS_EFFECT_DEFINITIONS["Bashed"].id)
			API_D.ApplyDamage(npc, target, DAMAGE)
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

API_NPC.RegisterTaskServer("small_melee_elemental_bash", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
