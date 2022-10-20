local API_A = require(script:GetCustomProperty("APIAbility"))
local API_PP = require(script:GetCustomProperty("APIPlayerPassives"))

function OnPlayerJoined(player)
	while not player.serverUserData.inventory do
		Task.Wait()
	end

	local inventory = player.serverUserData.inventory

	inventory.itemEquippedEvent:Connect(function(equipIndex, previousItem, equipItem)
		if inventory:IsTrinketSlot(equipIndex) then
			if previousItem then
			    for _, abilityName in pairs(previousItem:GetAbilityNames()) do
			        API_A.RemovePlayerAbility(player, abilityName)
			    end

			    for _, passive in pairs(previousItem:GetPassives()) do
			        API_PP.RemovePlayerPassive(player, passive)
			    end
			end

			if equipItem then
			    for _, abilityName in pairs(equipItem:GetAbilityNames()) do
			        API_A.GivePlayerAbility(player, abilityName)
			    end

			    for _, passive in pairs(equipItem:GetPassives()) do
			        API_PP.GivePlayerPassive(player, passive)
			    end
			end
		end
	end)

	for _, item in pairs(inventory:GetTrinkets()) do
	    for _, abilityName in pairs(item:GetAbilityNames()) do
	        API_A.GivePlayerAbility(player, abilityName)
	    end

	    for _, passive in pairs(item:GetPassives()) do
	        API_PP.GivePlayerPassive(player, passive)
	    end
	end
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)

