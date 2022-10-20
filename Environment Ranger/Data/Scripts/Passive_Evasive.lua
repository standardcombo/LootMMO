local API_D = require(script:GetCustomProperty("APIDamage"))

local data = {}

data.name = "Evasive"
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
	if players[targetCharacter] and sourceCharacter ~= targetCharacter then
		if math.random() < 0.1 then
			return 0.0
		end
	end

	return amount
end

API_D.RegisterPreDamageHook(PreDamageHook)

return data
