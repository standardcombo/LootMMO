 
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local IMPACT = script:GetCustomProperty('Impact')
local PROJECTILE = script:GetCustomProperty('Projectile')
local function COMBAT()
    return require(script:GetCustomProperty('Combat_Connector'))
end
local currentProjectile = nil
local mods = {}
local DefautltSpeed = 10000
local Knockback = 10000
local function Impact(projectile)
    local player = projectile.owner
    if not player then
        return
    end
    local impactPosition = projectile:GetWorldPosition()

    World.SpawnAsset(
        IMPACT,
        {
            position = impactPosition,
            networkContext = NetworkContextType.NETWORKED
        }
    )
    local nearbyEnemies =
        COMBAT().FindInSphere(
        impactPosition,
        mods[ "Radius"],
        {ignoreTeams = player.team, ignoreDead = true}
    )
    for _, enemy in pairs(nearbyEnemies) do
        local dmg = Damage.New()
        dmg.amount = mods ["Damage"][1]
        dmg.reason = DamageReason.COMBAT
        dmg.sourcePlayer = player
        dmg.sourceAbility = ABILITY

        local directionVector = enemy:GetWorldPosition() - player:GetWorldPosition()
        directionVector = directionVector / directionVector.size
        directionVector.z = 0.7
        local impulseVector = directionVector * Knockback

        local IsCrit = mods ["Damage"][2]
        local attackData = {
            object = enemy,
            damage = dmg,
            source = dmg.sourcePlayer,
            position = nil,
            rotation = nil,
            tags = {id = 'Mage_R', Critical = IsCrit}
        }
        COMBAT().ApplyDamage(attackData)
        enemy:SetVelocity(impulseVector)
    end
end

local function NewProjectile()
    local player = ABILITY.owner
    if not Object.IsValid(player) then
        return
    end
    local playerPosition = player:GetWorldPosition()
    local playerRotation = player:GetLookWorldRotation()
    local forwardVector = playerRotation * Vector3.FORWARD
    local spawnPosition = playerPosition + Vector3.New(0, 0, 260)
    currentProjectile = Projectile.Spawn(PROJECTILE, spawnPosition, forwardVector)
    currentProjectile.owner = player
    currentProjectile.speed = DefautltSpeed
    currentProjectile.lifeSpan = 20
    currentProjectile.capsuleLength = 50
    currentProjectile.capsuleRadius = 50
    currentProjectile.gravityScale = 0

    currentProjectile.lifeSpanEndedEvent:Connect(Impact)
    currentProjectile.impactEvent:Connect(Impact)
end

local function Execute()
    mods = ROOT.serverUserData.calculateModifier()
    NewProjectile()
end

local function Unequip()
    if Object.IsValid(currentProjectile) then
        currentProjectile:Destroy()
    end
end

ROOT.unequippedEvent:Connect(Unequip)
ABILITY.executeEvent:Connect(Execute)
