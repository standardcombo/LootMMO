local TRIGGER = script:GetCustomProperty('Trigger'):WaitForObject()
local Abilities = {
    'Roll',
    'Rock Strike',
    'Shuriken',
    'Entangle',
    'Sun Beam',
}

local count = 1

local function GetNewAbility()
    local random = Abilities[count]
    Events.BroadcastToServer('RequestNewAbility',random )
    count = (count + 1) % (#Abilities+1)
end

TRIGGER.interactedEvent:Connect(GetNewAbility)
