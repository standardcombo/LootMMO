local MODIFIERS = require(script:GetCustomProperty('Modifiers'))

properties = {
    description = script:GetCustomProperty('Description'),
    icon = script:GetCustomProperty('Icon')
}

modifiers = {
    [MODIFIERS.Damage.name] = setmetatable({}, {__index = MODIFIERS.Damage}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Speed.name] = setmetatable({}, {__index = MODIFIERS.Speed}),
    [MODIFIERS.Range.name] = setmetatable({}, {__index = MODIFIERS.Range}),
    [MODIFIERS.Heal.name] = setmetatable({}, {__index = MODIFIERS.Speed})
}
modifiers[MODIFIERS.Damage.name].calculation = function(self, stats)
    return stats.level * 50
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(self, stats)
    return 10 - stats.level
end
modifiers[MODIFIERS.Speed.name].calculation = function(self, stats)
    return 600
end
modifiers[MODIFIERS.Range.name].calculation = function(self, stats)
    return 400
end
modifiers[MODIFIERS.Heal.name].calculation = function(self, stats)
    local level = stats.level or 0
    return level * 50
end
local projectileVFX = script:GetCustomProperty('ProjectileVFX')

if Environment.IsClient() then
    return
end
function Execute(self, stats)
    local player = self.owner
    local SpecialAbility = self:GetCurrentAbility()
    local mod = self:CalculateStats(stats)
    if SpecialAbility:GetCurrentPhase() == AbilityPhase.READY then
        return
    end

    local SPEED = mod[MODIFIERS.Speed.name]
    local RANGE = mod[MODIFIERS.Range.name]
    local MOVE_DURATION = RANGE / SPEED
    local LIFE_SPAN = MOVE_DURATION + 5

    -- Get the velocity vecotr based on the player's forward vector
    local LookRotation = player:GetLookWorldRotation()
    local LookQuaternion = Quaternion.New(LookRotation)
    local ForwardVector = LookQuaternion:GetForwardVector() * Vector3.New(1, 1, 0)
    local VelocityVector = ForwardVector * SPEED

    local WorldPosition = player:GetWorldPosition() + (ForwardVector * 200)

    local newProjectile = World.SpawnAsset(projectileVFX, {position = WorldPosition})
    newProjectile:SetCustomProperty('damage', mod[MODIFIERS.Damage.name])
    newProjectile:SetCustomProperty('heal', mod[MODIFIERS.Heal.name])
    newProjectile:SetCustomProperty('ability', SpecialAbility)

    local ViewRotation = SpecialAbility.owner:GetViewWorldRotation()
    ViewRotation.x = 0
    ViewRotation.y = 0
    newProjectile:SetWorldRotation(ViewRotation)
    newProjectile:MoveContinuous(VelocityVector)
    newProjectile.lifeSpan = LIFE_SPAN
end
