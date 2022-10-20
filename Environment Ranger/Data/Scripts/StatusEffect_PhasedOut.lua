local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local chargesRemaining = {}		-- character -> int

function OnDamageDone(sourceCharacter, targetCharacter, effectiveAmount, overkill, tags)
	if chargesRemaining[targetCharacter] then
		chargesRemaining[targetCharacter] = chargesRemaining[targetCharacter] - 1

		if chargesRemaining[targetCharacter] == 0 then
			for i, data in pairs(API_SE.GetStatusEffectsOnCharacter(targetCharacter)) do
				if data.name == "Phased Out" then
					API_SE.RemoveStatusEffect(targetCharacter, i)
					return
				end
			end
		end
	end
end

function EffectStart(sourceCharacter, character, index)
	chargesRemaining[character] = 1
end

function EffectEnd(sourceCharacter, character, index)
	chargesRemaining[character] = nil
end

local data = {}

data.name = "Phased Out"
data.duration = 6.0
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")
data.damageTakenMultiplier = 0.0
data.startFunction = EffectStart
data.endFunction = EffectEnd

API_SE.DefineStatusEffect(data)

API_RE.Connect("DamageDone", OnDamageDone)
