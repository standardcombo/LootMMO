local API_NPC = require(script:GetCustomProperty("API_NPC"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")

local animations =
{
	"1hand_melee_slash_left",
	"1hand_melee_slash_right",
	"1hand_melee_slash_vertical"
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

API_NPC.RegisterTaskClient("goblin_melee", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
