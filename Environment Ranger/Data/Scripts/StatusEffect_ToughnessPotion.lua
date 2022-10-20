local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local data = {}

data.name = "Toughness Potion"
data.duration = 10.0
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")
data.damageTakenMultiplier = 0.7

API_SE.DefineStatusEffect(data)
