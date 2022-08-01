local TRIGGER = script:GetCustomProperty('Trigger'):WaitForObject()
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local function COMBAT()
    return require(script:GetCustomProperty('Combat_Connector'))
end

local ABILITY = ROOT:GetCustomProperty('ability'):WaitForObject()

while not ABILITY do
    ABILITY = ROOT:GetCustomProperty('ability'):WaitForObject()
    Task.Wait()
end

local DAMAGE = ROOT:GetCustomProperty('damage')

function Tick()
    if not Object.IsValid(ABILITY) or not Object.IsValid(ROOT) then
        return
    end

    for key, value in pairs(
        COMBAT().FindInSphere(
            TRIGGER:GetWorldPosition(),
            TRIGGER:GetWorldScale().z * 50,
            {ignoreDead = true, ignoreTeams = ABILITY.owner.team}
        )
    ) do
        local dmg = Damage.New()
        dmg.amount = DAMAGE * .25
        dmg.reason = DamageReason.COMBAT
        dmg.sourcePlayer = ABILITY.owner
        dmg.sourceAbility = ABILITY
        local attackData = {
            object = value,
            damage = dmg,
            source = dmg.sourcePlayer,
            position = nil,
            rotation = nil,
            tags = {id = 'Mage_Q'}
        }
        COMBAT().ApplyDamage(attackData)
    end
    Task.Wait(0.25)
end
