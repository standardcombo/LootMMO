local API_NPC = require(script:GetCustomProperty("API_NPC"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")

local previousStances = {}

function OnTaskStart(npc, animatedMesh)
	previousStances[npc] = animatedMesh.animationStance
	animatedMesh.animationStance = "1hand_melee_shield_block"
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh.animationStance = previousStances[npc]
	previousStances[npc] = nil
end

API_NPC.RegisterTaskClient("soldier_block", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
