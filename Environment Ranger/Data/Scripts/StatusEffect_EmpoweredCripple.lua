local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_D = require(script:GetCustomProperty("APIDamage"))

local BASE_DAMAGE_RATE = 3.0
local DAMAGE_RATE_MULTIPLIER = 0.6

function EffectTick(sourceCharacter, character, index)
	local attackStat = 0.0

	if sourceCharacter then
		attackStat = sourceCharacter.serverUserData.statSheet:GetStatTotalValue("Attack")
	end

	API_D.ApplyDamage(sourceCharacter, character, BASE_DAMAGE_RATE + DAMAGE_RATE_MULTIPLIER * attackStat, API_D.TAG_PERIODIC)
end

local data = {}

data.name = "Empowered Cripple"
data.duration = 5.0
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")
data.moveSpeedMultiplier = 0.6
data.damageDealtMultiplier = 0.8
data.tickFunction = EffectTick

API_SE.DefineStatusEffect(data)
