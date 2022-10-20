
local STARTING_STATE = script:GetCustomProperty("StartingState")

Game.playerJoinedEvent:Connect(function(player)
	-- TODO: Check player characters and go to character selection instead,
	--if they have a character level 2 or higher
	--_G.AppState.SetStateForPlayer(player, _G.AppState.CharacterSelection)
	--else
	
	-- Give scripts an opportunity to connect to events
	Task.Wait()
	Task.Wait()
	
	_G.AppState.SetStateForPlayer(player, STARTING_STATE)
	--end
end)


