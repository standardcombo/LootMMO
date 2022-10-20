local API_NPC = require(script:GetCustomProperty("API_NPC"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")

local previousStances = {}

function OnTaskStart(npc, animatedMesh)
	previousStances[npc] = animatedMesh.animationStance
	animatedMesh.animationStance = "1hand_melee_run_forward"
	animatedMesh.animationStancePlaybackRate = 2.0
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh.animationStance = previousStances[npc]
	previousStances[npc] = nil
	animatedMesh.animationStancePlaybackRate = 1.0
end

API_NPC.RegisterTaskClient("swampwarrior_charge", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
