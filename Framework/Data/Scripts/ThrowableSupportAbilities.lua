--[[
	Throwable Support Abilities
	v1.1.1 - 2022/11/11
	by: standardcombo, Luapi
	
	Spawns throw and pickup abilities for each player, as they join.
	These are used by the throwable objects (e.g. Chair).
	
	The abilities are assigned to each player's serverUserData table,
	allowing global access:
		player.serverUserData.throwAbility
		player.serverUserData.pickupAbility
--]]

local API = {}
_G.ThrowableSupport = API

local THROW_ABILITY_TEMPLATE = script:GetCustomProperty("ThrowAbilityTemplate")
local PICKUP_ABILITY_TEMPLATE = script:GetCustomProperty("PickupAbilityTemplate")


function API.EnableThrow(player)
	player.serverUserData.throwAbility.isEnabled = true
	return player.serverUserData.throwAbility
end


function API.DisableThrow(player)
	player.serverUserData.throwAbility.isEnabled = false
	return player.serverUserData.throwAbility
end


Game.playerJoinedEvent:Connect(function(player)
	local throwAbility = World.SpawnAsset(THROW_ABILITY_TEMPLATE)
	throwAbility.owner = player
	throwAbility:AttachToPlayer(player, "root")
	player.serverUserData.throwAbility = throwAbility
	throwAbility.isEnabled = false
	
	local pickupAbility = World.SpawnAsset(PICKUP_ABILITY_TEMPLATE)
	pickupAbility.owner = player
	pickupAbility:AttachToPlayer(player, "root")
	player.serverUserData.pickupAbility = pickupAbility
end)

Game.playerLeftEvent:Connect(function(player)
	if Object.IsValid(player.serverUserData.throwAbility) then
		player.serverUserData.throwAbility:Destroy()
	end
	if Object.IsValid(player.serverUserData.pickupAbility) then
		player.serverUserData.pickupAbility:Destroy()
	end
end)

