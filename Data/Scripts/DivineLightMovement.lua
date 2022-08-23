local Shield = script:GetCustomProperty("Shield"):WaitForObject()
local Ease3D = require(script:GetCustomProperty("Ease3D"))

--play when the ability is spawned
Shield.visibility = Visibility.FORCE_ON
Ease3D.EaseScale(Shield, Vector3.New(.6), .3, Ease3D.EasingEquation.BACK, Ease3D.EasingDirection.INOUT)
Ease3D.EasePosition(Shield, Vector3.New(0, 0, -10), .3, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.OUT)
Ease3D.EaseRotation(Shield, Rotation.New(180, 0, 360), .3, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.IN)
Task.Wait(.3)
Ease3D.EasePosition(Shield, Vector3.New(0, 0, -90), .8, Ease3D.EasingEquation.CUBIC, Ease3D.EasingDirection.IN)
Ease3D.EaseRotation(Shield, Rotation.New(180, 0, 0), .8, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.OUT)
Task.Wait(.7)
Shield.visibility = Visibility.FORCE_OFF