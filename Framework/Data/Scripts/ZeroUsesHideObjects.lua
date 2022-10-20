
local DELAY = script:GetCustomProperty("Delay")
local startTime = time()

function SetObjectVisibility(value)
	local myProperties = script:GetCustomProperties()
	for k,v in pairs(myProperties) do
		if type(v) == "userdata" and v.WaitForObject then
			v:WaitForObject().visibility = value
		end
	end
end

local EQUIPMENT = script:FindAncestorByType("Equipment")
if not EQUIPMENT then
	SetObjectVisibility(Visibility.FORCE_OFF)
	return
end

function OnPropertyChanged(obj, propertyName)
	if propertyName == "usesRemaining" then
		if DELAY > 0 and time() - startTime >= 1 then
			Task.Wait(DELAY)
			if not Object.IsValid(script) then return end
		end
		if obj:GetCustomProperty(propertyName) <= 0 then
			SetObjectVisibility(Visibility.FORCE_OFF)
		else
			SetObjectVisibility(Visibility.INHERIT)
		end
	end
end
EQUIPMENT.customPropertyChangedEvent:Connect(OnPropertyChanged)
OnPropertyChanged(EQUIPMENT, "usesRemaining")

