
Game.playerJoinedEvent:Connect(function(player)
	-- TODO: Check player characters and go to character selection instead,
	--if they have a character level 2 or higher
	--_G.AppState.SetStateForPlayer(player, _G.AppState.CharacterSelection)
	--else
	_G.AppState.SetStateForPlayer(player, _G.AppState.BagSelection)
	--end
end)


