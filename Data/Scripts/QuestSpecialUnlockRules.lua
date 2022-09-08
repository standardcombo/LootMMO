


function Unlock(player, questId)
	_G.QuestController.UnlockForPlayer(player, questId)
end


function OnAppStateEnter(player, newState, prevState)
	if newState == _G.AppState.SocialHub then
		--print("QuestSpecialUnlockRules::OnAppStateEnter()", player.name, newState, prevState)
		
		if not _G.QuestController.HasCompleted(player, "Welcome") then
			Unlock(player, "Welcome")
		end
	end
end
Events.Connect("AppState.Enter", OnAppStateEnter)


-- Development debug
--[[
Game.playerJoinedEvent:Connect(function(player)
	player.bindingPressedEvent:Connect(function(player, action)
		if action == "ability_extra_0" then
			Unlock(player, "Map")
		end
	end)
end)
--]]

