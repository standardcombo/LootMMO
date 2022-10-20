local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_P = require(script:GetCustomProperty("APIProjectile"))

local PROJECTILE_TEMPLATE = script:GetCustomProperty("ProjectileTemplate")
local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")

local PROJECTILE_SPEED = 2000.0

local targets = {}

function OnTaskStart(npc, animatedMesh)
	targets[npc] = API_NPC.GetTarget(npc)

	animatedMesh:PlayAnimation("2hand_staff_magic_bolt")
	animatedMesh.playbackRateMultiplier = 0.3
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
	animatedMesh.playbackRateMultiplier = 1.0

	if Object.IsValid(targets[npc]) and not interrupted then
		API_P.CreateProjectile(npc, targets[npc], PROJECTILE_SPEED, 0.0, PROJECTILE_TEMPLATE)
	end
	
	targets[npc] = nil
end

API_NPC.RegisterTaskClient("stoneangel_blast", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
