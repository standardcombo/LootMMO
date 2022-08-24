


function Unlock(player, questId)
	_G.QuestController.UnlockForPlayer(player, questId)
end


-- Development debug
----[[
Game.playerJoinedEvent:Connect(function(player)
	player.bindingPressedEvent:Connect(function(player, action)
		if action == "ability_extra_0" then
			Unlock(player, "Map")
		end
	end)
end)
--]]