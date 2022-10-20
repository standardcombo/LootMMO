local API = {}

API.CONTROL_MODE_CLASSIC = 1
API.CONTROL_MODE_ACTION = 2

local controlMode = API.CONTROL_MODE_CLASSIC

function API.SetControlMode(newControlMode)
	controlMode = newControlMode
end

function API.GetControlMode()
	return controlMode
end

return API
