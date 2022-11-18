--[[
	Settings per Location - Server
	by: standardcombo
	
	Changes the player's settings depending on their current screen.
	
	Screens:
	- Bag selection
	- Social Hub
]]

local SPAWN_UTILS = require( script:GetCustomProperty("SpawnUtils") )

local PLAYER_SETTINGS_BAG_SELECTION = script:GetCustomProperty("PlayerSettingsBagSelection"):WaitForObject()
local PLAYER_SETTINGS_SOCIAL_SPACE = script:GetCustomProperty("PlayerSettingsSocialSpace"):WaitForObject()

local STARTING_STATE = script:GetCustomProperty("StartingState")
local STARTING_SPAWN = script:GetCustomProperty("StartingSpawnKey")


Events.Connect("AppState.Enter", function(player, newState, prevState)
--	print("Settings per location AppState.Enter")
	
	if not Object.IsValid(player) then return end
	
	if newState == _G.AppState.CharacterSelection then
		SPAWN_UTILS.SpawnPlayerAt(player, "CharacterSelect")
	
	elseif newState == _G.AppState.SocialHub 
	and (prevState == _G.AppState.BagSelection 
		or prevState == _G.AppState.CharacterSelection
		or prevState == _G.AppState.None
	) then
		PLAYER_SETTINGS_SOCIAL_SPACE:ApplyToPlayer(player)
		
		SPAWN_UTILS.SpawnPlayerAt(player, "Social")

	elseif newState == _G.AppState.BagSelection
	and prevState ~= _G.AppState.None then
		PLAYER_SETTINGS_BAG_SELECTION:ApplyToPlayer(player)
		
		SPAWN_UTILS.SpawnPlayerAt(player, "BagSelection")
	end

	player.serverUserData.hasSpawned = true
end)


function OnPlayerJoined(player)
	_G.AppState.SetStateForPlayer(player, STARTING_STATE)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)

-- Events.ConnectForPlayer("ClientReady", function(player)
-- 	if _G.AppState and not player.serverUserData.hasSpawned then
-- 		_G.AppState.SetStateForPlayer(player, STARTING_STATE)
-- 	end
-- end)

