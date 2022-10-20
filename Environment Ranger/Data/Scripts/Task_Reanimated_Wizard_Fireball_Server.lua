local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_P = require(script:GetCustomProperty("APIProjectile"))

local RANGE = 600.0
local COOLDOWN = 0.0
local DAMAGE = 10.0
local PROJECTILE_SPEED = 1700.0

local targets = {}

function GetPriority(npc, taskHistory)
	return 1.0
end

function OnTaskStart(npc, threatTable)
	targets[npc] = API_NPC.GetTarget(npc)
	API_NPC.LookAtTargetWithoutPitch(npc, targets[npc]:GetWorldPosition())

	return 1.5
end

function OnTaskEnd(npc, interrupted)
	if not interrupted then
		local target = targets[npc]

		Task.Spawn(function()
			if Object.IsValid(target) then
				Task.Wait(API_P.GetTravelTime(npc, target, PROJECTILE_SPEED))

				if Object.IsValid(target) then
					API_D.ApplyDamage(npc, target, DAMAGE)
				end
			end
		end)
	end
	
	targets[npc] = nil
end

API_NPC.RegisterTaskServer("reanimated_wizard_fireball", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
