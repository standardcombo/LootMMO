
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
			Events.BroadcastToPlayer(player, "FadeOut", 8)
			if _G.QuestController.IsLocalGame(quest) then
				-- Spawn player at the right place
				--Check scene, if current scene is quest scene, then 
				-- spawn, else Transfer
				if quest.sceneString == nil or quest.sceneString == "" then
					SPAWN_UTILS.SpawnPlayerAt(player, quest.spawnKey)
				else
					local CurrentScene = Game.GetCurrentSceneName()
					if CurrentScene ~= quest.sceneString then 
						Events.Broadcast("GoingToTravel", player)
						player:TransferToScene(quest.sceneString,{spawnKey = quest.spawnKey})
						return
					end
					SPAWN_UTILS.SpawnPlayerAt(player, quest.spawnKey)
				end
			else
				Events.Broadcast("GoingToTravel", player)
				player:TransferToGame(quest.gameId)
				--only transfer to scene, in a new game, is un accounted for.
				-- need to consider a check like above for quest.sceneString.
			end
		end
	end
end)

