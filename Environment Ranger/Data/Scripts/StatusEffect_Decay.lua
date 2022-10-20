local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_D = require(script:GetCustomProperty("APIDamage"))

function EffectTick(sourceCharacter, character, index)
	API_D.ApplyDamage(sourceCharacter, character, 3.0, API_D.TAG_PERIODIC)
end

local data = {}

data.name = "Decay"
data.duration = 12.0
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")
data.tickFunction = EffectTick

API_SE.DefineStatusEffect(data)
