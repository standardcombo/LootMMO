local API_NPC = require(script:GetCustomProperty("API_NPC"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("2hand_staff_magic_up", {shouldLoop = true})
	animatedMesh.playbackRateMultiplier = 0.5
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
	animatedMesh.playbackRateMultiplier = 1.0
end

API_NPC.RegisterTaskClient("boss1_raise_plague_wolves", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
