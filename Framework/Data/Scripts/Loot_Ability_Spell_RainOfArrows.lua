local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()

local function COMBAT()
    return require(script:GetCustomProperty('Combat_Connector'))
end
local placementTemplate = script:GetCustomProperty('HunterOrcRainOfArrowsPlacementBasic')

function Execute()
    local SpecialAbility = ABILITY
    local targetData = SpecialAbility:GetTargetData()
    local position = targetData:GetHitPosition()
    local v = targetData:GetAimPosition()
    local rotation = Rotation.New(v.x, v.y, v.z)

    local radius = ROOT.serverUserData.CalculateModifier('Radius')
    local vfxScale = Vector3.New(CoreMath.Round(radius / 650, 3))

    World.SpawnAsset(
        placementTemplate,
        {position = position, scale = vfxScale, networkContext = NetworkContextType.NETWORKED}
    )

    Task.Wait(0.25)
    if
        not SpecialAbility or not Object.IsValid(SpecialAbility) or not SpecialAbility.owner or
            not Object.IsValid(SpecialAbility.owner)
     then
        return
    end

    local nearbyEnemies =
        COMBAT().FindInSphere(position, radius, {ignoreTeams = SpecialAbility.owner.team, ignoreDead = true})

    local dmgMod = ROOT.serverUserData.CalculateModifier('Damage')
    for _, enemy in pairs(nearbyEnemies) do 
        local dmg = Damage.New()
        local player = ABILITY.owner
        dmg.amount = dmgMod[1]
        dmg.reason = DamageReason.COMBAT
        dmg.sourcePlayer = player
        dmg.sourceAbility = SpecialAbility
        
        local IsCrit = dmgMod[2]
        local attackData = {
            object = enemy,
            damage = dmg,
            source = dmg.sourcePlayer,
            position = nil,
            rotation = nil,
            tags = {id = 'Hunter_Q', Critical = IsCrit}
        }
        COMBAT().ApplyDamage(attackData)
    end
end
ABILITY.executeEvent:Connect(Execute)
