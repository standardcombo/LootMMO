--[[
	Support Abilities
	v1.1 - 2022/10/26
	by: standardcombo, Luapi
	
	Takes any number of abilities and spawns a copy of each, per player,
	as they join the game.
	
	Abilities are added to this script as custom properties. The name
	of the property doesn't affect this process.

	The abilities are assigned to each player's serverUserData table,
	allowing global access. The key in the table is the custom property name.
--]]

local API = {}
_G.SupportAbilities = API


local TEMPLATES = script:GetCustomProperties()


local spawnParams = {networkContext = NetworkContextType.NETWORKED}

Game.playerJoinedEvent:Connect(function(player)
	for abilityName,template in pairs(TEMPLATES) do
		local ability = World.SpawnAsset(template, spawnParams)
		ability.owner = player
		ability:AttachToPlayer(player, "root")
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

