local API_NPC = require(script:GetCustomProperty("API_NPC"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")

local animations =
{
	"1hand_melee_shield_bash",
	"1hand_melee_thrust"
}

function OnTaskStart(npc, animatedMesh)
	local animation = animations[math.random(#animations)]
	animatedMesh:PlayAnimation(animation)
	animatedMesh.playbackRateMultiplier = 0.7
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
	animatedMesh.playbackRateMultiplier = 1.0
end

API_NPC.RegisterTaskClient("market_security_melee", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
