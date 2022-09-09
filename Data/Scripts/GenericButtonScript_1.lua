local PressedSound = script:GetCustomProperty('PressedSound')
local HoverSound = script:GetCustomProperty('HoverSound')
local BroadcastString = script:GetCustomProperty('BroadcastString')
local OnReleased = script:GetCustomProperty('OnReleased')
local IncludedVariables = script:GetCustomProperty('IncludedVariables')
local TO_SERVER = script:GetCustomProperty('toServer')

BUTTON = script.parent
assert(BUTTON, 'Script needs to be a child of a button')

function ButtonPressed()
    if PressedSound then
        World.SpawnAsset(PressedSound)
    end
    if BroadcastString == '' then
        return
    end
    if TO_SERVER then
        Events.BroadcastToServer(BroadcastString, IncludedVariables)
    else
        Events.Broadcast(BroadcastString, IncludedVariables)
    end
end

function HoverEvent()
    if HoverSound then
        World.SpawnAsset(HoverSound)
    end
end

BUTTON.hoveredEvent:Connect(HoverEvent)

if OnReleased then
    BUTTON.releasedEvent:Connect(ButtonPressed)
else
    BUTTON.pressedEvent:Connect(ButtonPressed)
end
