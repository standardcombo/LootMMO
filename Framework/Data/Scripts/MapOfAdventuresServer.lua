
local SPAWN_UTILS = require( script:GetCustomProperty("SpawnUtils") )


Events.ConnectForPlayer("Map.Focus", function(player, isFocused)
	if not Object.IsValid(player) then return end

	Events.Broadcast("Quest.Map", player, "Focus")
	
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
		
		local mapQuests = _G.QuestController.GetUnlockedMapQuests(player)
		local quest = mapQuests[selectedIndex]

		Events.Broadcast("Quest.Map", player, "Play:"..quest.id)
		
		if quest then
			-- Activate the map quest
			_G.QuestController.ActivateForPlayer(player, quest.id)
			_G.QuestController.SavePlayerData(player)
			
			-- See if the player should be teleported or transferred
			if _G.QuestController.IsLocalGame(quest) then
				-- Spawn player at the right place
				SPAWN_UTILS.SpawnPlayerAt(player, quest.spawnKey)
			else
				--player:TransferToScene(sceneName)
			--else
				player:TransferToGame(quest.gameId)
			end
		end
	end
end)

