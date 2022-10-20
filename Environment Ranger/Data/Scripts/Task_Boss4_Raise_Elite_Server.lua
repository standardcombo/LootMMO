local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local SUMMON_TEMPLATE = script:GetCustomProperty("SummonTemplate")

local RANGE = 0.0
local COOLDOWN = 25.0

function GetPriority(npc, taskHistory)
	for _, data in pairs(API_SE.GetStatusEffectsOnCharacter(npc)) do
		if data.name == "Power of One" then
			return 3.0
		end
	end

	return 0.0
end

function OnTaskStart(npc, threatTable)
	return 1.5
end

function OnTaskEnd(npc, interrupted)
	if not interrupted then
		API_NPC.SpawnNPC(SUMMON_TEMPLATE, npc, npc:GetWorldPosition(), npc:GetWorldRotation())
	end
end

API_NPC.RegisterTaskServer("boss4_raise_elite", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
