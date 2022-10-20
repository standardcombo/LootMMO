local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local data = {}

data.name = "Anger"
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")
data.damageDealtMultiplier = 1.1

API_SE.DefineStatusEffect(data)
