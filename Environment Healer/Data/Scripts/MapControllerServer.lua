
local MAPS = require(script:GetCustomProperty("CryptsAndCaverns"))

Events.ConnectForPlayer("MapFocus", function(player, isFocused)
	if not Object.IsValid(player) then return end
	
	for _,ability in ipairs(player:GetAbilities()) do
		if isFocused then
			ability.serverUserData.lastIsEnabled = ability.isEnabled
			ability.isEnabled = false
		
		elseif ability.serverUserData.lastIsEnabled ~= nil then
			ability.isEnabled = ability.serverUserData.lastIsEnabled
		end
	end
end)


Events.ConnectForPlayer("PlayCryptsAndCaverns", function(player, selectedIndex)
	if Object.IsValid(player) then
		
		-- TODO: Use selectedIndex to select the correct one
		
		local mapId = MAPS[selectedIndex].map_id
		local sceneName = "Crypts n Caverns - " .. mapId
		player:TransferToScene(sceneName)
	end
end)

