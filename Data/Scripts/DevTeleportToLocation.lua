
Game.playerJoinedEvent:Connect(function(player)
	player.bindingPressedEvent:Connect(function(player, action)
		if action == "ability_extra_0" then
			player:SetWorldPosition(script:GetWorldPosition())
			player:SetWorldRotation(script:GetWorldRotation())
		end
	end)
end)

