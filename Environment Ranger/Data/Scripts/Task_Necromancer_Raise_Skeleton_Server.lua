local API_NPC = require(script:GetCustomProperty("API_NPC"))

local SUMMON_TEMPLATE1 = script:GetCustomProperty("SummonTemplate1")
local SUMMON_TEMPLATE2 = script:GetCustomProperty("SummonTemplate2")

local RANGE = 0.0
local COOLDOWN = 20.0

function GetPriority(npc, taskHistory)
	return 4.0
end

function OnTaskStart(npc, threatTable)
	return 2.5
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

API_NPC.RegisterTaskServer("necromancer_raise_skeleton", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
