local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
function COMBAT()
    return require(script:GetCustomProperty('Combat_Connector'))
end

properties = {
    description = script:GetCustomProperty('Description'),
    icon = script:GetCustomProperty('Icon')
}

modifiers = {
    [MODIFIERS.DamageRange.name] = setmetatable({}, {__index = MODIFIERS.DamageRange}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Range.name] = setmetatable({}, {__index = MODIFIERS.Range})
}
modifiers[MODIFIERS.DamageRange.name].calculation = function(self, stats)
    return {min = 2, max = 3}
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Range.name].calculation = function(self, stats)
    return 2
end

local placement = nil
local ending = nil

function Execute(self, stats)
    local mods = self:CalculateStats(stats)
    local targetData = self:GetCurrentAbility():GetTargetData()
    local position = targetData:GetHitPosition()
    local v = targetData:GetAimPosition()
    local rotation = Rotation.New(v.x, v.y, v.z)

    World.SpawnAsset(placement, {position = position, rotation = rotation})
    Task.Wait(.4)

    if not Object.IsValid(self:GetCurrentAbility()) or not self.owner or not Object.IsValid(self.owner) then
        return
    end

    if not self.owner.isFlying then -- Allows for a quick Q-T combo without teleporting
        self.owner:SetWorldPosition(position + Vector3.New(0, 0, 180))
        self.owner:ResetVelocity()
    end

    World.SpawnAsset(ending, {position = position, rotation = rotation})
    local radius = mods[MODIFIERS.Range.name]
    local enemiesInRange =
        Game.FindPlayersInCylinder(
        self.owner:GetWorldPosition(),
        radius,
        {ignoreDead = true, ignoreTeams = self.owner.team}
    )

    local dmgMod = mods[MODIFIERS.DamageRange.name]
    local dmg = Damage.New()
    dmg.amount = math.random(dmgMod.min, dmgMod.max)
    dmg.reason = DamageReason.COMBAT
    dmg.sourcePlayer = self.owner
    dmg.sourceAbility = self

    local selfHeal = Damage.New()
    selfHeal.amount = -dmg
    selfHeal.reason = DamageReason.COMBAT
    selfHeal.sourcePlayer = self.owner
    selfHeal.sourceAbility = self

    local healData = {
        object = self.owner,
        damage = selfHeal,
        source = self.owner,
        position = nil,
        rotation = nil,
        tags = {id = 'Assassin_Q'}
    }

    for _, enemy in ipairs(enemiesInRange) do
        local attackData = {
            object = enemy,
            damage = dmg,
            source = self.owner,
            position = nil,
            rotation = nil,
            tags = {id = 'Assassin_Q'}
        }
        COMBAT().ApplyDamage(attackData) -- damage enemy
        COMBAT().ApplyDamage(healData) -- heal caster
    end
end
