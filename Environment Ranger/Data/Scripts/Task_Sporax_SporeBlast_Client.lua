local API_NPC = require(script:GetCustomProperty("API_NPC"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local TELEGRAPH_TEMPLATE = script:GetCustomProperty("TelegraphTemplate")

local telegraphs = {}

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("unarmed_shout")
	animatedMesh.playbackRateMultiplier = 0.2
	telegraphs[npc] = World.SpawnAsset(TELEGRAPH_TEMPLATE, {parent = npc})
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
	animatedMesh.playbackRateMultiplier = 1.0
	telegraphs[npc]:Destroy()
	telegraphs[npc] = nil
end

API_NPC.RegisterTaskClient("sporax_sporeblast", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
