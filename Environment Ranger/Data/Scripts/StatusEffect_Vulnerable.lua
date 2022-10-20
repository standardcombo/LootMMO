local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_D = require(script:GetCustomProperty("APIDamage"))

function PreDamageHook(sourceCharacter, targetCharacter, amount, tags)
	local result = amount

	for i, data in pairs(API_SE.GetStatusEffectsOnCharacter(targetCharacter)) do
		if data.name == "Vulnerable" and data.sourceCharacter == sourceCharacter then
			result = result * 1.6
		end
	end

	return result
end

local data = {}

data.name = "Vulnerable"
data.duration = 4.0
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")

API_SE.DefineStatusEffect(data)
API_D.RegisterPreDamageHook(PreDamageHook)
