local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()

local function COMBAT()
	return _G["standardcombo.Combat.Wrap"]
end
local API_SE = _G["StatusEffects.API"]

local damage = 100
local impactTemplate = script:GetCustomProperty('MageAnimorphPotionImpactBasic')
local projectileTemplate = script:GetCustomProperty('MageAnimorphPotionProjectileBasic')
local projectileSpeed = 1000
local projectileGravity = 1.5

function OnProjectileImpacted(projectile, other, hitResult, self)
	local mod = ROOT.serverUserData.calculateModifier()
	if not other then
		return
	end
	--Play ImpactFX
	local projectilePos = projectile:GetWorldPosition()
	local impactRotation = Rotation.New(Vector3.FORWARD, hitResult:GetImpactNormal())
	World.SpawnAsset(impactTemplate, { position = projectile:GetWorldPosition(), rotation = impactRotation, networkContext = NetworkContextType.NETWORKED })

	-- init dmg object
	local DamageAmount = damage
	local dmg = Damage.New(DamageAmount)
	dmg:SetHitResult(hitResult)
	dmg.reason = DamageReason.COMBAT
	dmg.sourcePlayer = ABILITY.owner
	dmg.sourceAbility = ABILITY

	local radius = mod["Radius"]
	local enemiesInRange = COMBAT().FindInSphere(projectilePos, radius,
		{ ignoreDead = true, ignoreTeams = ABILITY.owner.team })

	for _, enemy in ipairs(enemiesInRange) do
		if not enemy.serverUserData.DamageImmunity then
			enemy.serverUserData.NotAdjustHp = true
			-- Damage
			if DamageAmount ~= 0 then
				local attackData = {
					object = enemy,
					damage = dmg,
					source = ABILITY.owner,
					position = nil,
					rotation = nil,
					tags = { id = 'Mage_E' }
				}
				COMBAT().ApplyDamage(attackData)
				Task.Wait()
			end


			API_SE.ApplyStatusEffect(enemy, "Animorph", {
				duration = mod["Duration"],
				multiplier = 0,
			})

		end
	end
end

function Execute()
	if ABILITY:GetCurrentPhase() == AbilityPhase.READY then
		return
	end

	local lookRotation = ABILITY.owner:GetViewWorldRotation()
	local forwardVector = (ABILITY.owner:GetViewWorldRotation() + Rotation.New(0, 0, 0)) * Vector3.FORWARD
	forwardVector.z = forwardVector.z + 0.2
	local worldPosition = ABILITY.owner:GetWorldPosition() + (forwardVector * 20) + (lookRotation * Vector3.RIGHT * 30)
	worldPosition.z = worldPosition.z + 50

	local grenadeProjectile = Projectile.Spawn(projectileTemplate, worldPosition, forwardVector)
	grenadeProjectile.lifeSpan = 10
	grenadeProjectile.owner = ABILITY.owner
	grenadeProjectile.sourceAbility = ABILITY
	grenadeProjectile.speed = projectileSpeed

	grenadeProjectile.gravityScale = projectileGravity
	grenadeProjectile.shouldDieOnImpact = true
	grenadeProjectile.impactEvent:Connect(OnProjectileImpacted)
end

ABILITY.executeEvent:Connect(Execute)
