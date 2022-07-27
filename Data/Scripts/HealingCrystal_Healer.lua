local function COMBAT()
    return require(script:GetCustomProperty('Combat_Connector'))
end

local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local HealTrigger = script:GetCustomProperty('Trigger'):WaitForObject()
local Timer = 0
local delayCount = .5
local owner = nil
local SpecialAbility = nil

while not Object.IsValid(SpecialAbility) do
    SpecialAbility = ROOT:GetCustomProperty('Ability'):WaitForObject()
end

function Tick(dTime)
    if not Object.IsValid(SpecialAbility) then
        return
    end
    Timer = Timer - dTime

    local OverlappingObjects = HealTrigger:GetOverlappingObjects()
    for _, thisObject in pairs(OverlappingObjects) do
        if not Object.IsValid(SpecialAbility) or not SpecialAbility.owner or not Object.IsValid(SpecialAbility.owner) then
            break
        end

        if Object.IsValid(thisObject) and thisObject:IsA('Player') and not thisObject.isDead then
            local dmg = Damage.New()
            local HealAmount = Root:GetCustomProperty()
            if thisObject.team == SpecialAbility.owner.team then
                dmg.amount = -HealAmount
            else
                dmg.amount = HealAmount
            end
            dmg.reason = DamageReason.COMBAT
            dmg.sourcePlayer = owner
            dmg.sourceAbility = SpecialAbility

            local attackData = {
                object = thisObject,
                damage = dmg,
                source = dmg.sourcePlayer,
                position = nil,
                rotation = nil,
                tags = {id = 'Healer_E'}
            }

            if dmg.amount < 0 and thisObject.hitPoints < thisObject.maxHitPoints then
                COMBAT().ApplyDamage(attackData)
            elseif dmg.amount > 0 then
                COMBAT().ApplyDamage(attackData)
            end
        end
    end
    Timer = delayCount
end
