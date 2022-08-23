local Ease3D = require(script:GetCustomProperty("Ease3D"))

local DURATION = script:GetCustomProperty("DURATION")
local TARGET = script:GetCustomProperty("TARGET")
local ARROW = script.parent
local ARC = script.parent.parent

Task.Wait()
Ease3D.EasePosition(ARROW, Vector3.New(0, 0, -100), DURATION, Ease3D.EasingEquation.ELASTIC, Ease3D.EasingDirection.INOUT)
--Ease3D.EaseRotation(ARROW, Rotation.New(0, 0, 360), DURATION, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
--Ease3D.EasePosition(ARC, TARGET, DURATION, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.IN)
Task.Wait(DURATION + .3)
ARROW:Destroy()
--Task.Wait(DURATION/2)
--Ease3D.EasePosition(ARROW, Vector3.New(0, 0, -200), DURATION/3, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.IN)
--Ease3D.EaseRotation(ARROW, Rotation.New(0, 20, 0), .6, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.IN)
--Ease3D.EasePosition(ARC, Vector3.New(0, 0, 0), .6, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.IN)
