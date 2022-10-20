local API_D = require(script:GetCustomProperty("APIDamage"))
local API_NPC = require(script:GetCustomProperty("API_NPC"))

local data = {}

data.name = "Spiked Armor"
data.description = script:GetCustomProperty("Description")
data.icon = script:GetCustomProperty("Icon")

local players = {}

function data.onGain(player)
	players[player] = true
end

function data.onLose(player)
	players[player] = nil
end

function PreDamageHook(sourceCharacter, targetCharacter, amount, tags)
	if players[targetCharacter] and sourceCharacter ~= targetCharacter and not API_D.HasTag(tags, API_D.TAG_MINOR) then
		if sourceCharacter and Object.IsValid(sourceCharacter) and not API_NPC.IsDead(sourceCharacter) then
			API_D.ApplyDamage(targetCharacter, sourceCharacter, amount * 0.2, API_D.TAG_MINOR)
		end
	end

	return amount
end

API_D.RegisterPreDamageHook(PreDamageHook)

return data
