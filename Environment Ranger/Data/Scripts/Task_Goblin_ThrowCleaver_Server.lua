local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_P = require(script:GetCustomProperty("APIProjectile"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local RANGE = 0.0
local COOLDOWN = 7.0
local DAMAGE = 55.0
local PROJECTILE_SPEED = 900.0

local currentTasks = {}

function GetPriority(npc, taskHistory)
	return 1.0
end

function OnTaskStart(npc, threatTable)
	local target = API_NPC.GetRandomCharacterInThreatTable(threatTable)
	API_NPC.LookAtTargetWithoutPitch(npc, target:GetWorldPosition())

	currentTasks[npc] = Task.Spawn(function()
		-- Nested checks here to avoid conflicting with the cancel condition below
		if Object.IsValid(target) then
			Task.Wait(API_P.GetTravelTime(npc, target, PROJECTILE_SPEED))

			if Object.IsValid(target) then
				API_D.ApplyDamage(npc, target, DAMAGE)
				API_SE.ApplyStatusEffect(npc, target, API_SE.STATUS_EFFECT_DEFINITIONS["Cleavered"].id)
			end
		end
	end)

	return 1.3
end

function OnTaskEnd(npc, interrupted)
	if interrupted and currentTasks[npc] then
		currentTasks[npc]:Cancel()
	end

	currentTasks[npc] = nil
end

API_NPC.RegisterTaskServer("goblin_throw_cleaver", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
