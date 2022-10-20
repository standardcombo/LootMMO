local API_NPC = require(script:GetCustomProperty("API_NPC"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("1hand_melee_slash_vertical")
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
end

API_NPC.RegisterTaskClient("reanimated_elite_smash", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
