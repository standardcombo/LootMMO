local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()

function OnActionPressed(player, action, value)
    if not ABILITY.isEnabled then 
        return 
    end 
    if ROOT.owner ~= player then
        return
    end
    if action == ROOT:GetCustomProperty('AbilityBinding') then
        if ABILITY:GetCurrentPhase() == AbilityPhase.READY then
            ABILITY:Activate()
        end
    end
end

local Event = Input.actionPressedEvent:Connect(OnActionPressed)
script.destroyEvent:Connect(function()
    Event:Disconnect()
end )