local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local data = {}

data.name = "Phasing"
data.description = script:GetCustomProperty("Description")
data.icon = script:GetCustomProperty("Icon")

local players = {}

function data.onGain(player)
	players[player] = true
end

function data.onLose(player)
	players[player] = nil
end

function OnDamageDone(sourceCharacter, targetCharacter, effectiveAmount, overkill, tags)
	if players[targetCharacter] and sourceCharacter ~= targetCharacter then
		if effectiveAmount > 0.0 and not API_D.HasTag(tags, API_D.TAG_MINOR) then
			if math.random() < 0.2 then
				API_SE.ApplyStatusEffect(targetCharacter, targetCharacter, API_SE.STATUS_EFFECT_DEFINITIONS["Phased Out"].id)
			end
		end
	end
end

API_RE.Connect("DamageDone", OnDamageDone)

return data
