 
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local ROOT = script:GetCustomProperty('Root'):WaitForObject()

local function COMBAT()
    return require(script:GetCustomProperty('Combat_Connector'))
end

local projectileVFX = script:GetCustomProperty('AssassinOrcShurikenProjectileBasic')
local impactVFX = script:GetCustomProperty('ShurikenBasicImpact')
local NoImpactVFX = script:GetCustomProperty('NoImpactVFX')
local attackRange = 2000
local playerImpact = script:GetCustomProperty('ShurikenPlayerImpact')
local rotationOffset = 7
function OnProjectileImpacted(projectile, other, hitResult)
    local mods = ROOT.serverUserData.calculateModifier()
    local SpecialAbility = ABILITY
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
        dmg.amount = mods ["Damage"]
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
        World.SpawnAsset(
            impactVFX,
            {position = projectile:GetWorldPosition(), networkContext = NetworkContextType.NETWORKED}
        )
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

function Execute()
    if not ABILITY.owner then
        return
    end
    if ABILITY:GetCurrentPhase() == AbilityPhase.READY then
        return
    end
    local thisAbility = ABILITY
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

    local startPosition = ABILITY.owner:GetWorldPosition() + Vector3.New(0, 0, 100)
    local forwardVector = targetPosition - startPosition
    forwardVector = forwardVector:GetNormalized()
    local aimRotation = Rotation.New(forwardVector, Vector3.UP)
    startPosition = startPosition + (forwardVector * 30)

    local leftRotation = aimRotation - Rotation.New(0, 0, rotationOffset)
    local leftVector = leftRotation * Vector3.FORWARD
    local rightRotation = aimRotation + Rotation.New(0, 0, rotationOffset)
    local rightVector = rightRotation * Vector3.FORWARD

    local directionVectors = {leftVector, forwardVector, rightVector}
    local mods = ROOT.serverUserData.calculateModifier()
    for i = 1, 3 do
        local throwingStar = Projectile.Spawn(projectileVFX, startPosition, directionVectors[i])
        throwingStar.owner = ABILITY.owner
        throwingStar.sourceAbility = ABILITY
        throwingStar.speed = 7000
        throwingStar.gravityScale = 0
        throwingStar.capsuleLength = 80
        throwingStar.capsuleRadius = 50
        throwingStar.shouldDieOnImpact = true
        throwingStar.impactEvent:Connect(OnProjectileImpacted)
        throwingStar.lifeSpanEndedEvent:Connect(OnLifespanEnded)
        throwingStar.lifeSpan = attackRange / throwingStar.speed
    end
end
ABILITY.executeEvent:Connect(Execute)
