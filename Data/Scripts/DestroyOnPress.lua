
-- Custom 
local BUTTON = script:GetCustomProperty("Button"):WaitForObject()
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
function Pressed()
    if Object.IsValid(ROOT) then 
        ROOT:Destroy()
    end 
end
 
BUTTON.releasedEvent:Connect(Pressed)

Task.Wait(5)
if Object.IsValid(ROOT) then
    ROOT:Destroy()
end