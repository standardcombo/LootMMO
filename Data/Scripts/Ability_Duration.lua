local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIABLES = require(script:GetCustomProperty('Loot_Ability_Modifiables'))

local startTime = 0
local endTime = 0

function Execute()
    if not ROOT.owner == Game.GetLocalPlayer() then
        return
    end
    startTime = time()
    endTime =
        startTime + (ROOT.clientUserData.calculateModifier()[MODIFIABLES.Duration.name] or ABILITY.executeDuration)
    while ABILITY:GetCurrentPhase() == AbilityPhase.EXECUTE do
        Task.Wait()
        if time() > endTime then
            ABILITY:AdvancePhase()
        end
    end
end

ABILITY.executeEvent:Connect(Execute)
