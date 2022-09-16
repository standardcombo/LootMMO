
local SPAWN_UTILS = require( script:GetCustomProperty("SpawnUtils") )


Events.ConnectForPlayer("Map.Focus", function(player, isFocused)
	if not Object.IsValid(player) then return end
	Events.Broadcast("Quest_Map", player, "Focus")
	
	for _,ability in ipairs(player:GetAbilities()) do
		if isFocused then
			ability.serverUserData.lastIsEnabled = ability.isEnabled
			ability.isEnabled = false
		
		elseif ability.serverUserData.lastIsEnabled ~= nil then
			ability.isEnabled = ability.serverUserData.lastIsEnabled
		end
	end
end)


Events.ConnectForPlayer("Map.Play", function(player, selectedIndex)
	if Object.IsValid(player) then
		Events.Broadcast("Quest_Map", player, "Play")
		
		local unlockedQuests = _G.QuestController.GetUnlockedQuests(player)
		local quest = unlockedQuests[selectedIndex]
		
		if _G.QuestController.IsLocalGame(quest) then
			-- Spawn at the right place
			SPAWN_UTILS.SpawnPlayerAt(player, quest.spawnKey)
		else
			--player:TransferToScene(sceneName)
		--else
			player:TransferToGame(quest.gameId)
		end
	end
end)

