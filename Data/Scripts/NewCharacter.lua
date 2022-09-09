local BUTTON = script:GetCustomProperty('Button'):WaitForObject()

local ClientNewCharacterEvent = 'CNewCharacter'

function NewCharacter()
    Events.Broadcast(ClientNewCharacterEvent)
end

BUTTON.pressedEvent:Connect(NewCharacter)
