local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_D = require(script:GetCustomProperty("APIDamage"))

local BASE_HEAL_RATE = 4.0
local HEAL_RATE_MULTIPLIER = 0.4

function EffectTick(sourceCharacter, character, index)
	local magicStat = 0.0

	if sourceCharacter then
		magicStat = sourceCharacter.serverUserData.statSheet:GetStatTotalValue("Magic")
	end

	API_D.ApplyHealing(sourceCharacter, character, BASE_HEAL_RATE + HEAL_RATE_MULTIPLIER * magicStat, API_D.TAG_PERIODIC)
end

local data = {}

data.name = "Mending Light"
data.duration = 10.0
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")
data.tickFunction = EffectTick

API_SE.DefineStatusEffect(data)
