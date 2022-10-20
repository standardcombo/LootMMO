local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_P = require(script:GetCustomProperty("APIProjectile"))

local PROJECTILE_TEMPLATE = script:GetCustomProperty("ProjectileTemplate")
local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")

local PROJECTILE_SPEED = 2000.0
local RANGE = 3000.

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("2hand_staff_magic_bolt")
	animatedMesh.playbackRateMultiplier = 0.3
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
	animatedMesh.playbackRateMultiplier = 1.0

	for _, player in pairs(Game.FindPlayersInSphere(npc:GetWorldPosition(), RANGE, {ignoreDead = true})) do
		API_P.CreateProjectile(npc, player, PROJECTILE_SPEED, 0.1, PROJECTILE_TEMPLATE)
	end
end

API_NPC.RegisterTaskClient("boss4_volley_of_corruption", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
