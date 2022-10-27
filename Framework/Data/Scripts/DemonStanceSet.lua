local CHARACTER = script:GetCustomProperty("TargetCharacter"):WaitForObject()
local Stance = script:GetCustomProperty("SetStance")
Task.Wait(2)
CHARACTER.animationStance = Stance