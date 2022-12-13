local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
if not ABILITY then
    warn('No Ability Added')
    return
end
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local DEFAULT_COOLDOWN = script:GetCustomProperty('DefaultCooldown') 
local LOCAL_PLAYER = Game.GetLocalPlayer()

local startTime = 0
local endTime = 0

function CoolDown()
    if not (ROOT.owner == LOCAL_PLAYER or ABILITY.owner == LOCAL_PLAYER) then
        return
    end
    startTime = time()
    endTime = startTime + (ROOT.clientUserData.calculateModifier()['Cooldown'] or DEFAULT_COOLDOWN)
    while ABILITY:GetCurrentPhase() == AbilityPhase.COOLDOWN do
        Task.Wait()
        if not Object.IsValid(ABILITY) then
            return
        end
        if time() > endTime and ABILITY:GetCurrentPhase() ~= AbilityPhase.READY then
            ABILITY:AdvancePhase()
        end
    end
end

ABILITY.cooldownEvent:Connect(CoolDown)
