local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local THROW = script:GetCustomProperty('Throw'):WaitForObject()
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local PICKUP_VFX = script:GetCustomProperty('pickupVFX')
local THROW_VFX = script:GetCustomProperty('throwVFX')
local function COMBAT()
    return require(script:GetCustomProperty('Combat_Connector'))
end

local PickupObject = nil
local CurrentProjectile = nil
local ProjectileVelocity = Vector3.ZERO
local ProjectileRadius = 0
local lastScale = 1
local lastDamage = 0
local DefaultSpeed = 1200
local DefaultLifespan = 10

function OnPickupCast(thisAbility)
    if not thisAbility.owner.isGrounded then
        thisAbility:Interrupt()
    end
end

function OnPickupExecute(thisAbility)
    local mods = ROOT.serverUserData.calculateModifier()
    lastScale = mods[MODIFIERS.Radius.name]
    lastDamage = mods[MODIFIERS.Damage.name]
    if thisAbility:GetCurrentPhase() ~= AbilityPhase.EXECUTE then
        return
    end
    if CurrentProjectile and Object.IsValid(CurrentProjectile) then
        CurrentProjectile:Destroy()
    end

    local PickupTemplate = PICKUP_VFX
    PickupObject =
        World.SpawnAsset(
        PickupTemplate,
        {position = ABILITY.owner:GetWorldPosition(), networkContext = NetworkContextType.NETWORKED}
    )
    local newScale = Vector3.New(lastScale)
    PickupObject:SetWorldScale(newScale)
    PickupObject:AttachToPlayer(ABILITY.owner, 'right_prop')
end

function OnPickupCooldown()
    THROW:Activate()
end

function OnStunBeginOverlap(thisTrigger, other)
    if
        not Object.IsValid(other) or not Object.IsValid(ABILITY) or not ABILITY.owner or
            not Object.IsValid(ABILITY.owner) or
            not other:IsA('Player') or
            other == ABILITY.owner or
            Teams.AreTeamsFriendly(other.team, ABILITY.owner.team) or
            COMBAT().IsDead(other)
     then
        return
    end
    warn('ApplyStatusEffect')
end

function OnBoulderBeginOverlap(thisTrigger, other)
    if not Object.IsValid(ABILITY) or other == ABILITY.owner then
        return
    end

    if COMBAT().IsDead(other) then
        return
    end

    local otherTeam = COMBAT().GetTeam(other)
    if not Object.IsValid(ABILITY.owner) then
        return
    end
    if otherTeam and Teams.AreTeamsFriendly(otherTeam, ABILITY.owner.team) then
        return
    end

    if other and other:isA('Player') then
        Events.BroadcastToPlayer(other, 'Camera Shake', 2, 90, 5)
    end

    local dmg = Damage.New()
    dmg.amount = lastDamage
    dmg.reason = DamageReason.COMBAT
    dmg.sourcePlayer = ABILITY.owner
    dmg.sourceAbility = ABILITY

    local attackData = {
        object = other,
        damage = dmg,
        source = ABILITY.owner,
        position = nil,
        rotation = nil,
        tags = {id = 'Warrior_T'}
    }
    COMBAT().ApplyDamage(attackData)
end

function OnThrowExecute(thisAbility)
    if PickupObject and Object.IsValid(PickupObject) then
        PickupObject:Destroy()
    end

    if thisAbility:GetCurrentPhase() ~= AbilityPhase.EXECUTE then
        return
    end

    -- Get mod data
    local projectileScale = lastScale
    local projectileSpeed = DefaultSpeed
    local LifeSpan = DefaultLifespan

    local directionVector = ABILITY.owner:GetWorldRotation() * Vector3.FORWARD
    ProjectileVelocity = directionVector * projectileSpeed
    ProjectileRadius = (projectileScale * 50) - 50

    local positionOffset = directionVector * ProjectileRadius
    local spawnPosition = ABILITY.owner:GetWorldPosition() + positionOffset

    -- Spawn the template
    local projectileTemplate = THROW_VFX
    CurrentProjectile =
        World.SpawnAsset(
        projectileTemplate,
        {
            position = spawnPosition,
            rotation = ABILITY.owner:GetWorldRotation(),
            scale = Vector3.New(projectileScale),
            networkContext = NetworkContextType.NETWORKED
        }
    )

    local StunTrigger = CurrentProjectile:GetCustomProperty('StunTrigger'):WaitForObject()
    StunTrigger.beginOverlapEvent:Connect(OnStunBeginOverlap)

    local ProjectileTrigger = CurrentProjectile:GetCustomProperty('BoulderTrigger'):WaitForObject()
    ProjectileTrigger.beginOverlapEvent:Connect(OnBoulderBeginOverlap)

    local ProjectileCollision = CurrentProjectile:GetCustomProperty('Collision'):WaitForObject()
    ProjectileCollision.team = ROOT.owner.team

    for _, player in ipairs(Game.FindPlayersInSphere(spawnPosition, ProjectileRadius, {ignoreTeams = ROOT.owner.team})) do
        OnStunBeginOverlap(StunTrigger, player)
        OnBoulderBeginOverlap(_, player)
    end

    CurrentProjectile:MoveContinuous(ProjectileVelocity)
    CurrentProjectile.lifeSpan = LifeSpan
end

function OnInterrupted(thisAbility)
    if Object.IsValid(PickupObject) then
        PickupObject:Destroy()
        PickupObject = nil
    end

    if CurrentProjectile and Object.IsValid(CurrentProjectile) then
        CurrentProjectile:Destroy()
        CurrentProjectile = nil
    end

    if thisAbility == ABILITY then
        THROW:Interrupt()
    end
end

function OnUnequip(equipment, player)
    if CurrentProjectile and Object.IsValid(CurrentProjectile) then
        CurrentProjectile:Destroy()
        CurrentProjectile = nil
    end
end

function Tick(dTime)
    if CurrentProjectile and Object.IsValid(CurrentProjectile) then
        local rayStart = CurrentProjectile:GetWorldPosition()
        local rayEnd = Vector3.New(rayStart.x, rayStart.y, rayStart.z - 3000)
        local hitResult = World.Raycast(rayStart, rayEnd, {ignorePlayers = true})
        --CoreDebug.DrawLine(rayStart, rayEnd, {duration=1})
        local targetPosition = rayStart
        if hitResult then
            local impactPosition = hitResult:GetImpactPosition()
            local Zdiff = rayStart.z - impactPosition.z
            if Zdiff > (ProjectileRadius + 10) then
                targetPosition.z = targetPosition.z - 20
            elseif Zdiff < (ProjectileRadius - 10) then
                targetPosition.z = targetPosition.z + 20
            end
        else
            targetPosition.z = targetPosition.z + (ProjectileRadius / 2)
        end

        CurrentProjectile:MoveTo(targetPosition, 0)
        CurrentProjectile:MoveContinuous(ProjectileVelocity)
    end
end

ROOT.unequippedEvent:Connect(OnUnequip)
ABILITY.interruptedEvent:Connect(OnInterrupted)
ABILITY.castEvent:Connect(OnPickupCast)
ABILITY.executeEvent:Connect(OnPickupExecute)
ABILITY.cooldownEvent:Connect(OnPickupCooldown)
THROW.executeEvent:Connect(OnThrowExecute)
