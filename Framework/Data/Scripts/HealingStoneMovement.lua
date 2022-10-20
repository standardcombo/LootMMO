local Crystal = script:GetCustomProperty("Crystal"):WaitForObject()
local Timer = script:GetCustomProperty("Timer")
local ResurrectionVFX = script:GetCustomProperty("ResurrectionVFX")
local Ease3D = require(script:GetCustomProperty("Ease3D"))

--play when the ability is spawned
Ease3D.EaseScale(Crystal, Vector3.New(1), .5, Ease3D.EasingEquation.BACK, Ease3D.EasingDirection.INOUT)
Ease3D.EasePosition(Crystal, Vector3.New(0, 0, 800), Timer+2, Ease3D.EasingEquation.EXPONENTIAL, Ease3D.EasingDirection.OUT)
Ease3D.EaseRotation(Crystal, Rotation.New(0, 0, 360), Timer+4, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)
Task.Wait(Timer+1.5)
Task.Wait(Timer) --play 4 sec before the ability is destroyed
Ease3D.EasePosition(Crystal, Vector3.New(0, 0, 6000), Timer, Ease3D.EasingEquation.EXPONENTIAL, Ease3D.EasingDirection.IN)
Task.Wait(Timer)
Crystal.visibility = Visibility.FORCE_OFF