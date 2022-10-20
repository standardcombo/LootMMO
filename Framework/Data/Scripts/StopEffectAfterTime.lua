
local VFX = script:GetCustomProperty("Vfx"):WaitForObject()
local TIME = script:GetCustomProperty("Time")

Task.Wait(TIME)

VFX:Stop()