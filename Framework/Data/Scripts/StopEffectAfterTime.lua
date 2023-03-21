
local VFX = script:GetCustomProperty("Vfx"):WaitForObject()
local TIME = script:GetCustomProperty("Time")

Task.Wait(TIME)

if VFX:IsA("Folder") then
    for _,e in ipairs(VFX:GetChildren())do
        e:Stop()
    end
else
    VFX:Stop()
end