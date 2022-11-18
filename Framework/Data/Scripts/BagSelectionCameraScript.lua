
local CAMERA = script:GetCustomProperty("Camera"):WaitForObject()
local REFERENCE_SPAWN_POINT = script:GetCustomProperty("ReferenceSpawnPoint"):WaitForObject()

local DELTA_CAMERA_POS = CAMERA:GetWorldPosition() - REFERENCE_SPAWN_POINT:GetWorldPosition()

function SetAsDefault()
	local player = Game.GetLocalPlayer()
	player:SetDefaultCamera(CAMERA)
	CAMERA:SetWorldPosition(player:GetWorldPosition() + DELTA_CAMERA_POS)
end

Events.Connect("AppState.Enter", function(player, newState, prevState)
	--print("BagSelectionCameraScript AppState.Enter", newState, ">", prevState)
	if newState == _G.AppState.BagSelection then
		SetAsDefault()
	end
end)