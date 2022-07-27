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
    [MODIFIERS.Bleed.name] = setmetatable({}, {__index = MODIFIERS.Bleed}),
    [MODIFIERS.Lifesteal.name] = setmetatable({}, {__index = MODIFIERS.Lifesteal})
}
modifiers[MODIFIERS.Damage.name].calculation = function(self, stats)
    return stats.level * 100
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(self, stats)
    return 10 - stats.level
end
modifiers[MODIFIERS.Bleed.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Lifesteal.name].calculation = function(self, stats)
    return 2
end

local projectileVFX = script:GetCustomProperty('AssassinOrcShurikenProjectileBasic')
local impactVFX = script:GetCustomProperty('ShurikenBasicImpact')
local NoImpactVFX = script:GetCustomProperty('NoImpactVFX')
local attackRange = 2000
local playerImpact = script:GetCustomProperty('ShurikenPlayerImpact')
local rotationOffset = 7
function OnProjectileImpacted(projectile, other, hitResult, self, mods)
    local SpecialAbility = self:GetCurrentAbility()
    if
        other and Object.IsValid(SpecialAbility) and Object.IsValid(SpecialAbility.owner) and
            COMBAT().IsValidObject(other) and
            other.team ~= SpecialAbility.team
     then
        --Play ImpactFX
        World.SpawnAsset(
            playerImpact,
            {position = projectile:GetWorldPosition(), networkContext = NetworkContextType.NETWORKED}
        )

        local dmg = Damage.New()
        dmg.amount = mods[MODIFIERS.Damage.name]
        dmg:SetHitResult(hitResult)
        dmg.reason = DamageReason.COMBAT
        dmg.sourcePlayer = SpecialAbility.owner
        dmg.sourceAbility = SpecialAbility

        warn('add LifeSteal')
        warn('Add SlowStat')
        warn('Add Poison')

        local attackData = {
            object = other,
            damage = dmg,
            source = SpecialAbility.owner,
            position = nil,
            rotation = nil,
            tags = {id = 'Assassin_R'}
        }
        COMBAT().ApplyDamage(attackData)
    else
        World.SpawnAsset(impactVFX, {position = projectile:GetWorldPosition(), networkContext = NetworkContextType.NETWORKED })
    end
end

function OnLifespanEnded(projectile)
    World.SpawnAsset(
        NoImpactVFX,
        {
            position = projectile:GetWorldPosition(),
            scale = Vector3.New(0.3),
            networkContext = NetworkContextType.NETWORKED
        }
    )
end

function Execute(self, stats)
    if not self.owner then
        return
    end
    if self:GetCurrentPhase() == AbilityPhase.READY then
        return
    end
    local thisAbility = self:GetCurrentAbility()
    local playerViewRotation = thisAbility.owner:GetViewWorldRotation()
    local playerViewPosition = thisAbility.owner:GetViewWorldPosition()
    local playerViewDirection = playerViewRotation * Vector3.FORWARD
    local playerPosition = thisAbility.owner:GetWorldPosition()
    local AP = playerPosition - playerViewPosition
    local AB = playerViewDirection
    playerViewPosition = playerViewPosition + (AP .. AB) / (AB .. AB) * AB

    local targetPosition = playerViewPosition + (playerViewDirection * attackRange)
    local hr = World.Raycast(playerViewPosition, targetPosition)
    if hr then
        targetPosition = hr:GetImpactPosition()
    end

    local startPosition = self.owner:GetWorldPosition() + Vector3.New(0, 0, 100)
    local forwardVector = targetPosition - startPosition
    forwardVector = forwardVector:GetNormalized()
    local aimRotation = Rotation.New(forwardVector, Vector3.UP)
    startPosition = startPosition + (forwardVector * 30)

    local leftRotation = aimRotation - Rotation.New(0, 0, rotationOffset)
    local leftVector = leftRotation * Vector3.FORWARD
    local rightRotation = aimRotation + Rotation.New(0, 0, rotationOffset)
    local rightVector = rightRotation * Vector3.FORWARD

    local directionVectors = {leftVector, forwardVector, rightVector}
    local mods = self:CalculateStats(stats)
    for i = 1, 3 do
        local throwingStar = Projectile.Spawn(projectileVFX, startPosition, directionVectors[i])
        throwingStar.owner = self.owner
        throwingStar.sourceAbility = SpecialAbility
        throwingStar.speed = 7000
        throwingStar.gravityScale = 0
        throwingStar.capsuleLength = 80
        throwingStar.capsuleRadius = 50
        throwingStar.shouldDieOnImpact = true
        throwingStar.impactEvent:Connect(
            function(projectile, other, hitResult)
                OnProjectileImpacted(projectile, other, hitResult, self, mods)
            end
        )
        throwingStar.lifeSpanEndedEvent:Connect(OnLifespanEnded)
        throwingStar.lifeSpan = attackRange / throwingStar.speed
    end
end
