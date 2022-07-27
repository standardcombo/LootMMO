local WARRIOR_ORC_ROCK_STRIKE_PROJECTILE_BASIC = script:GetCustomProperty('WarriorOrcRockStrikeProjectileBasic')
local function COMBAT()
    return require(script:GetCustomProperty('Combat_Connector'))
end
local MODIFIERS = require(script:GetCustomProperty('Modifiers'))

properties = {
    description = script:GetCustomProperty('Description'),
    icon = script:GetCustomProperty('Icon')
}

modifiers = {
    [MODIFIERS.Damage.name] = setmetatable({}, {__index = MODIFIERS.Damage}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Radius.name] = setmetatable({}, {__index = MODIFIERS.Radius})
}

local DEFAULT_ProjectileSpeed = 4000
modifiers[MODIFIERS.Damage.name].calculation = function(self, stats)
    return stats.level * 10 + 100
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(self, stats)
    return 100 - stats.level * 10
end
modifiers[MODIFIERS.Radius.name].calculation = function(self, stats)
    return 300 * stats.level
end

if Environment.IsClient() then
    return
end

function HitObject(self, other, stats)
    if not other:IsA('Player') or COMBAT().IsDead(other) then
        return
    end

    local owner = self.owner
    local currentAbility = self:GetCurrentAbility()
    if not Object.IsValid(self.owner) or other == self.owner then
        return
    end

    local otherTeam = COMBAT().GetTeam(other)
    if not Object.IsValid(self.owner) then
        return
    end
    if otherTeam and Teams.AreTeamsFriendly(otherTeam, owner.team) then
        return
    end

    local dmg = Damage.New()
    dmg.amount = stats[MODIFIERS.Damage.name]
    dmg.reason = DamageReason.COMBAT
    dmg.sourcePlayer = owner
    dmg.sourceAbility = currentAbility

    local attackData = {
        object = other,
        damage = dmg,
        source = owner,
        position = nil,
        rotation = nil,
        tags = {id = 'Warrior_Q'}
    }
    COMBAT().ApplyDamage(attackData)

    if not self.CurrentProjectile or not Object.IsValid(self.CurrentProjectile) then
        return
    end

    local directionVector = self.CurrentProjectile:GetWorldRotation() * Vector3.FORWARD
    directionVector = -directionVector
    directionVector.z = 1
    local impulseVector = directionVector * 1000
    other:AddImpulse(impulseVector)
end
function Cast(self)
    if Environment.IsServer() then
        if not self.owner.isGrounded then
            self.currentAbility:Interrupt()
        end
    end
end
function Execute(self, stats)
    local mods = self:CalculateStats(stats)
    local currentAbility = self:GetCurrentAbility()
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
    self.ProjectileVelocity = VelocityVector

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

    local ProjectileRange = mods[MODIFIERS.Radius.name]
    local MoveDuration = CoreMath.Round(ProjectileRange / ProjectileSpeed, 3)
    local LifeSpan = MoveDuration + 5

    local DamageTrigger = RockProjectile:GetCustomProperty('DamageTrigger'):WaitForObject()

    for _, other in ipairs(DamageTrigger:GetOverlappingObjects()) do
        if COMBAT().IsValidObject(other) then
            HitObject(self, other)
        end
    end

    local OverlapEvent =
        DamageTrigger.beginOverlapEvent:Connect(
        function()
        end
    )
    local ViewRotation = self.owner:GetViewWorldRotation()
    ViewRotation.x = 0
    ViewRotation.y = 0
    RockProjectile:SetWorldRotation(ViewRotation)
    RockProjectile.lifeSpan = LifeSpan
    RockProjectile:MoveContinuous(VelocityVector)
    self.CurrentProjectile = RockProjectile

    Task.Spawn(
        function()
            self.CurrentProjectile = nil
            OverlapEvent:Disconnect()
            RockProjectile:StopMove()
        end,
        MoveDuration
    )
end
function Update(self)
    if self.CurrentProjectile and Object.IsValid(self.CurrentProjectile) then
        local rayStart = self.CurrentProjectile:GetWorldPosition()
        local rayEnd = Vector3.New(rayStart.x, rayStart.y, rayStart.z - 5000)
        local hitResult = World.Raycast(rayStart, rayEnd, {ignorePlayers = true})
        if not hitResult then
            return
        end

        local impactPosition = hitResult:GetImpactPosition()
        local Zdiff = rayStart.z - impactPosition.z
        if Zdiff > 205 or Zdiff < 195 then
            local targetPosition = Vector3.New(rayStart.x, rayStart.y, impactPosition.z + 200)
            self.CurrentProjectile:MoveTo(targetPosition, 0)
            self.CurrentProjectile:MoveContinuous(self.ProjectileVelocity)
        end
    end
end
