local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_D = require(script:GetCustomProperty("APIDamage"))

local BASE_HEAL_RATE = 15.0
local HEAL_RATE_MULTIPLIER = 2.0

function EffectTick(sourceCharacter, character, index)
	local tenacityStat = character.serverUserData.statSheet:GetStatTotalValue("Tenacity")
	API_D.ApplyHealing(sourceCharacter, character, BASE_HEAL_RATE + HEAL_RATE_MULTIPLIER * tenacityStat, API_D.TAG_PERIODIC)
end

local data = {}

data.name = "Restorative Potion"
data.duration = 5.0
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")
data.tickFunction = EffectTick

API_SE.DefineStatusEffect(data)
