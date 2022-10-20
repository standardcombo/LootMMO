local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local RANGE = 1100.0
local COOLDOWN = 0.0

local targets = {}

function GetPriority(npc, taskHistory)
	return 3.0
end

function OnTaskStart(npc, threatTable)
	targets[npc] = API_NPC.GetRandomCharacterInThreatTable(threatTable)

	return 2.0
end

function OnTaskEnd(npc, interrupted)
	if not interrupted then
		if Object.IsValid(targets[npc]) and not targets[npc].isDead then
			API_SE.ApplyStatusEffect(npc, targets[npc], API_SE.STATUS_EFFECT_DEFINITIONS["Cursed"].id)
		end
	end

	targets[npc] = nil
end

API_NPC.RegisterTaskServer("swampmystic_curse", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
