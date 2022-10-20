local Drone = script:GetCustomProperty("Drone"):WaitForObject()
local Beam = script:GetCustomProperty("Beam"):WaitForObject()
local Ease3D = require(script:GetCustomProperty("Ease3D"))

--play when the ability is spawned
Ease3D.EaseScale(Drone, Vector3.New(1), .5, Ease3D.EasingEquation.BACK, Ease3D.EasingDirection.INOUT)
Ease3D.EaseRotation(Drone, Rotation.New(0, 0, 360), 3, Ease3D.EasingEquation.SINE, Ease3D.EasingDirection.INOUT)