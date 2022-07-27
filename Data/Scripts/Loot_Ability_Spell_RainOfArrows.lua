local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local function COMBAT()
    return require(script:GetCustomProperty('Combat_Connector'))
end

properties = {
    description = script:GetCustomProperty('Description'),
    icon = script:GetCustomProperty('Icon')
}

modifiers = {
    [MODIFIERS.Damage.name] = setmetatable({}, {__index = MODIFIERS.Damage}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Radius.name] = setmetatable({}, {__index = MODIFIERS.Radius})
}

modifiers[MODIFIERS.Damage.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Radius.name].calculation = function(self, stats)
    return 2
end
local placementTemplate = script:GetCustomProperty('HunterOrcRainOfArrowsPlacementBasic')

function Execute(self, stats)
    local mod = self:CalculateStats(stats)

    local SpecialAbility = self:GetCurrentAbility()
    local targetData = SpecialAbility:GetTargetData()
    local position = targetData:GetHitPosition()
    local v = targetData:GetAimPosition()
    local rotation = Rotation.New(v.x, v.y, v.z)

    local radius = mod[MODIFIERS.Radius.name]
    local vfxScale = Vector3.New(CoreMath.Round(radius / 650, 3))

    World.SpawnAsset(placementTemplate, {position = position, rotation = rotation, scale = vfxScale})

    Task.Wait(0.25)
    if
        not SpecialAbility or not Object.IsValid(SpecialAbility) or not SpecialAbility.owner or
            not Object.IsValid(SpecialAbility.owner)
     then
        return
    end

    local nearbyEnemies =
        Game.FindPlayersInCylinder(position, radius, {ignoreTeams = SpecialAbility.owner.team, ignoreDead = true})

    for _, enemy in pairs(nearbyEnemies) do
        local dmg = Damage.New()
        local player = self.owner
        dmg.amount = mod[MODIFIERS.Damage.name]
        dmg.reason = DamageReason.COMBAT
        dmg.sourcePlayer = self.owner
        dmg.sourceAbility = SpecialAbility

        local attackData = {
            object = enemy,
            damage = dmg,
            source = dmg.sourcePlayer,
            position = nil,
            rotation = nil,
            tags = {id = 'Hunter_Q'}
        }
        COMBAT().ApplyDamage(attackData)
    end
end
