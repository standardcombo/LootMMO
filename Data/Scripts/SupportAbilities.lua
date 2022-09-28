
local API = {}
_G.SupportAbilities = API


local TEMPLATES = script:GetCustomProperties()


local spawnParams = {networkContext = NetworkContextType.NETWORKED}

Game.playerJoinedEvent:Connect(function(player)
	for abilityName,template in pairs(TEMPLATES) do
		local ability = World.SpawnAsset(template, spawnParams)
		ability.owner = player
		player.serverUserData[abilityName] = ability
	end
end)


Game.playerLeftEvent:Connect(function(player)
	for abilityName,template in pairs(TEMPLATES) do
		local ability = player.serverUserData[abilityName]
		if Object.IsValid(ability) then
			ability:Destroy()
		end
	end
end)

