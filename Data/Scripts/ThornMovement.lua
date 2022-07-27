--local CenterThorns = script:GetCustomProperty("CenterThorns"):WaitForObject()
--local FrontLeftThorns = script:GetCustomProperty("FrontLeftThorns"):WaitForObject()
--local FrontRightThorns = script:GetCustomProperty("FrontRightThorns"):WaitForObject()
--local BackLeftThorns = script:GetCustomProperty("BackLeftThorns"):WaitForObject()
--local BackRightThorns = script:GetCustomProperty("BackRightThorns"):WaitForObject()
local DustVFX = script:GetCustomProperty("DustVFX"):WaitForObject()
local RumbleSFX = script:GetCustomProperty("RumbleSFX"):WaitForObject()
local CrunchSFX = script:GetCustomProperty("CrunchSFX"):WaitForObject()
local Root = script:GetCustomProperty("Root"):WaitForObject()

local Timer = script:GetCustomProperty("Timer")
local Ease3D = require(script:GetCustomProperty("Ease3D"))

while Root:GetCustomProperty("lifeSpan") == 0 do
	Task.Wait()
end

Task.Wait(.1)
--[[
Ease3D.EaseWorldScale(CenterThorns, Vector3.New(1), .7, Ease3D.EasingEquation.ELASTIC, Ease3D.EasingDirection.INOUT)
Ease3D.EaseWorldScale(FrontThorns, Vector3.New(1), .5, Ease3D.EasingEquation.ELASTIC, Ease3D.EasingDirection.INOUT)
Ease3D.EaseWorldScale(FrontLeftThorns, Vector3.New(1), .45, Ease3D.EasingEquation.ELASTIC, Ease3D.EasingDirection.INOUT)
Ease3D.EaseWorldScale(FrontRightThorns, Vector3.New(1), .55, Ease3D.EasingEquation.ELASTIC, Ease3D.EasingDirection.INOUT)
Ease3D.EaseWorldScale(BackLeftThorns, Vector3.New(1), .65, Ease3D.EasingEquation.ELASTIC, Ease3D.EasingDirection.INOUT)
Ease3D.EaseWorldScale(BackRightThorns, Vector3.New(1), .6, Ease3D.EasingEquation.ELASTIC, Ease3D.EasingDirection.INOUT)
Ease3D.EasePosition(CenterThorns, Vector3.New(23, 14, -75), .6, Ease3D.EasingEquation.ELASTIC, Ease3D.EasingDirection.OUT)
Ease3D.EasePosition(FrontThorns, Vector3.New(-23, -29, -42), .4, Ease3D.EasingEquation.ELASTIC, Ease3D.EasingDirection.OUT)
Ease3D.EasePosition(FrontLeftThorns, Vector3.New(-35, 17, -36), .35, Ease3D.EasingEquation.ELASTIC, Ease3D.EasingDirection.OUT)
Ease3D.EasePosition(FrontRightThorns, Vector3.New(52, -14, -51), .45, Ease3D.EasingEquation.ELASTIC, Ease3D.EasingDirection.OUT)
Ease3D.EasePosition(BackLeftThorns, Vector3.New(12, 40, -46), .55, Ease3D.EasingEquation.ELASTIC, Ease3D.EasingDirection.OUT)
Ease3D.EasePosition(BackRightThorns, Vector3.New(18, 5, -46), .5, Ease3D.EasingEquation.ELASTIC, Ease3D.EasingDirection.OUT)
]]--
CrunchSFX:Play()
DustVFX:Play()
Task.Wait(.6)
RumbleSFX:Stop()
Task.Wait(Root:GetCustomProperty("lifeSpan")-1.8)
--[[
Ease3D.EaseWorldScale(CenterThorns, Vector3.New(.1), 1.7, Ease3D.EasingEquation.BACK, Ease3D.EasingDirection.INOUT)
Ease3D.EaseWorldScale(FrontThorns, Vector3.New(.1), 1.5, Ease3D.EasingEquation.BACK, Ease3D.EasingDirection.INOUT)
Ease3D.EaseWorldScale(FrontLeftThorns, Vector3.New(.1), 1.45, Ease3D.EasingEquation.BACK, Ease3D.EasingDirection.INOUT)
Ease3D.EaseWorldScale(FrontRightThorns, Vector3.New(.1), 1.55, Ease3D.EasingEquation.BACK, Ease3D.EasingDirection.INOUT)	
Ease3D.EaseWorldScale(BackLeftThorns, Vector3.New(.1), 1.65, Ease3D.EasingEquation.BACK, Ease3D.EasingDirection.INOUT)
Ease3D.EaseWorldScale(BackRightThorns, Vector3.New(.1), 1.6, Ease3D.EasingEquation.BACK, Ease3D.EasingDirection.INOUT)
Ease3D.EasePosition(CenterThorns, Vector3.New(-19, 32, -312), 1.6, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.INOUT)
Ease3D.EasePosition(FrontThorns, Vector3.New(27, 231, -277), 1.4, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.INOUT)
Ease3D.EasePosition(FrontLeftThorns, Vector3.New(365, -17, -271), 1.35, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.INOUT)
Ease3D.EasePosition(FrontRightThorns, Vector3.New(-154, 152, -281), 1.45, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.INOUT)
Ease3D.EasePosition(BackLeftThorns, Vector3.New(193, -220, -298), 1.55, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.INOUT)
Ease3D.EasePosition(BackRightThorns, Vector3.New(-88, -218, -270), 1.5, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.INOUT)
]]--