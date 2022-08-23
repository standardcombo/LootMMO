local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local STUN_ICON = script:GetCustomProperty("StunIcon")
local STUN_EFFECT_TEMPLATE = script:GetCustomProperty("StunEffectTemplate")

local data = {}

data.name = "Stun"
data.duration = 5.0
data.icon = STUN_ICON
data.color = Color.GREEN
data.effectTemplate = STUN_EFFECT_TEMPLATE
data.type = API_SE.STATUS_EFFECT_TYPE_STUN
data.tickFunction = nil

API_SE.DefineStatusEffect(data)
