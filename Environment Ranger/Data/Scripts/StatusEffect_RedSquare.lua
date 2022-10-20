local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local data = {}

data.name = "Red Square"
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")

API_SE.DefineStatusEffect(data)
