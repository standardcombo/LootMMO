local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
properties = {
    description = script:GetCustomProperty('Description'),
    icon = script:GetCustomProperty('Icon')
}

modifiers = {
    [MODIFIERS.Radius.name] = setmetatable({}, {__index = MODIFIERS.Radius}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Bleed.name] = setmetatable({}, {__index = MODIFIERS.Bleed}),
    [MODIFIERS.Slow.name] = setmetatable({}, {__index = MODIFIERS.Slow})
}

modifiers[MODIFIERS.Radius.name].calculation = function(self, stats)
    return 200
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(self, stats)
    return 10 - stats.level
end
modifiers[MODIFIERS.Bleed.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Slow.name].calculation = function(self, stats)
    return 2
end

local ImpulsAmount = 140000
local lifeSpan = 5
local SPAWN_VFX = script:GetCustomProperty('Spawn_VFX')

function AddImpulse(player)
    local impulseVector

    if player then
        local forwardVector = player:GetWorldRotation() * Vector3.FORWARD
        local oppositeVector = -forwardVector
        oppositeVector.z = 1
        impulseVector = oppositeVector * ImpulsAmount
    end
    player:ResetVelocity()
    player:AddImpulse(impulseVector)
end

function Cast(thisAbility) 
    if not thisAbility.owner.isGrounded then
        thisAbility:Interrupt()
    end
end

function Execute(self, stats)
    local mod = self:CalculateStats(stats)
    local targetPosition = self.owner:GetWorldPosition()
    local targetRotation = Rotation.ZERO

    AddImpulse(self.owner)

    local hitResult = World.Raycast(targetPosition, targetPosition - Vector3.New(0, 0, 5000), {ignorePlayers = true})
    if hitResult then
        targetPosition = hitResult:GetImpactPosition()
        targetRotation = Rotation.New(Vector3.FORWARD, hitResult:GetImpactNormal())
    else
        targetPosition.z = targetPosition.z - 100
    end

    local ImpulseRadius = 200
    local vfxScale = Vector3.New(CoreMath.Round(ImpulseRadius / 50, 3))

    local trapTemplate = SPAWN_VFX
    local newTrap =
        World.SpawnAsset(
        trapTemplate,
        {
            position = targetPosition,
            rotation = targetRotation,
            scale = vfxScale,
            networkContext = NetworkContextType.NETWORKED
        }
    )
    newTrap.lifeSpan = lifeSpan
    newTrap:SetCustomProperty('lifeSpan', newTrap.lifeSpan)

    local nearbyEnemies =
        Game.FindPlayersInCylinder(self.owner:GetWorldPosition(), ImpulseRadius, {ignoreTeams = self.owner.team})
    local bleedStatus = nil
    local slowStatus = mil

    for _, enemy in pairs(nearbyEnemies) do
        warn('apply bleed')
        warn('apply slow')
    end
end
