local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local SUMMON_TEMPLATE1 = script:GetCustomProperty("SummonTemplate1")
local SUMMON_TEMPLATE2 = script:GetCustomProperty("SummonTemplate2")

local RANGE = 0.0
local COOLDOWN = 2.5

function GetPriority(npc, taskHistory)
	for _, data in pairs(API_SE.GetStatusEffectsOnCharacter(npc)) do
		if data.name == "Power of Numbers" then
			return 2.0
		end
	end

	return 0.0
end

function OnTaskStart(npc, threatTable)
	return 0.5
end

function OnTaskEnd(npc, interrupted)
	if not interrupted then
		if math.random(2) == 1 then
			API_NPC.SpawnNPC(SUMMON_TEMPLATE1, npc, npc:GetWorldPosition(), npc:GetWorldRotation())
		else
			API_NPC.SpawnNPC(SUMMON_TEMPLATE2, npc, npc:GetWorldPosition(), npc:GetWorldRotation())
		end
	end
end

API_NPC.RegisterTaskServer("boss4_raise_skeleton", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
