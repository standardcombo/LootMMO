local API_NPC = require(script:GetCustomProperty("API_NPC"))

function Tick(deltaTime)
	for _, player in pairs(Game.GetPlayers()) do
		if API_NPC.IsPlayerInCombat(player) then
			player.canMount = false
			player:SetMounted(false)
		else
			player.canMount = true
		end
	end
end
