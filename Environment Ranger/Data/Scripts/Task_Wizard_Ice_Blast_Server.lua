local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_P = require(script:GetCustomProperty("APIProjectile"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local RANGE = 700.0
local COOLDOWN = 0.0
local DAMAGE = 15.0
local PROJECTILE_SPEED = 1200.0

local targets = {}

function GetPriority(npc, taskHistory)
	return 1.0
end

function OnTaskStart(npc, threatTable)
	targets[npc] = API_NPC.GetTarget(npc)
	API_NPC.LookAtTargetWithoutPitch(npc, targets[npc]:GetWorldPosition())

	return 2.0
end

function OnTaskEnd(npc, interrupted)
	if not interrupted then
		local target = targets[npc]
		
		Task.Spawn(function()
			if Object.IsValid(target) then
				Task.Wait(API_P.GetTravelTime(npc, target, PROJECTILE_SPEED))
				
				if Object.IsValid(target) then
					API_D.ApplyDamage(npc, target, DAMAGE)
					API_SE.ApplyStatusEffect(npc, target, API_SE.STATUS_EFFECT_DEFINITIONS["Cold"].id)
				end
			end
		end)
	end

	targets[npc] = nil
end

API_NPC.RegisterTaskServer("wizard_ice_blast", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
