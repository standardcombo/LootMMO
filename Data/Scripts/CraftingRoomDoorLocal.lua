
local NET_OBJECT = script:GetCustomProperty("NetObject"):WaitForObject()
local ROTATION_ROOT_1 = script:GetCustomProperty("RotationRoot1"):WaitForObject()
local ROTATION_ROOT_2 = script:GetCustomProperty("RotationRoot2"):WaitForObject()

local DURATION = 0.4


local function GetState()
	return NET_OBJECT:GetCustomProperty("State")
end


local function OnPropertyChanged(obj, propName)
	local state = GetState()
	if state == 1 then
		ROTATION_ROOT_1:RotateTo(Rotation.New(0, 0, -90), DURATION, true)
		ROTATION_ROOT_2:RotateTo(Rotation.New(0, 0, 90), DURATION, true)
		
	elseif state == -1 then
		ROTATION_ROOT_1:RotateTo(Rotation.New(0, 0, 90), DURATION, true)
		ROTATION_ROOT_2:RotateTo(Rotation.New(0, 0, -90), DURATION, true)
	
	else
		ROTATION_ROOT_1:RotateTo(Rotation.New(0, 0, 0), DURATION, true)
		ROTATION_ROOT_2:RotateTo(Rotation.New(0, 0, 0), DURATION, true)
	end
end


NET_OBJECT.customPropertyChangedEvent:Connect(OnPropertyChanged)
OnPropertyChanged()

