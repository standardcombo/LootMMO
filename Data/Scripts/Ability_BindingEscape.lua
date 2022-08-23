local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local INTERRUPT = script:GetCustomProperty('Interrupt')

local inputEvent = nil
local LOCAL_PLAYER = Game.GetLocalPlayer()

local AcceptedValues = {
    ['Q'] = 1,
    ['Confirm'] = 2,
    ['Cancel'] = 3
}

function Advance()
    ABILITY:AdvancePhase()
end
function Interrupt()
    ABILITY:Interrupt()
end
function OnActionPressed(player, action, value)
    if AcceptedValues[action] then
        if INTERRUPT then
            Interrupt()
        else
            Advance()
        end
    end
end

function Disconnect()
    if inputEvent then
        inputEvent:Disconnect()
        inputEvent = nil
    end
end
function Execute()
    if ROOT.owner == LOCAL_PLAYER then
        inputEvent = Input.actionPressedEvent:Connect(OnActionPressed)
    end
end

function Cooldown()
    Disconnect()
end
function UnEquip()
    Disconnect()
end

ABILITY.executeEvent:Connect(Execute)
ABILITY.cooldownEvent:Connect(Cooldown)
