local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_P = require(script:GetCustomProperty("APIProjectile"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local RANGE = 3000.0
local COOLDOWN = 2.0
local DAMAGE = 12.0
local PROJECTILE_SPEED = 2000.0

function GetPriority(npc, taskHistory)
	for _, data in pairs(API_SE.GetStatusEffectsOnCharacter(npc)) do
		if data.name == "Power of Corruption" then
			return 15.0
		end
	end

	return 0.0
end

function OnTaskStart(npc, threatTable)
	return 1.5
end

function OnTaskEnd(npc, interrupted)
	if not interrupted then
		for _, player in pairs(Game.FindPlayersInSphere(npc:GetWorldPosition(), RANGE, {ignoreDead = true})) do
			Task.Spawn(function()
				Task.Wait(API_P.GetTravelTime(npc, player, PROJECTILE_SPEED))

				if Object.IsValid(player) then
					API_D.ApplyDamage(npc, player, DAMAGE)
				end
			end)
		end
	end
end

API_NPC.RegisterTaskServer("boss4_volley_of_corruption", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
