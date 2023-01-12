local WARRIOR_ORC_ROCK_STRIKE_PROJECTILE_BASIC = script:GetCustomProperty('WarriorOrcRockStrikeProjectileBasic')
local function COMBAT()
    return require(script:GetCustomProperty('Combat_Connector'))
end
 
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local API_SE = _G["StatusEffects.API"]
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local ProjectileVelocity = Vector3.ZERO
local mods = {}
local DEFAULT_ProjectileSpeed = 4000

function HitObject(other)
    if not COMBAT().IsDead(other) then
        local owner = ABILITY.owner
        local currentAbility = ABILITY
        if not Object.IsValid(owner) or other == owner then
            return
        end

        local otherTeam = COMBAT().GetTeam(other)
        if not Object.IsValid(owner) then
            return
        end
        if otherTeam and Teams.AreTeamsFriendly(otherTeam, owner.team) then
            return
        end
        local crit = mods ["Damage"][2]
        local dmg = Damage.New()
        dmg.amount = mods ["Damage"][1]
        dmg.reason = DamageReason.COMBAT
        dmg.sourcePlayer = owner
        dmg.sourceAbility = currentAbility

        local attackData = {
            object = other,
            damage = dmg,
            source = owner,
            position = nil,
            rotation = nil,
            tags = {id = 'Warrior_Q', Critical = crit}
        }
        COMBAT().ApplyDamage(attackData)
        Task.Spawn(function()
            if not COMBAT().IsDead(other) and Object.IsValid(other) and Object.IsValid(owner) then
                API_SE.ApplyStatusEffect(other, "Stun", {
                    source = ABILITY.owner,
                    duration = mods ["StunDuration"]
                })
            end
        end,0.1)
    end
end

function Cast()
    if Environment.IsServer() then
        if not ABILITY.owner.isGrounded then
            ABILITY:Interrupt()
        end
    end
end
function Execute()
    mods = ROOT.serverUserData.CalculateAllModifiers()
    local currentAbility = ABILITY
    if
        currentAbility:GetCurrentPhase() == AbilityPhase.READY or not currentAbility.owner or
            not Object.IsValid(currentAbility.owner)
     then
        return
    end

    local player = currentAbility.owner
    local ProjectileSpeed = DEFAULT_ProjectileSpeed

    -- Get the velocity vecotr based on the player's forward vector
    local PlayerRotation = player:GetWorldRotation()
    local LookQuaternion = Quaternion.New(PlayerRotation)
    local ForwardVector = LookQuaternion:GetForwardVector()
    ForwardVector.z = 0
    local VelocityVector = ForwardVector * ProjectileSpeed
    ProjectileVelocity = VelocityVector

    local spawnPosition
    local PlayerPosition = player:GetWorldPosition()
    local forwardRange = PlayerPosition + (ForwardVector * 200)
    local forwardHitResult = World.Raycast(PlayerPosition, forwardRange, {ignorePlayers = true})

    if forwardHitResult then
        spawnPosition = forwardHitResult:GetImpactPosition()
    else
        local downRange = forwardRange - Vector3.New(0, 0, 10000)
        local downHitResult = World.Raycast(forwardRange, downRange, {ignorePlayers = true})

        if downHitResult then
            spawnPosition = downHitResult:GetImpactPosition()
        else
            spawnPosition = player:GetWorldPosition() + (ForwardVector * 200)
        end
    end

    spawnPosition.z = spawnPosition.z + 200
    local RockProjectile =
        World.SpawnAsset(
        WARRIOR_ORC_ROCK_STRIKE_PROJECTILE_BASIC,
        {position = spawnPosition, networkContext = NetworkContextType.NETWORKED}
    )

    local ProjectileRange = mods['Radius']
    local MoveDuration = CoreMath.Round(ProjectileRange / ProjectileSpeed, 3)
    local LifeSpan = MoveDuration + 5

    local DamageTrigger = RockProjectile:GetCustomProperty('DamageTrigger'):WaitForObject()
    local newTriggerSize = mods['Radius']/100
    local newTriggerPos = mods['Radius']/2
    
    DamageTrigger:SetPosition(DamageTrigger:GetPosition() - Vector3.New(newTriggerPos,0,0))
    DamageTrigger:SetScale(DamageTrigger:GetScale() + Vector3.New(newTriggerSize,0,0))

    for _, other in ipairs(DamageTrigger:GetOverlappingObjects()) do
        if COMBAT().IsValidObject(other) then
            HitObject(other)
        end
    end

    local OverlapEvent =
        DamageTrigger.beginOverlapEvent:Connect(
        function()
        end
    )
    local ViewRotation = ABILITY.owner:GetViewWorldRotation()
    ViewRotation.x = 0
    ViewRotation.y = 0
    RockProjectile:SetWorldRotation(ViewRotation)
    RockProjectile.lifeSpan = LifeSpan
    RockProjectile:MoveContinuous(VelocityVector)
    CurrentProjectile = RockProjectile

    Task.Spawn(
        function()
            CurrentProjectile = nil
            OverlapEvent:Disconnect()
            RockProjectile:StopMove()
        end,
        MoveDuration
    )
end
function Tick()
    if CurrentProjectile and Object.IsValid(CurrentProjectile) then
        local rayStart = CurrentProjectile:GetWorldPosition()
        local rayEnd = Vector3.New(rayStart.x, rayStart.y, rayStart.z - 5000)
        local hitResult = World.Raycast(rayStart, rayEnd, {ignorePlayers = true})
        if not hitResult then
            return
        end

        local impactPosition = hitResult:GetImpactPosition()
        local Zdiff = rayStart.z - impactPosition.z
        if Zdiff > 205 or Zdiff < 195 then
            local targetPosition = Vector3.New(rayStart.x, rayStart.y, impactPosition.z + 200)
            CurrentProjectile:MoveTo(targetPosition, 0)
            CurrentProjectile:MoveContinuous(ProjectileVelocity)
        end
    end
end

ABILITY.executeEvent:Connect(Execute)
ABILITY.castEvent:Connect(Cast)
