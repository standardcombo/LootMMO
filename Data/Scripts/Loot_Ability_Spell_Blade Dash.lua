local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ASSASSIN_ORC_BLADE_DASH_PLACEMENT_BASIC = script:GetCustomProperty('AssassinOrcBladeDashPlacementBasic')
local ASSASSIN_ORC_BLADE_DASH_ENDING_FXBASIC = script:GetCustomProperty('AssassinOrcBladeDashEndingFXBasic')

function COMBAT()
    return require(script:GetCustomProperty('Combat_Connector'))
end

local placement = ASSASSIN_ORC_BLADE_DASH_PLACEMENT_BASIC
local ending = ASSASSIN_ORC_BLADE_DASH_ENDING_FXBASIC

function Execute()
    local mods = ROOT.serverUserData.calculateModifier()
    local targetData = ABILITY:GetTargetData()
    local position = targetData:GetHitPosition()
    local v = targetData:GetAimPosition()
    local rotation = Rotation.New(v.x, v.y, v.z)
    World.SpawnAsset(
        placement,
        {position = position, rotation = rotation, networkContext = NetworkContextType.NETWORKED}
    )
    Task.Wait(.4)

    if not Object.IsValid(ABILITY) or not ABILITY.owner or not Object.IsValid(ABILITY.owner) then
        return
    end

    if not ABILITY.owner.isFlying then -- Allows for a quick Q-T combo without teleporting
        ABILITY.owner:SetWorldPosition(position + Vector3.New(0, 0, 180))
        ABILITY.owner:ResetVelocity()
    end

    World.SpawnAsset(ending, {position = position, rotation = rotation, networkContext = NetworkContextType.NETWORKED})
    local radius = mods['Range']
    local enemiesInRange =
        COMBAT().FindInSphere(
        ABILITY.owner:GetWorldPosition(),
        radius,
        {ignoreDead = true, ignoreTeams = ABILITY.owner.team}
    )

    local dmgMod = mods['DamageRange']
    local dmg = Damage.New()
    local dmgAmount = math.random(dmgMod.min, dmgMod.max)
    dmg.amount = dmgAmount
    dmg.reason = DamageReason.COMBAT
    dmg.sourcePlayer = ABILITY.owner
    dmg.sourceAbility = ABILITY

    local selfHeal = Damage.New()
    selfHeal.amount = -dmgAmount
    selfHeal.reason = DamageReason.COMBAT
    selfHeal.sourcePlayer = ABILITY.owner
    selfHeal.sourceAbility = ABILITY

    local healData = {
        object = ABILITY.owner,
        damage = selfHeal,
        source = ABILITY.owner,
        position = nil,
        rotation = nil,
        tags = {id = 'Assassin_Q'}
    }

    for _, enemy in ipairs(enemiesInRange) do
        local attackData = {
            object = enemy,
            damage = dmg,
            source = ABILITY.owner,
            position = nil,
            rotation = nil,
            tags = {id = 'Assassin_Q'}
        }
        COMBAT().ApplyDamage(attackData) -- damage enemy
        COMBAT().ApplyDamage(healData) -- heal caster
    end
end

ABILITY.executeEvent:Connect(Execute)
