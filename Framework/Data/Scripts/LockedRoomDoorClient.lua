

local LOCKED_EVENT_ID = "LockedDoorMessage"

Events.Connect(LOCKED_EVENT_ID, function(message)
	local playerPos = Game:GetLocalPlayer():GetWorldPosition()
	local pos = playerPos + Vector3.New(0, 0, 90)
	UI.ShowFlyUpText(message, pos, {
		color = Color.RED, 
		isBig = true,
		duration = 1.2
	})
end)