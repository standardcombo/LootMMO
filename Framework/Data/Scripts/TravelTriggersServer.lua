--[[
	Travel Triggers - Server
	v1.0 - 2022/10/20
	by: standardcombo
	
	This component handles travelling and changing game state by various means:
	- Transfer to another game
	- Transfer to another scene
	- Respawn at a specific spawn key
	- Change the game state
	
	Setup
	=====
	1. Create a new trigger and place it alongside this script
	2. Set it to interactable and configure its label
	3. Add custom properties to it, defining the ways in which players will travel.
		For example, if "SceneName" is added, then players will transfer to the specified scene.
	4. Multiple of the properties can be set, all optional.
	
	Properties
	==========
	GameID - string
	SceneName - string
	SpawnKey - string
	GameState - integer
]]

local SPAWN_UTILS = require( script:GetCustomProperty("SpawnUtils") )

local TRIGGERS = script.parent:GetChildren()



function TravelToGame(player, gameId)
	-- Fade out
	player.serverUserData.isWaitingToTravelTriggers = true
	Events.BroadcastToPlayer(player, "FadeOut", 8)
	Task.Wait(0.4)
	if not Object.IsValid(player) then return end
	
	-- Travel
	player:TransferToGame(gameId)
end


function TravelToScene(player, sceneName, spawnKey)
	-- Fade out
	player.serverUserData.isWaitingToTravelTriggers = true
	Events.BroadcastToPlayer(player, "FadeOut", 8)
	Task.Wait(0.4)
	if not Object.IsValid(player) then return end
	
	-- Travel
	if spawnKey and spawnKey ~= "" then
		player:TransferToScene(sceneName, {spawnKey = spawnKey})
	else
		player:TransferToScene(sceneName)
	end
end


function TravelToSpawnKey(player, spawnKey)
	-- Fade out
	player.serverUserData.isWaitingToTravelTriggers = true
	Events.BroadcastToPlayer(player, "FadeOut", 8)
	Task.Wait(0.7)
	if not Object.IsValid(player) then return end
	
	-- Travel
	SPAWN_UTILS.SpawnPlayerAt(player, spawnKey)
	
	-- Fade in
	Task.Wait(0.5)
	if not Object.IsValid(player) then return end
	Events.BroadcastToPlayer(player, "FadeIn", 8)
	player.serverUserData.isWaitingToTravelTriggers = nil
end


function TravelToGameState(player, gameState)
	_G.AppState.SetStateForPlayer(player, gameState)
end


function OnInteracted(trigger, player)
	if player.serverUserData.isWaitingToTravelTriggers then return end
	
	-- Game State
    if _G.AppState then
		local gameState = trigger:GetCustomProperty("GameState")
		
		gameState = tonumber(gameState)
		
		if gameState and gameState >= 0 then
			TravelToGameState(player, gameState)
		end
	end

	-- Game Transfer
	local gameId = trigger:GetCustomProperty("GameID")
	if gameId and gameId ~= "" then
		TravelToGame(player, gameId)
		return
	end
	
	-- Scene Transfer
	local sceneName = trigger:GetCustomProperty("SceneName")
	local spawnKey = trigger:GetCustomProperty("SpawnKey")
	if sceneName and sceneName ~= "" then
		TravelToScene(player, sceneName, spawnKey)
	
	-- Respawn at key
	elseif spawnKey and spawnKey ~= "" then
		TravelToSpawnKey(player, spawnKey)
	end
end

for _,trigger in ipairs(TRIGGERS) do
	if trigger.interactedEvent then
		trigger.interactedEvent:Connect(OnInteracted)
	end
end

