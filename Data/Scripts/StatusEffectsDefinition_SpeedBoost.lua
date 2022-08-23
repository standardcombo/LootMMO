local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local EFFECT_ICON = script:GetCustomProperty("EffectIcon")
local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")

local data = {}

data.name = "Speed"
data.duration = 5.0
data.icon = EFFECT_ICON
data.color = Color.YELLOW
data.effectTemplate = EFFECT_TEMPLATE
data.type = API_SE.STATUS_EFFECT_TYPE_MOVE_SPEED
data.tickFunction = nil
data.multiplier = 1.5

API_SE.DefineStatusEffect(data)