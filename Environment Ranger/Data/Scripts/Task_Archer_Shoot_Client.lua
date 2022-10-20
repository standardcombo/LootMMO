local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_P = require(script:GetCustomProperty("APIProjectile"))

local PROJECTILE_TEMPLATE = script:GetCustomProperty("ProjectileTemplate")
local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")

local PROJECTILE_SPEED = 3000.0

function OnTaskStart(npc, animatedMesh)
	local target = API_NPC.GetTarget(npc)
	API_P.CreateProjectile(npc, target, PROJECTILE_SPEED, 1.0, PROJECTILE_TEMPLATE)
	animatedMesh:PlayAnimation("2hand_rifle_shoot")
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
end

API_NPC.RegisterTaskClient("archer_shoot", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
