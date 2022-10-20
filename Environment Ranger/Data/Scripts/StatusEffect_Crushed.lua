local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local data = {}

data.name = "Crushed"
data.duration = 8.0
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")
data.damageTakenMultiplier = 2.0

API_SE.DefineStatusEffect(data)
