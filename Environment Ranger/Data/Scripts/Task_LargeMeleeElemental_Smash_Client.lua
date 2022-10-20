local API_NPC = require(script:GetCustomProperty("API_NPC"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local TELEGRAPH_TEMPLATE = script:GetCustomProperty("TelegraphTemplate")

local telegraphs = {}

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("1hand_melee_slash_vertical")
	animatedMesh.playbackRateMultiplier = 0.2
	telegraphs[npc] = World.SpawnAsset(TELEGRAPH_TEMPLATE, {parent = npc})
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
	animatedMesh.playbackRateMultiplier = 1.0
	telegraphs[npc]:Destroy()
	telegraphs[npc] = nil
end

API_NPC.RegisterTaskClient("large_melee_elemental_smash", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
