local trigger = script:GetCustomProperty("Trigger"):WaitForObject()
local ROOT = script:GetCustomProperty("Root"):WaitForObject()

local ZOOM_DISTANCE = ROOT:GetCustomProperty("CameraZoomDistance") or 0
local RESET_ZOOM_ON_EXIT = ROOT:GetCustomProperty("ResetZoomOnExit")

-- instance vars
local playerZooms = {}

function OnBeginOverlap(_, player)
	if (player:IsA("Player") and player == Game.GetLocalPlayer()) then
		local camera = player:GetDefaultCamera()
		playerZooms[player.id] = camera.currentDistance
		
		-- inform the SmoothAdjustableCamera we want to zoom to a specified distance
		Events.Broadcast("SmoothAdjustableCameraSetDistance", ZOOM_DISTANCE) 
	end
end

function OnEndOverlap(_, player)
	if (player:IsA("Player") and player == Game.GetLocalPlayer() and playerZooms[player.id]) then
		if (RESET_ZOOM_ON_EXIT) then
			-- Set the distance back to what it was when they entered.
			Events.Broadcast("SmoothAdjustableCameraSetDistance", playerZooms[player.id])
		end
		
		playerZooms[player.id] = nil
	end
end

function OnPlayerLeft(player)
	if (playerZooms[player.id]) then
		-- player left game while inside trigger
		playerZooms[player.id] = nil
	end
end

trigger.beginOverlapEvent:Connect(OnBeginOverlap)
trigger.endOverlapEvent:Connect(OnEndOverlap)

Game.playerLeftEvent:Connect(OnPlayerLeft)