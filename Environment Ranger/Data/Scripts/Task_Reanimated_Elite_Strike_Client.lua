local API_NPC = require(script:GetCustomProperty("API_NPC"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")

local animations =
{
	"1hand_melee_slash_left",
	"1hand_melee_slash_right",
	"1hand_melee_thrust"
}

function OnTaskStart(npc, animatedMesh)
	local animation = animations[math.random(#animations)]
	animatedMesh:PlayAnimation(animation)
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
end

API_NPC.RegisterTaskClient("reanimated_elite_strike", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
