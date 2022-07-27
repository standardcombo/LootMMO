local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
properties = {
    description = script:GetCustomProperty('Description'),
    icon = script:GetCustomProperty('Icon')
}

modifiers = {
    [MODIFIERS.Radius.name] = setmetatable({}, {__index = MODIFIERS.Radius}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Heal.name] = setmetatable({}, {__index = MODIFIERS.Heal})
}
modifiers[MODIFIERS.Radius.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(self, stats)
    return 6 - stats.level / 4
end
modifiers[MODIFIERS.Heal.name].calculation = function(self, stats)
    return 2
end



local activateVFX = script:GetCustomProperty('HealerOrcDivineLightActiveBasic')
local ImpulseAmount = 14000

function AddImpulseToPlayer(self, player)
    local directionVector = player:GetWorldPosition() - self.owner:GetWorldPosition()
    directionVector = directionVector / directionVector.size
    directionVector.z = 0.5
    local impulseVector = directionVector * ImpulseAmount

    player:ResetVelocity()
    player:AddImpulse(impulseVector)
end

function Execute(self, stats)
    if Environment.IsClient() then
        return
    end

    if self:GetCurrentPhase() == AbilityPhase.READY then
        return
    end
    local mod = self:CalculateStats(stats)
    local newObject = World.SpawnAsset(activateVFX, {position = self.owner:GetWorldPosition(), networkContext  = NetworkContextType.NETWORKED})

    local StunRadius = mod[MODIFIERS.Radius.name]
    local nearbyEnemies =
        Game.FindPlayersInCylinder(self.owner:GetWorldPosition(), StunRadius, {ignoreTeams = self.owner.team})

    ImpulseAmount = ImpulseAmount

    warn('Add Status effect blind and speed')
    local statusEffects = {}
    local status = statusEffects.BLIND
    local speedStatus = statusEffects.SPEED
    local healAmmount = mod[MODIFIERS.Heal.name]

    self.owner.hitPoints = CoreMath.Clamp(self.owner.hitPoints + healAmmount, self.owner.maxHitPoints)

    for _, enemy in pairs(nearbyEnemies) do
        AddImpulseToPlayer(self, enemy)
    end
end
