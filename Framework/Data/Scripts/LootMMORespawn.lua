--[[
	LootMMO Respawn
	v1.0.1 - 2022/10/22
	by: standardcombo, Luapi
	
	Checks if a dying player is in a safe zone or not.
	If in safe zone, then they respawn according to SafeSpawnKey
	If they are in a combat zone, then they spawn at a given CombatSpawnKey.
]]

local SPAWN_UTILS = require( script:GetCustomProperty("SpawnUtils") )

local SAFE_RESPAWN_DELAY = script:GetCustomProperty("SafeRespawnDelay")
local SAFE_SPAWN_KEY = script:GetCustomProperty("SafeSpawnKey")
local COMBAT_RESPAWN_DELAY = script:GetCustomProperty("CombatRespawnDelay")
local COMBAT_SPAWN_KEY = script:GetCustomProperty("CombatSpawnKey")


function SafeZoneRespawn(player)
	Task.Wait(SAFE_RESPAWN_DELAY)
	
	if Object.IsValid(player) then
		SPAWN_UTILS.SpawnPlayerAt(player, SAFE_SPAWN_KEY)
	end
end


function CombatRespawn(player)
	Task.Wait(COMBAT_RESPAWN_DELAY - 1.1)
	
	if Object.IsValid(player) then
		-- Fade out
		player.serverUserData.isWaitingToTravelTriggers = true
		Events.BroadcastToPlayer(player, "FadeOut", 8)
		Task.Wait(0.7)
		if not Object.IsValid(player) then return end
		
		-- Respawn
		SPAWN_UTILS.SpawnPlayerAt(player, COMBAT_SPAWN_KEY)
		
		-- Fade in
		Task.Wait(0.5)
		if not Object.IsValid(player) then return end
		Events.BroadcastToPlayer(player, "FadeIn", 8)
		player.serverUserData.isWaitingToTravelTriggers = nil
	end
end


function OnPlayerDied(player, dmg)
	if player.serverUserData 
	and player.serverUserData.safeZoneCount
	and player.serverUserData.safeZoneCount > 0
	then
		SafeZoneRespawn(player)
	else
		CombatRespawn(player)
	end
end

function OnPlayerJoined(player)
	player.diedEvent:Connect(OnPlayerDied)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)

