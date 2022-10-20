local shuriken = script.parent.parent
local shurikenRotation = script.parent
local Multiplier = script:GetCustomProperty("Multiplier")
local Target_POS = script:GetCustomProperty("Target_POS")
local Duration = script:GetCustomProperty("Duration")
local Flight_ROT = script:GetCustomProperty("Flight_ROT")
local Delay = script:GetCustomProperty("Delay")
local shuriken_POS = shuriken:GetWorldPosition()


shurikenRotation:RotateContinuous(Rotation.New(0, 0, -120), Multiplier, true)
--shuriken:MoveTo((shuriken_POS + Target_POS), Duration)
--shuriken:RotateTo(Flight_ROT, Duration/2)