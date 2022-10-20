--[[
	Spawn Projectiles AOE
	v1.2
	by: standardcombo
	
	Similar to Manticore's "SpawnProjectileAbilityServer", but is made to work
	with the NPC Kit by passing damage through the combat wrapper.
--]]

-- Component dependencies
local MODULE = require( script:GetCustomProperty("ModuleManager") )
function COMBAT() return MODULE.Get("standardcombo.Combat.Wrap") end
function TAGS() return MODULE.Get("standardcombo.Combat.Tags") end


local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local SPAWNERS_PARENT = script:GetCustomProperty("SpawnersParent"):WaitForObject()
local EFFECT_API = require(script:GetCustomProperty("API_Effect"))

local SPAWN_DELAY = COMPONENT_ROOT:GetCustomProperty("SpawnDelay")
local propProjectile = COMPONENT_ROOT:GetCustomProperty("Projectile")
local propProjectileSpeed = COMPONENT_ROOT:GetCustomProperty("ProjectileSpeed")
local propProjectileLength = COMPONENT_ROOT:GetCustomProperty("ProjectileLength")
local propProjectileRadius = COMPONENT_ROOT:GetCustomProperty("ProjectileRadius")
local propProjectileLifeSpan = COMPONENT_ROOT:GetCustomProperty("ProjectileLifeSpan")
local propDirection = COMPONENT_ROOT:GetCustomProperty("Direction")
local propIntervalTime = COMPONENT_ROOT:GetCustomProperty("IntervalTime")
local PROJECTILE_IMPACT_ALIGNED = COMPONENT_ROOT:GetCustomProperty("ProjectileImpactAligned")

-- Blast Settings
local BLAST_IMPACT_TEMPLATE = COMPONENT_ROOT:GetCustomProperty("BlastImpactTemplate")
local BLAST_RADIUS = COMPONENT_ROOT:GetCustomProperty("BlastRadius")
local BLAST_KNOCKBACK_SPEED = COMPONENT_ROOT:GetCustomProperty("BlastKnockbackSpeed")
local BLAST_DAMAGE_RANGE = COMPONENT_ROOT:GetCustomProperty("BlastDamageRange")

-- Effect Settings
local APPLY_EFFECT = COMPONENT_ROOT:GetCustomProperty("ApplyEffect")
local EFFECT_NAME = COMPONENT_ROOT:GetCustomProperty("EffectName")
local EFFECT_DURATION = COMPONENT_ROOT:GetCustomProperty("EffectDuration")
local FREEZE_MOVEMENT = COMPONENT_ROOT:GetCustomProperty("FreezeMovement")
local FREEZE_ABILITIES = COMPONENT_ROOT:GetCustomProperty("FreezeAbilities")
local SPEED_MODIFIER = COMPONENT_ROOT:GetCustomProperty("SpeedModifier")
local PLAYER_EFFECT_TEMPLATE = COMPONENT_ROOT:GetCustomProperty("PlayerEffectTemplate")
local PLAYER_EFFECT_SOCKET = COMPONENT_ROOT:GetCustomProperty("PlayerEffectSocket")

-- Variables
-- Effect table used to send to Effect API
local effectTable = {
    name = EFFECT_NAME,
    duration = EFFECT_DURATION,
    freezeMovement = FREEZE_MOVEMENT,
    freezeAbilities = FREEZE_ABILITIES,
    speedModifier = SPEED_MODIFIER,
    vfx = PLAYER_EFFECT_TEMPLATE,
    vfxSocket = PLAYER_EFFECT_SOCKET
}
local sourceAbility = nil
local sourceOwner = nil

-- Tags can represent various types or attributes of the effect
local tagData = TAGS().GetTags(script:FindTemplateRoot())
table.insert(tagData, "AOE")


function Blast(projectile, other, hitResult)

    -- Create the position of the blast and find enemies within radius
    local center = hitResult:GetImpactPosition()
    local normal = hitResult:GetImpactNormal()

    if BLAST_IMPACT_TEMPLATE then
        local blastTemplate = World.SpawnAsset(BLAST_IMPACT_TEMPLATE, {position = center})
        blastTemplate:ScaleTo(Vector3.ONE * BLAST_RADIUS / 50, 0.2, false)
    end

    if PROJECTILE_IMPACT_ALIGNED then
        local rot = Rotation.New(normal.x, normal.y, normal.z)
        World.SpawnAsset(PROJECTILE_IMPACT_ALIGNED,
                        {position = center, rotation = rot})
    end

    -- If there is no owner ignore the damage and effect
    if not Object.IsValid(sourceOwner) then return end

    local enemies = COMBAT().FindInSphere(center, BLAST_RADIUS, {ignoreTeams = sourceOwner.team})
    
    for _, enemy in pairs(enemies) do
		local enemyPos = enemy:GetWorldPosition()
		
        -- Create a direction at which the character is pushed away from the blast
        local displacement = enemyPos - center
		COMBAT().AddImpulse(enemy, displacement:GetNormalized() * BLAST_KNOCKBACK_SPEED)
		
        -- The farther the character is from the blast the less damage that character takes
        local minDamage = BLAST_DAMAGE_RANGE.x
        local maxDamage = BLAST_DAMAGE_RANGE.y
        displacement.z = 0
        local t = (displacement).size / BLAST_RADIUS
        local damageAmount = CoreMath.Lerp(maxDamage, minDamage, t)
		damageAmount = CoreMath.Round(damageAmount)
		
		-- Create damage object
		local dmg = Damage.New(damageAmount)
		dmg:SetHitResult(hitResult)
		dmg.reason = DamageReason.COMBAT
		dmg.sourcePlayer = sourceOwner
		dmg.sourceAbility = sourceAbility
			
        -- Apply damage to enemy
		local attackData = {
			object = enemy,
			damage = dmg,
			source = dmg.sourcePlayer,
			position = enemyPos,
			tags = tagData
		}
		COMBAT().ApplyDamage(attackData)
		
        -- Apply effect to enemy
        if APPLY_EFFECT and enemy:IsA("Player") then
            EFFECT_API.ApplyEffect(enemy, EFFECT_NAME, effectTable)
        end
    end
end

function SpawnProjectiles()

    -- Check for source owner
    if not sourceAbility then
        sourceAbility = COMPONENT_ROOT.serverUserData.sourceAbility
        effectTable.sourceAbility = sourceAbility
    end
    if sourceAbility and not sourceOwner then
        sourceOwner = sourceAbility.owner
    end

    for _, value in ipairs(SPAWNERS_PARENT:GetChildren()) do
        -- Spawn projectile
        local projectile = Projectile.Spawn(propProjectile, value:GetWorldPosition(), propDirection)

        projectile.owner = sourceOwner
        projectile.sourceAbility = sourceAbility
        projectile.speed = propProjectileSpeed
        projectile.capsuleRadius = propProjectileRadius
        projectile.capsuleLength = propProjectileLength
        projectile.lifeSpan = propProjectileLifeSpan

        projectile.impactEvent:Connect(Blast)

        -- Run projectile VFX
        for _, child in ipairs(value:GetChildren()) do
            if child:IsA("Vfx") or child:IsA("Audio") then
                child:Play()
            end
        end

        -- Wait interval for next projectile spawn
        Task.Wait(propIntervalTime)
    end
end

Task.Wait(SPAWN_DELAY)
SpawnProjectiles()