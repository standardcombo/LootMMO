local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local TARGET_TEMPLATE = script:GetCustomProperty("TargetTemplate")

local currentTasks = {}

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("2hand_staff_magic_up")
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
end

function OnBlizzard(target)
	World.SpawnAsset(TARGET_TEMPLATE, {position = target})
end

API_RE.Connect("WB", OnBlizzard)

API_NPC.RegisterTaskClient("wizard_blizzard", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
