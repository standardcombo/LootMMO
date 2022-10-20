local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local RANGE = 120.0
local COOLDOWN = 12.0

local statusEffectIndices = {}

function GetPriority(npc, taskHistory)
	return 1.0
end

function OnTaskStart(npc, threatTable)
	local target = API_NPC.GetTarget(npc)
	API_NPC.LookAtTargetWithoutPitch(npc, target:GetWorldPosition())
	statusEffectIndices[npc] = API_SE.ApplyStatusEffect(npc, npc, API_SE.STATUS_EFFECT_DEFINITIONS["Block"].id)

	return 4.0
end

function OnTaskEnd(npc, interrupted)
	API_SE.RemoveStatusEffect(npc, statusEffectIndices[npc])
	statusEffectIndices[npc] = nil
end

API_NPC.RegisterTaskServer("soldier_block", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
