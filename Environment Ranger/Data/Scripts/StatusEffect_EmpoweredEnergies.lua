local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local data = {}

data.name = "Empowered Energies"
data.duration = 10.0
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")
data.moveSpeedMultiplier = 1.2
data.damageDealtMultiplier = 2.0

API_SE.DefineStatusEffect(data)
