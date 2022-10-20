local LeftRock = script:GetCustomProperty("LeftRock"):WaitForObject()
local FarLeftRock = script:GetCustomProperty("FarLeftRock"):WaitForObject()
local RightRock = script:GetCustomProperty("RightRock"):WaitForObject()
local FarRightRock = script:GetCustomProperty("FarRightRock"):WaitForObject()
local MidRock = script:GetCustomProperty("MidRock"):WaitForObject()
local Ease3D = require(script:GetCustomProperty("Ease3D"))
local Timer = script:GetCustomProperty("Timer")

local task = Task.Spawn(function()

	Task.Wait(0) --play when the ability is spawned
	Ease3D.EasePosition(FarLeftRock, Vector3.New(-123, -149, 9), .2, Ease3D.EasingEquation.EXPONENTIAL, Ease3D.EasingDirection.OUT)
	Task.Wait(0.02)
	Ease3D.EasePosition(FarRightRock, Vector3.New(-123, 149, 9), .2, Ease3D.EasingEquation.EXPONENTIAL, Ease3D.EasingDirection.OUT)
	Task.Wait(0.02)
	Ease3D.EasePosition(LeftRock, Vector3.New(-36, -106, 9), .2, Ease3D.EasingEquation.EXPONENTIAL, Ease3D.EasingDirection.OUT)
	Task.Wait(0.02)
	Ease3D.EasePosition(RightRock, Vector3.New(-50, 89, 9), .2, Ease3D.EasingEquation.EXPONENTIAL, Ease3D.EasingDirection.OUT)
	Task.Wait(0.02)
	Ease3D.EasePosition(MidRock, Vector3.New(30, 1, -6), .2, Ease3D.EasingEquation.EXPONENTIAL, Ease3D.EasingDirection.OUT)
	Task.Wait(Timer) --play 1 sec before the ability is destroyed
	Ease3D.EasePosition(FarLeftRock, Vector3.New(-190, -9, -130), 0.5, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.IN)
	Task.Wait(0.1)
	Ease3D.EasePosition(FarRightRock, Vector3.New(-190, 30, -130), 0.5, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.IN)
	Task.Wait(0.1)
	Ease3D.EasePosition(LeftRock, Vector3.New(-120, -15, -145), 0.5, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.IN)
	Task.Wait(0.1)
	Ease3D.EasePosition(RightRock, Vector3.New(-140, -14, -150), 0.5, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.IN)
	Task.Wait(0.1)
	Ease3D.EasePosition(MidRock, Vector3.New(-119, 7, -177), 0.5, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.IN)
	Task.Wait(3)
    
end)
task.repeatCount = -1
task.repeatInterval = -1