local API_D = require(script:GetCustomProperty("APIDamage"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local data = {}

data.name = "Taste for Blood"
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
	if players[sourceCharacter] and sourceCharacter ~= targetCharacter and not API_D.HasTag(tags, API_D.TAG_MINOR) then
		local healingTags = API_D.TAG_MINOR | API_D.TAG_CANNOT_CRIT

		if API_D.HasTag(tags, API_D.TAG_CRIT) then
			healingTags = healingTags | API_D.TAG_CRIT
		end

		API_D.ApplyHealing(sourceCharacter, sourceCharacter, effectiveAmount * 0.04, healingTags)
	end
end

API_RE.Connect("DamageDone", OnDamageDone)

return data
