local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local data = {}

data.name = "Righteous Hammer"
data.duration = 4.0
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")
data.doesStun = true

API_SE.DefineStatusEffect(data)
