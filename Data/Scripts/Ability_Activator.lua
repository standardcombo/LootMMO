local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()

function OnActionPressed(player, action, value)
    if ROOT.owner ~= player then
        return
    end
    if action == ROOT:GetCustomProperty('AbilityBinding') then
        if ABILITY:GetCurrentPhase() == AbilityPhase.READY then
            ABILITY:Activate()
        end
    end
end

Input.actionPressedEvent:Connect(OnActionPressed)
