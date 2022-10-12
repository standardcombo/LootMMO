--[[
	TODO
]]

local SPAWN_UTILS = require( script:GetCustomProperty("SpawnUtils") )

local TRIGGERS = script.parent:GetChildren()


function TravelToGame(player, gameId)
	player:TransferToGame(gameId)
end


function TravelToSpawnKey(player, spawnKey)
	SPAWN_UTILS.SpawnPlayerAt(player, spawnKey)
end


function TravelToGameState(player, gameState)
	_G.AppState.SetStateForPlayer(player, gameState)
end


function OnInteracted(trigger, player)
    if _G.AppState then
		local gameState = trigger:GetCustomProperty("GameState")
		
		gameState = tonumber(gameState)
		
		if gameState and gameState >= 0 then
			TravelToGameState(player, gameState)
		end
	end
	
	local spawnKey = trigger:GetCustomProperty("SpawnKey")
	if spawnKey then
		TravelToSpawnKey(player, spawnKey)
	end

	local gameId = trigger:GetCustomProperty("GameID")
	if gameId then
		TravelToGame(player, gameId)
	end
end

for _,trigger in ipairs(TRIGGERS) do
	if trigger.interactedEvent then
		trigger.interactedEvent:Connect(OnInteracted)
	end
end

