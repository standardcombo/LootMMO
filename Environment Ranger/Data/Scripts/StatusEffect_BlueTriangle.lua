local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local data = {}

data.name = "Blue Triangle"
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")

API_SE.DefineStatusEffect(data)
