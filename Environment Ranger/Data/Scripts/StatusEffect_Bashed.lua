local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local data = {}

data.name = "Bashed"
data.duration = 4.0
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")
data.damageTakenMultiplier = 1.3

API_SE.DefineStatusEffect(data)
