local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local RANGE = 0.0
local COOLDOWN = 0.0

local statusEffectIndices = {}

function GetPriority(npc, taskHistory)
	if taskHistory[1] == "reanimated_elite_smash" then
		return 1000.0
	else
		return 0.0
	end
end

function OnTaskStart(npc, threatTable)
	statusEffectIndices[npc] = API_SE.ApplyStatusEffect(npc, npc, API_SE.STATUS_EFFECT_DEFINITIONS["Marrow Typhoon"].id)
	npc:RotateContinuous(Vector3.UP * 25.0)

	return 5.0
end

function OnTaskEnd(npc, interrupted)
	API_SE.RemoveStatusEffect(npc, statusEffectIndices[npc])
	statusEffectIndices[npc] = nil
	npc:StopRotate()
end

API_NPC.RegisterTaskServer("reanimated_elite_marrow_typhoon", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
