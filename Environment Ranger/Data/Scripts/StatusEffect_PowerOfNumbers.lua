local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local data = {}

data.name = "Power of Numbers"
data.duration = 20.0
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")

API_SE.DefineStatusEffect(data)
