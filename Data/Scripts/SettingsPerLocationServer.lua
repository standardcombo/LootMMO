--[[
	Settings per Location - Server
	by: standardcombo
	
	Changes the player's settings depending on their current screen.
	
	Screens:
	- Bag selection
	- Social Hub
]]

local PLAYER_SETTINGS_BAG_SELECTION = script:GetCustomProperty("PlayerSettingsBagSelection"):WaitForObject()
local PLAYER_SETTINGS_SOCIAL_SPACE = script:GetCustomProperty("PlayerSettingsSocialSpace"):WaitForObject()

Events.Connect("AppState.Enter", function(player, newState, prevState)
	if not Object.IsValid(player) then return end
	
	if newState == _G.AppState.SocialHub 
	and prevState == _G.AppState.BagSelection then
		PLAYER_SETTINGS_SOCIAL_SPACE:ApplyToPlayer(player)
		
		SpawnPlayerAt(player, "Social")
	end

	if newState == _G.AppState.BagSelection
	and prevState ~= _G.AppState.None then
		PLAYER_SETTINGS_BAG_SELECTION:ApplyToPlayer(player)
		
		SpawnPlayerAt(player, "BagSelection")
	end
end)


function GetSpawnPointsWithKey(key)
	local spawnPoints = World.FindObjectsByType("PlayerStart")
	for i = #spawnPoints, 1, -1 do
		local point = spawnPoints[i]
		if point.key ~= key then
			table.remove(spawnPoints, i)
		end
	end
	return spawnPoints
end


function SpawnPlayerAt(player, point)
	if type(point) == "string" then
		point = GetSpawnPointsWithKey(point)
	end
	if type(point) == "table" then
		local randomIndex = math.random(1, #point)
		point = point[randomIndex]
	end
	player:Spawn({
		position = point:GetWorldPosition(), 
		rotation = point:GetWorldRotation()
	})
end

