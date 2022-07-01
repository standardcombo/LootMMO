
local FREEZE_CAM = script:GetCustomProperty("FreezeCam"):WaitForObject()

function Freeze()
	local player = Game.GetLocalPlayer()
	local cam = player:GetActiveCamera()
	
	local pos = player:GetWorldPosition() + Vector3.UP * 74
	local rot = player:GetViewWorldRotation()
	FREEZE_CAM:SetWorldPosition(pos)
	FREEZE_CAM:SetWorldRotation(rot)
	
	FREEZE_CAM.currentDistance = cam.currentDistance
	FREEZE_CAM.currentPitch = cam.currentPitch
	FREEZE_CAM.currentYaw = cam.currentYaw
	FREEZE_CAM.fieldOfView = cam.fieldOfView
	FREEZE_CAM:SetPositionOffset(cam:GetPositionOffset())
	FREEZE_CAM:SetRotationOffset(cam:GetRotationOffset())
	
	player:SetOverrideCamera(FREEZE_CAM)
end

function Unfreeze()
	Game.GetLocalPlayer():ClearOverrideCamera()
end

Events.Connect("FreezeCamera", Freeze)
Events.Connect("UnfreezeCamera", Unfreeze)

