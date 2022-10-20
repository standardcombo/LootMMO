local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_P = require(script:GetCustomProperty("APIProjectile"))

local PROJECTILE_TEMPLATE = script:GetCustomProperty("ProjectileTemplate")
local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")

local PROJECTILE_SPEED = 1700.0

function OnTaskStart(npc, animatedMesh)
	local target = API_NPC.GetTarget(npc)
	API_P.CreateProjectile(npc, target, PROJECTILE_SPEED, 0.3, PROJECTILE_TEMPLATE)
	animatedMesh:PlayAnimation("unarmed_throw")
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
end

API_NPC.RegisterTaskClient("goblin_throw_cleaver", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
