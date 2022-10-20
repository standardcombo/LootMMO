local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_D = require(script:GetCustomProperty("APIDamage"))

local data = {}

data.name = "Commanding Presence"
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
	local result = amount

	if targetCharacter:IsA("Player") then
		for player, _ in pairs(players) do
			if Object.IsValid(player) then
				local tenacityStat = player.serverUserData.statSheet:GetStatTotalValue("Tenacity")
				local multiplier = math.max(0.6, 0.9 - tenacityStat * 0.001)
				result = result * multiplier
			end
		end
	end

	return result
end

API_D.RegisterPreDamageHook(PreDamageHook)

return data
