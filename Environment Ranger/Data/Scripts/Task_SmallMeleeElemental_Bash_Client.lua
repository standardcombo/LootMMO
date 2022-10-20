local API_NPC = require(script:GetCustomProperty("API_NPC"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("1hand_melee_shield_bash")
	animatedMesh.playbackRateMultiplier = 0.7
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
	animatedMesh.playbackRateMultiplier = 1.0
end

API_NPC.RegisterTaskClient("small_melee_elemental_bash", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
