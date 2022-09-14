

Events.ConnectForPlayer("Map.Focus", function(player, isFocused)
	if not Object.IsValid(player) then return end
	Events.Broadcast("Quest_MapFocus", player)
	
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
		Events.Broadcast("Quest_MapPlay", player)
		
		-- TODO: Use selectedIndex to select the correct one
		
		--player:TransferToScene(sceneName)
	end
end)

