local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local data = {}

data.name = "Cripple"
data.duration = 5.0
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")
data.moveSpeedMultiplier = 0.6
data.damageDealtMultiplier = 0.8

API_SE.DefineStatusEffect(data)
