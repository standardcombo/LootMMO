local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local DAMAGE_TRIGGER = script:GetCustomProperty('DamageTrigger'):WaitForObject()
while not ROOT:GetCustomProperty('ability'):WaitForObject() do
    Task.Wait()
end
local ABILITY = ROOT:GetCustomProperty('ability'):WaitForObject()
local DAMAGE = ROOT:GetCustomProperty('damage')
local HEAL = ROOT:GetCustomProperty('heal')

local function COMBAT()
    return require(script:GetCustomProperty('Combat_Connector'))
end

function Overlap(thisTrigger, other)
    if not Object.IsValid(ABILITY) or not Object.IsValid(ABILITY.owner) or other == ABILITY.owner then
        return
    end
    if COMBAT().IsDead(other) then
        return
    end
    local otherTeam = COMBAT().GetTeam(other)
    local dmg = Damage.New()
    dmg.amount = DAMAGE
    if otherTeam and Teams.AreTeamsFriendly(otherTeam, ABILITY.owner.team) then
        dmg.amount = -HEAL
    end
    dmg.reason = DamageReason.COMBAT
    dmg.sourcePlayer = ABILITY.owner
    dmg.sourceAbility = ABILITY

    local attackData = {
        object = other,
        damage = dmg,
        source = ABILITY.owner,
        position = nil,
        rotation = nil,
        tags = {id = 'Healer_Q'}
    }
    COMBAT().ApplyDamage(attackData)
end
DAMAGE_TRIGGER.beginOverlapEvent:Connect(Overlap)
