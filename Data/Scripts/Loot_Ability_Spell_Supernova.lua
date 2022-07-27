local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local function COMBAT()
    return require(script:GetCustomProperty('Combat_Connector'))
end

properties = {
    description = script:GetCustomProperty('Description'),
    icon = script:GetCustomProperty('Icon')
}

modifiers = {
    [MODIFIERS.Heal.name] = setmetatable({}, {__index = MODIFIERS.Heal}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Damage.name] = setmetatable({}, {__index = MODIFIERS.Damage}),
    [MODIFIERS.Stun.name] = setmetatable({}, {__index = MODIFIERS.Stun})
}
modifiers[MODIFIERS.Heal.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Damage.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Stun.name].calculation = function(self, stats)
    return 2
end

local radius = 2000
local scaleDuration = 3
local chargeUpVFX = script:GetCustomProperty('HealerOrcSupernovaChargeBasic')
local endingVFX = script:GetCustomProperty('HealerOrcSupernovaEndingBasic')

function Execute(self, stats)
    local player = self.owner

    if not Object.IsValid(player) then
        return
    end

    local thisAbility = self:GetCurrentAbility()
    local targetData = thisAbility:GetTargetData()
    local position = targetData:GetHitPosition()

    local CurrentChargeUp = World.SpawnAsset(chargeUpVFX, {position = position})
    local EffectRadius = radius
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
            SupernovaEnding(self, stats, CurrentChargeUp, EffectRadius)
        end,
        scaleDuration
    )
end

function SupernovaEnding(self, stats, CurrentChargeUp, EffectRadius)
    local mod = self:CalculateStats(stats)
    local dmgPosition

    if Object.IsValid(CurrentChargeUp) then
        dmgPosition = CurrentChargeUp:GetWorldPosition()
        World.SpawnAsset(endingVFX, {position = dmgPosition})
        CurrentChargeUp:Destroy()
    else
        return
    end
    local SpecialAbility = self:GetCurrentAbility()

    if not SpecialAbility.owner or not Object.IsValid(SpecialAbility.owner) then
        return
    end

    local playersInRange = Game.FindPlayersInCylinder(dmgPosition, EffectRadius, {ignoreDead = true})
    for _, otherPlayer in ipairs(playersInRange) do
        if otherPlayer.team == SpecialAbility.owner.team then
            local dmg = Damage.New()
            dmg.amount = mod[MODIFIERS.Heal.name]
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
