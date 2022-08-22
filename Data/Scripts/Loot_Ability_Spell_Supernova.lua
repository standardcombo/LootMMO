local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local function COMBAT()
    return require(script:GetCustomProperty('Combat_Connector'))
end

local scaleDuration = 3
local chargeUpVFX = script:GetCustomProperty('HealerOrcSupernovaChargeBasic')
local endingVFX = script:GetCustomProperty('HealerOrcSupernovaEndingBasic')

function Execute()
    local mods = ROOT.serverUserData.calculateModifier()
    local player = ABILITY.owner

    if not Object.IsValid(player) then
        return
    end

    local thisAbility = ABILITY
    local targetData = thisAbility:GetTargetData()
    local position = targetData:GetHitPosition()

    local CurrentChargeUp =
        World.SpawnAsset(chargeUpVFX, {position = position, networkContext = NetworkContextType.NETWORKED})
    local EffectRadius = mods[MODIFIERS.Radius.name]
    local InnerSphere = CurrentChargeUp:GetCustomProperty('InnerSphere'):WaitForObject()
    local OuterSphere = CurrentChargeUp:GetCustomProperty('OuterSphere'):WaitForObject()
    local Beam = CurrentChargeUp:GetCustomProperty('Beam'):WaitForObject()
    local scale = Vector3.New(CoreMath.Round(EffectRadius / 50, 3))

    OuterSphere:SetWorldScale(scale)
    InnerSphere:ScaleTo(scale, scaleDuration)
    Beam:SetSmartProperty('Teleport Duration', scaleDuration)
    Beam:Play()

    Task.Spawn(
        function()
            SupernovaEnding(CurrentChargeUp, EffectRadius, mods)
        end,
        scaleDuration
    )
end

function SupernovaEnding(CurrentChargeUp, EffectRadius, mods)
    local mod = mods
    local dmgPosition

    if Object.IsValid(CurrentChargeUp) then
        dmgPosition = CurrentChargeUp:GetWorldPosition()
        World.SpawnAsset(endingVFX, {position = dmgPosition, networkContext = NetworkContextType.NETWORKED})
        CurrentChargeUp:Destroy()
    else
        return
    end
    local SpecialAbility = ABILITY

    if not SpecialAbility.owner or not Object.IsValid(SpecialAbility.owner) then
        return
    end

    local playersInRange = Game.FindPlayersInCylinder(dmgPosition, EffectRadius, {ignoreDead = true})
    for _, otherPlayer in ipairs(playersInRange) do
        if otherPlayer.team == SpecialAbility.owner.team then
            local heal = -mod[MODIFIERS.Heal.name]
            local dmg = Damage.New()
            dmg.amount = heal
            dmg.sourcePlayer = SpecialAbility.owner
            dmg.sourceAbility = SpecialAbility
            local attackData = {
                object = otherPlayer,
                damage = dmg,
                source = SpecialAbility.owner,
                position = nil,
                rotation = nil,
                tags = {id = 'Healer_T'}
            }
            -- Heal
            COMBAT().ApplyDamage(attackData)
        else
            local dmg = Damage.New()
            dmg.amount = mod[MODIFIERS.Damage.name]
            dmg.sourcePlayer = SpecialAbility.owner
            dmg.sourceAbility = SpecialAbility
            local attackData = {
                object = otherPlayer,
                damage = dmg,
                source = SpecialAbility.owner,
                position = nil,
                rotation = nil,
                tags = {id = 'Healer_T'}
            }
            COMBAT().ApplyDamage(attackData)
            -- Stun
            warn('Add stun')
        end
    end
end

ABILITY.executeEvent:Connect(Execute)
