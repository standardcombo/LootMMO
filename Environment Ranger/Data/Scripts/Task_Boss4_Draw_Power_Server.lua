local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))
local API_ID = require(script:GetCustomProperty("API_ID"))

local PILLARS_GROUP = script:GetCustomProperty("PillarsGroup"):WaitForObject()

local RANGE = 0.0
local COOLDOWN = 0.0		-- This is driven by the run to center cooldown
local STATUS_EFFECTS = {
	"Power of Brawn",
	"Power of Corruption",
	"Power of Numbers",
	"Power of One"
}

local pillarIndex = nil		-- Used both to carry from OnTaskStart to OnTaskEnd as well as to remember for the next time

function GetPriority(npc, taskHistory)
	if taskHistory[1] == "boss4_run_to_center" then
		return 1000.0
	else
		return 0.0
	end
end

function OnTaskStart(npc, threatTable)
	local pillars = PILLARS_GROUP:GetChildren()
	local lastPillarIndex = pillarIndex

	while pillarIndex == lastPillarIndex do
		pillarIndex = math.random(#pillars)
	end
	
	local pillar = pillars[pillarIndex]
	API_RE.BroadcastToAllPlayers("DP", API_ID.GetIdFromObject(npc), pillarIndex)
	API_NPC.LookAtTargetWithoutPitch(npc, pillar:GetWorldPosition())

	return 1.5
end

function OnTaskEnd(npc, interrupted)
	if not interrupted then
		local statusEffectId = API_SE.STATUS_EFFECT_DEFINITIONS[STATUS_EFFECTS[pillarIndex]].id
		API_SE.ApplyStatusEffect(npc, npc, statusEffectId)
	end
end

API_NPC.RegisterTaskServer("boss4_draw_power", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
