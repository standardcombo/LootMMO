local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local RANGE = 700.0
local COOLDOWN = 13.0

function GetPriority(npc, taskHistory)
	return 3.0
end

function OnTaskStart(npc, threatTable)
	local target = API_NPC.GetRandomCharacterInThreatTable(threatTable)
	API_SE.ApplyStatusEffect(npc, target, API_SE.STATUS_EFFECT_DEFINITIONS["Frost Bomb"].id)
	API_NPC.LookAtTargetWithoutPitch(npc, target:GetWorldPosition())
	return 1.0
end

function OnTaskEnd(npc, interrupted)
end

API_NPC.RegisterTaskServer("wizard_frost_bomb", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
