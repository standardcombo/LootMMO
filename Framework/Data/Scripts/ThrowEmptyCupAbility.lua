
local EQUIPMENT = script:FindAncestorByType("Equipment")
local ABILITY = script:GetCustomProperty("Ability"):WaitForObject()
--local PROJECTILE_TEMPLATE = script:GetCustomProperty("ProjectileTemplate")
local PROJECTILE_SPEED = script:GetCustomProperty("ProjectileSpeed")
local PROJECTILE_LIFE_SPAN = script:GetCustomProperty("ProjectileLifeSpan")
local PROJECTILE_LENGTH = script:GetCustomProperty("ProjectileLength")
local PROJECTILE_RADIUS = script:GetCustomProperty("ProjectileRadius")
local PROJECTILE_GRAVITY = script:GetCustomProperty("ProjectileGravity")
local PROJECTILE_BOUNCES = script:GetCustomProperty("ProjectileBounces")
local BOUNCE_SOUND_TEMPLATE = script:GetCustomProperty("ProjectileBounceSound")


function OnProjectileImpact(projectile, other, hitResult)
	if projectile.bouncesRemaining == 0 then
		if Object.IsValid(projectile) then
			projectile:Destroy()
		end
	elseif BOUNCE_SOUND_TEMPLATE then
		local pos = hitResult:GetImpactPosition()
		World.SpawnAsset(BOUNCE_SOUND_TEMPLATE, {position = pos})
	end
end


function OnExecute(ability)
	local itemId = EQUIPMENT:GetCustomProperty("itemId")
	local def = _G.Consumables.GetDefinition(itemId)
	
	-- Make projectile
	local startPos = script:GetWorldPosition()
	local abilityTarget = ability:GetTargetData()
	local direction = abilityTarget:GetAimDirection()
	
	local projectile = Projectile.Spawn(def.model, startPos, direction)
		
	if Object.IsValid(ability) and Object.IsValid(ability.owner) then
		projectile.owner = ability.owner
	end
	
	projectile.speed = PROJECTILE_SPEED
	projectile.lifeSpan = PROJECTILE_LIFE_SPAN
	projectile.capsuleLength = PROJECTILE_LENGTH
	projectile.capsuleRadius = PROJECTILE_RADIUS
	projectile.gravityScale = PROJECTILE_GRAVITY
	
    projectile.bouncesRemaining = PROJECTILE_BOUNCES
    projectile.shouldDieOnImpact = false
    
    projectile.impactEvent:Connect(OnProjectileImpact)
    
    -- Destroy Equipment
    EQUIPMENT:Destroy()
end

ABILITY.executeEvent:Connect(OnExecute)


EQUIPMENT.customPropertyChangedEvent:Connect(function(obj, propertyName)
	Task.Wait(0.2)
	if Object.IsValid(obj) and Object.IsValid(ABILITY) then
		ABILITY.isEnabled = (obj:GetCustomProperty("usesRemaining") <= 0)
	end
end)

