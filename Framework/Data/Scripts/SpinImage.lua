
local SPINNER = script:GetCustomProperty("Spinner"):WaitForObject()

function Tick()
	SPINNER.rotationAngle = time() * 90
end