local BODY = script:GetCustomProperty("Body"):WaitForObject()
local ARMS = script:GetCustomProperty("Arms"):WaitForObject()
local Ease3D = require(script:GetCustomProperty("Ease3D"))

function Tick()
	Ease3D.EasePosition(BODY, Vector3.New(0, 0, 220), 2, Ease3D.EasingEquation.QUADRATIC, Ease3D.EasingDirection.INOUT)
	Task.Wait(1)
	Ease3D.EasePosition(ARMS, Vector3.New(0, 0, -7), 1, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.INOUT)
	Task.Wait(1)
	Ease3D.EasePosition(BODY, Vector3.New(0, 0, 230), 2, Ease3D.EasingEquation.QUADRATIC, Ease3D.EasingDirection.INOUT)
	Task.Wait(1)
	Ease3D.EasePosition(ARMS, Vector3.New(0, 0, -3), 1, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.INOUT)
	Task.Wait(1)
end