local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local data = {}

data.name = "Plagued Wound"
data.duration = 6.0
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")
data.moveSpeedMultiplier = 0.5
data.damageTakenMultiplier = 1.1

API_SE.DefineStatusEffect(data)
