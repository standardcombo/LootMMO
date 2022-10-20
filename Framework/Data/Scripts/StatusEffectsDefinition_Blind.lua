local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local ICON = script:GetCustomProperty("EffectIcon")
local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")

local data = {}

data.name = "Blind"
data.duration = 5.0
data.icon = ICON
data.color = Color.BLACK
data.effectTemplate = EFFECT_TEMPLATE
data.type = API_SE.STATUS_EFFECT_TYPE_BLIND
data.tickFunction = nil
data.multiplier = 1.5

API_SE.DefineStatusEffect(data)