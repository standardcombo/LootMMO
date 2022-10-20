local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local data = {}

data.name = "Block"
data.duration = 4.0
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")
data.damageTakenMultiplier = 0.25

API_SE.DefineStatusEffect(data)
