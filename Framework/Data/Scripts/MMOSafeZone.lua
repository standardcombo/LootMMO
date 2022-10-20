
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()

local zoneData = {
	id = script.id,
	name = script:GetCustomProperty("ZoneName"),
	trigger = TRIGGER
}

function OnBeginOverlap(trigger, player)
	if not player:IsA("Player") then return end
	if not player.serverUserData.safeZoneCount then return end
	
	player.serverUserData.safeZoneCount = player.serverUserData.safeZoneCount + 1
	--print("A) player.serverUserData.safeZoneCount = ".. player.serverUserData.safeZoneCount)
	
	if player.serverUserData.safeZoneCount == 1 then
		Events.Broadcast("SafeZone_Enter", player, zoneData)
		
		--print(player.name .." entered safe zone ".. zoneData.name ..",".. zoneData.id)
	end
end

function OnEndOverlap(trigger, player)
	if not player:IsA("Player") then return end
	if not player.serverUserData.safeZoneCount then return end
	
	-- One frame delay, in case the player is teleporting between safe zones we count:
	-- 1,2,1 (no events fired) as opposed to 1,0,1 with quick Exit/Enter events.
	Task.Wait()
	
	if not Object.IsValid(player) then return end
	
	player.serverUserData.safeZoneCount = player.serverUserData.safeZoneCount - 1
	--print("B) player.serverUserData.safeZoneCount = ".. player.serverUserData.safeZoneCount)
	
	if player.serverUserData.safeZoneCount == 0 then
		Events.Broadcast("SafeZone_Exit", player, zoneData)
		
		--print(player.name .." exited safe zone ".. zoneData.name ..",".. zoneData.id)
	end
end

TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)
TRIGGER.endOverlapEvent:Connect(OnEndOverlap)


function OnPlayerJoined(player)
	Task.Wait(1)
	if not Object.IsValid(player) then return end
	
	if not player.serverUserData.safeZoneCount then
		player.serverUserData.safeZoneCount = 0
	end
	
	if TRIGGER:IsOverlapping(player) then
		OnBeginOverlap(TRIGGER, player)
	end
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)

