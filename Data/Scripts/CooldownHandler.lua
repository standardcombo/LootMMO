local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local DEFAULT_COOLDOWN = script:GetCustomProperty('DefaultCooldown')
local MODIFIABLES = require(script:GetCustomProperty('Modifiables'))

local startTime = 0
local endTime = 0

function CoolDown()
    if not ROOT.owner == Game.GetLocalPlayer() then
        return
    end
    startTime = time()
    endTime = startTime + (ROOT.clientUserData.calculateModifier()[MODIFIABLES.Cooldown.name] or DEFAULT_COOLDOWN)
    while ABILITY:GetCurrentPhase() == AbilityPhase.COOLDOWN do
        Task.Wait()
        if time() > endTime then
            ABILITY:AdvancePhase()
        end
    end
end

ABILITY.cooldownEvent:Connect(CoolDown)
