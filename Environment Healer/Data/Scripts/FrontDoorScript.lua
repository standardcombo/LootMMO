local propRotationRoot1 = script:GetCustomProperty("RotationRoot1"):WaitForObject()
local propRotationRoot2 = script:GetCustomProperty("RotationRoot2"):WaitForObject()
local propHelper_DoorOpenSound = script:GetCustomProperty("Helper_DoorOpenSound"):WaitForObject()

local rotationParent = propRotationRoot1.parent:GetWorldRotation()

local original1 = propRotationRoot1:GetWorldRotation()
local original2 = propRotationRoot2:GetWorldRotation()

function OnThiefOpen()
	
	propRotationRoot1:RotateTo(rotationParent + Rotation.New(0.0, 0.0, 90.0), 0.3)
	propRotationRoot2:RotateTo(rotationParent - Rotation.New(0.0, 0.0, 90.0), 0.3)
	propHelper_DoorOpenSound:Play()
end


function OnGameReset()
	propRotationRoot1:SetWorldRotation(original1)
	propRotationRoot2:SetWorldRotation(original2)
end


Events.Connect("_OPEN_DOOR_", OnThiefOpen)
Events.Connect("_GAMERESET_", OnGameReset)