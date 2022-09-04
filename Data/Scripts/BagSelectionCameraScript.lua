
local CAMERA = script:GetCustomProperty("Camera"):WaitForObject()
local REFERENCE_SPAWN_POINT = script:GetCustomProperty("ReferenceSpawnPoint"):WaitForObject()

local DELTA_CAMERA_POS = CAMERA:GetWorldPosition() - REFERENCE_SPAWN_POINT:GetWorldPosition()

function SetAsDefault()
	local player = Game.GetLocalPlayer()
	player:SetDefaultCamera(CAMERA)
	CAMERA:SetWorldPosition(player:GetWorldPosition() + DELTA_CAMERA_POS)
end

function OnPlayerJoined(player)
	if player == Game.GetLocalPlayer() then
		SetAsDefault()
	end
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)

