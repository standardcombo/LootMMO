local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_P = require(script:GetCustomProperty("APIProjectile"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local PROJECTILE_TEMPLATE = script:GetCustomProperty("ProjectileTemplate")
local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")

local PROJECTILE_SPEED = 2000.0

function OnGoblinWizardFireball(npc, target)
	if target then
		API_P.CreateProjectile(npc, target, PROJECTILE_SPEED, 0.0, PROJECTILE_TEMPLATE)
	end
end

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("2hand_staff_magic_bolt")
	animatedMesh.playbackRateMultiplier = 0.3
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
	animatedMesh.playbackRateMultiplier = 1.0
end

API_RE.Connect("GWF", OnGoblinWizardFireball)

API_NPC.RegisterTaskClient("goblin_wizard_fireball", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
