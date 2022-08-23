local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local COMBAT_CONNECTOR = require(script:GetCustomProperty("Combat_Connector"))

properties = {
    description = script:GetCustomProperty('Description'),
    icon = script:GetCustomProperty('Icon')
}

modifiers = {
    [MODIFIERS.DamageRange.name] = setmetatable({}, {__index = MODIFIERS.DamageRange}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Heal.name] = setmetatable({}, {__index = MODIFIERS.Heal})
}
modifiers[MODIFIERS.DamageRange.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Heal.name].calculation = function(self, stats)
    return 2
end



local startChargingTime = 0

local CHARGE_DELAY = 0.3
local CHARGE_DURATION = 1

function OnCastAbility(ability)
    startChargingTime = time()
end

function OnProjectileSpawned(weapon, projectile)
    local chargeTime = time() - startChargingTime

    local chargeAmount = CoreMath.Clamp((chargeTime - CHARGE_DELAY) / CHARGE_DURATION)
    local lastShotChargedAmount = chargeAmount

    if lastShotChargedAmount >= 1 then
		projectile.impactEvent:Connect(OnChargedProjectileImpacted)
    end
end

function OnChargedProjectileImpacted(projectile, other, hitResult)
    if not Object.IsValid(WEAPON) then return end
    if not Object.IsValid(SHOOT_ABILITY) then return end

	local sourcePlayer = WEAPON.owner
	local sourceAbility = SHOOT_ABILITY

    if Object.IsValid(other) then
        if other:IsA("Player") then
            local position = hitResult:GetImpactPosition()
            local bomb = META_AP().SpawnAsset(HEAL_EXPLOSION_TEMPLATE, {position = position})
            local trigger = bomb:GetCustomProperty("Trigger"):WaitForObject()

            HealAllPlayersInRadius(trigger)

            local spawnDirection = Vector3.New(math.random(-100, 100), math.random(-100, 100), 100):GetNormalized()

            -- Spawning healing projectile
            local healProjectile = Projectile.Spawn(HEALING_STAFF_RETURN_PROJECTILE, other:GetWorldPosition(), spawnDirection)
            healProjectile.speed = 200
            healProjectile:SetVelocity(Vector3.UP * healProjectile.speed)
            healProjectile.homingTarget = SHOOT_ABILITY.owner
            healProjectile.drag = 2
            healProjectile.homingAcceleration = 12000
            healProjectile.lifeSpan = 3
            healProjectile.owner = other
            healProjectile.capsuleRadius = 10
            healProjectile.gravityScale = 0
            healProjectile.capsuleLength = 30
            healProjectile.bouncesRemaining = 9999
            healProjectile.piercesRemaining = 9999
            healProjectile.maxSpeed = 2500
            healProjectile.shouldDieOnImpact = false

            healProjectile.impactEvent:Connect(HealProjectileOnImpact)
            healProjectile.lifeSpanEndedEvent:Connect(HealPlayerFromHealProjectile)
        end
    end
end

function HealProjectileOnImpact(projectile, other, hitresult)
    if not Object.IsValid(projectile) then return end
    if not Object.IsValid(other) then return end
    if not Object.IsValid(SHOOT_ABILITY) then return end
 
    if other:IsA("Player") and other == SHOOT_ABILITY.owner then
        projectile:Destroy()
        HealPlayerFromHealProjectile()
    end
end

function HealPlayerFromHealProjectile()
    if not Object.IsValid(SHOOT_ABILITY) or not SHOOT_ABILITY.owner or not Object.IsValid(SHOOT_ABILITY.owner) then
        return
    end
    local dmg = Damage.New()
    dmg.amount = -META_AP().GetAbilityMod(WEAPON.owner, META_AP().LMB, "mod2", 20, WEAPON.name .. ": Heal Amount")
    dmg.reason = DamageReason.COMBAT
    dmg.sourcePlayer = SHOOT_ABILITY.owner
    dmg.sourceAbility = SHOOT_ABILITY

    local attackData = {
        object = dmg.sourcePlayer,
        damage = dmg,
        source = dmg.sourcePlayer,
        position = nil,
        rotation = nil,
        tags = {id = "HealerStaff"}
    }

    if dmg.sourcePlayer.hitPoints < dmg.sourcePlayer.maxHitPoints then
        COMBAT_CONNECTOR.ApplyDamage(attackData)
    end
end

function HealAllPlayersInRadius(healTrigger)
    if not Object.IsValid(SHOOT_ABILITY) then return end
    if not Object.IsValid(healTrigger) then return end

    local ability = SHOOT_ABILITY
    local OverlappingObjects = healTrigger:GetOverlappingObjects()

    for _, thisObject in pairs(OverlappingObjects) do
        if Object.IsValid(thisObject) and thisObject:IsA("Player") and not thisObject.isDead then
            local dmg = Damage.New()

            local healAmount = META_AP().GetAbilityMod(WEAPON.owner, META_AP().LMB, "mod2", 20, WEAPON.name .. ": Heal Amount")
            if thisObject.team == ability.owner.team then
                dmg.amount = -healAmount
            else
                dmg.amount = 0
            end
            dmg.reason = DamageReason.COMBAT
            dmg.sourcePlayer = ability.owner
            dmg.sourceAbility = ability

            local attackData = {
                object = thisObject,
                damage = dmg,
                source = dmg.sourcePlayer,
                position = nil,
                rotation = nil,
                tags = {id = "HealerStaff"}
            }

            if dmg.amount < 0 and thisObject.hitPoints < thisObject.maxHitPoints then
                COMBAT_CONNECTOR.ApplyDamage(attackData)
            elseif dmg.amount > 0 then
                COMBAT_CONNECTOR.ApplyDamage(attackData)
            end
        end
    end
end
