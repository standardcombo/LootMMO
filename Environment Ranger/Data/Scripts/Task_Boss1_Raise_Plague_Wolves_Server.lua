local API_NPC = require(script:GetCustomProperty("API_NPC"))

local SUMMON_TEMPLATE = script:GetCustomProperty("SummonTemplate")
local SPAWNS_GROUP = script:GetCustomProperty("SpawnsGroup"):WaitForObject()

local RANGE = 0.0
local COOLDOWN = 35.0

function GetPriority(npc, taskHistory)
	if API_NPC.GetHealthFraction(npc) > 0.4 then
		return 0.0
	else
		return 800.0
	end
end

function OnTaskStart(npc, threatTable)
	return 3.0
end

function OnTaskEnd(npc, interrupted)
	if not interrupted  then
		local spawns = SPAWNS_GROUP:GetChildren()

		-- Scramble order
		for i = 1, #spawns - 1 do
			local j = math.random(i, #spawns)
			local temp = spawns[j]
			spawns[j] = spawns[i]
			spawns[i] = temp
		end

		-- Spawn two random wolves
		API_NPC.SpawnNPC(SUMMON_TEMPLATE, npc, spawns[1]:GetWorldPosition(), spawns[1]:GetWorldRotation())
		API_NPC.SpawnNPC(SUMMON_TEMPLATE, npc, spawns[2]:GetWorldPosition(), spawns[2]:GetWorldRotation())
	end
end

API_NPC.RegisterTaskServer("boss1_raise_plague_wolves", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
