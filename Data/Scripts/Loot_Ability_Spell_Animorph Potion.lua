local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local function COMBAT()
    return require(script:GetCustomProperty('Combat_Connector'))
end

properties = {
    description = script:GetCustomProperty('Description'),
    icon = script:GetCustomProperty('Icon')
}

modifiers = {
    [MODIFIERS.Duration.name] = setmetatable({}, {__index = MODIFIERS.Duration}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Radius.name] = setmetatable({}, {__index = MODIFIERS.Radius})
}
modifiers[MODIFIERS.Duration.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Radius.name].calculation = function(self, stats)
    return 2
end 

local damage = 100
local impactTemplate = script:GetCustomProperty("MageAnimorphPotionImpactBasic")
local projectileTemplate =  script:GetCustomProperty("MageAnimorphPotionProjectileBasic")
local projectileSpeed = 1000
local projectileGravity = 1.5

function OnProjectileImpacted(projectile, other, hitResult, self)
    local mod = self:CalculateStats(self.lastStats)
    if not other then
        return
    end
    --Play ImpactFX
    local projectilePos = projectile:GetWorldPosition()
    local impactRotation = Rotation.New(Vector3.FORWARD, hitResult:GetImpactNormal())
    World.SpawnAsset(impactTemplate, {position = projectile:GetWorldPosition(), rotation = impactRotation})

    -- init dmg object
    local DamageAmount = damage
    local dmg = Damage.New(DamageAmount)
    dmg:SetHitResult(hitResult)
    dmg.reason = DamageReason.COMBAT
    dmg.sourcePlayer = self.owner
    dmg.sourceAbility = self:GetCurrentAbility()

    local radius = mod[MODIFIERS.Radius.name]
    local enemiesInRange =
        Game.FindPlayersInSphere(projectilePos, radius, {ignoreDead = true, ignoreTeams = self.owner.team})

    for _, enemy in ipairs(enemiesInRange) do
        if not enemy.serverUserData.DamageImmunity then
            enemy.serverUserData.NotAdjustHp = true
            -- Damage
            if DamageAmount ~= 0 then
                local attackData = {
                    object = enemy,
                    damage = dmg,
                    source = self.owner,
                    position = nil,
                    rotation = nil,
                    tags = {id = 'Mage_E'}
                }
                COMBAT().ApplyDamage(attackData)
                Task.Wait()
            end

            -- equip animal costume
            if not enemy.isDead and not enemy.serverUserData.isAnimorphed then
                enemy.serverUserData.isAnimorphed = true
                local costumeTemplate = PlayerVFX.Attachment
                local newCostume = World.SpawnAsset(costumeTemplate)
                newCostume:SetScale(newCostume:GetScale() * 1.5)
                local Duration = mod[MODIFIERS.Duration.name]
                newCostume:SetNetworkedCustomProperty('Duration', Duration)
                newCostume:Equip(enemy)
            end
        end
    end
end

function Execute(self, stats)
    if self:GetCurrentPhase() == AbilityPhase.READY then
        return
    end

    local lookRotation = self.owner:GetViewWorldRotation()
    local forwardVector = (self.owner:GetViewWorldRotation() + Rotation.New(0, 0, 0)) * Vector3.FORWARD
    forwardVector.z = forwardVector.z + 0.2
    local worldPosition = self.owner:GetWorldPosition() + (forwardVector * 20) + (lookRotation * Vector3.RIGHT * 30)
    worldPosition.z = worldPosition.z + 50

    local grenadeProjectile = Projectile.Spawn(projectileTemplate, worldPosition, forwardVector)
    grenadeProjectile.lifeSpan = 10
    grenadeProjectile.owner = self.owner
    grenadeProjectile.sourceAbility = self
    grenadeProjectile.speed = projectileSpeed

    grenadeProjectile.gravityScale = projectileGravity
    grenadeProjectile.shouldDieOnImpact = true
    grenadeProjectile.impactEvent:Connect(
        function(...)
            OnProjectileImpacted(..., self)
        end
    )
end
