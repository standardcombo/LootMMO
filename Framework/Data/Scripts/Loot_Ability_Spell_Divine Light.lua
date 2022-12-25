local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local API_SE = _G["StatusEffects.API"]
local activateVFX = script:GetCustomProperty('HealerOrcDivineLightActiveBasic')
local ImpulseAmount = 14000
local function COMBAT()
	return _G["standardcombo.Combat.Wrap"]
end

function AddImpulseToPlayer(ABILITY, player)
	local directionVector = player:GetWorldPosition() - ABILITY.owner:GetWorldPosition()
	directionVector = directionVector / directionVector.size
	directionVector.z = 0.5
	local impulseVector = directionVector * ImpulseAmount

	--player:ResetVelocity()
	COMBAT().AddImpulse(player, impulseVector)
end

function Execute()
	if ABILITY:GetCurrentPhase() == AbilityPhase.READY then
		return
	end

	local newObject =
	World.SpawnAsset(
		activateVFX,
		{ position = ABILITY.owner:GetWorldPosition(), networkContext = NetworkContextType.NETWORKED }
	)

	local StunRadius = ROOT.serverUserData.CalculateModifier('Radius')
	local nearbyEnemies =
	COMBAT().FindInSphere(ABILITY.owner:GetWorldPosition(), StunRadius, { ignoreTeams = ABILITY.owner.team })

	ImpulseAmount = ImpulseAmount

	local statusEffects = {}
	local status = statusEffects.BLIND
	local speedStatus = statusEffects.SPEED
	local healAmmount = ROOT.serverUserData.CalculateModifier('Heal')

	API_SE.ApplyStatusEffect(ABILITY.owner, "SpeedBoost", {
		source = ABILITY.owner,
		duration = ROOT.serverUserData.CalculateModifier('Duration')
	})

	ABILITY.owner.hitPoints = CoreMath.Clamp(ABILITY.owner.hitPoints + healAmmount, ABILITY.owner.maxHitPoints)

	for _, enemy in pairs(nearbyEnemies) do
		API_SE.ApplyStatusEffect(enemy, "Blind", {
			source = ABILITY.owner,
			duration = ROOT.serverUserData.CalculateModifier('Duration')
		})
		AddImpulseToPlayer(ABILITY, enemy)
	end
end

ABILITY.executeEvent:Connect(Execute)
