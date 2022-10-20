local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

function EffectStart(sourceCharacter, character, index)
	character:ScaleTo(Vector3.New(1.5), 1.0)
end

function EffectEnd(sourceCharacter, character, index)
	character:ScaleTo(Vector3.New(1.0), 1.0)
end

local data = {}

data.name = "Power of Brawn"
data.duration = 20.0
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")
data.moveSpeedMultiplier = 0.4
data.damageDealtMultiplier = 2.0
data.startFunction = EffectStart
data.endFunction = EffectEnd

API_SE.DefineStatusEffect(data)
