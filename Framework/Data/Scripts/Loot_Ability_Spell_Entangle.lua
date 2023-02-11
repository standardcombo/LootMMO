local ABILITY = script:GetCustomProperty("Ability"):WaitForObject()
local ROOT = script:GetCustomProperty("Root"):WaitForObject()

local ImpulsAmount = 140000
local lifeSpan = 5
local SPAWN_VFX = script:GetCustomProperty('Spawn_VFX')
local API_SE = _G["StatusEffects.API"]

local function COMBAT()
	return _G["standardcombo.Combat.Wrap"]
end

function AddImpulse(player)
	local impulseVector

	if player then
		local forwardVector = player:GetWorldRotation() * Vector3.FORWARD
		local oppositeVector = -forwardVector
		oppositeVector.z = 1
		impulseVector = oppositeVector * ImpulsAmount
	end
	player:ResetVelocity()
	player:AddImpulse(impulseVector)
end

function Cast(thisAbility)
	if not thisAbility.owner.isGrounded then
		thisAbility:Interrupt()
	end
end

function Execute()
	local owner = ABILITY.owner
	local targetPosition = owner:GetWorldPosition()
	local targetRotation = Rotation.ZERO

	AddImpulse(owner)

	local hitResult = World.Raycast(targetPosition, targetPosition - Vector3.New(0, 0, 5000), { ignorePlayers = true })
	if hitResult then
		targetPosition = hitResult:GetImpactPosition()
		targetRotation = Rotation.New(Vector3.FORWARD, hitResult:GetImpactNormal())
	else
		targetPosition.z = targetPosition.z - 100
	end

	local ImpulseRadius = 400
	local vfxScale = Vector3.New(CoreMath.Round(ImpulseRadius / 75, 3))

	local trapTemplate = SPAWN_VFX
	local newTrap =
	World.SpawnAsset(
		trapTemplate,
		{
			position = targetPosition,
			rotation = targetRotation,
			scale = vfxScale,
			networkContext = NetworkContextType.NETWORKED
		}
	)
	local bleedMod = ROOT.serverUserData.CalculateModifier('Bleed')
	local durationMod = ROOT.serverUserData.CalculateModifier('Duration')
	
	newTrap.lifeSpan = lifeSpan
	newTrap:SetCustomProperty('ability', ABILITY)
	newTrap:SetCustomProperty('lifeSpan', newTrap.lifeSpan)
	newTrap:SetCustomProperty('damage', bleedMod)

	local nearbyEnemies =
	COMBAT().FindInSphere(owner:GetWorldPosition(), ImpulseRadius, { ignoreTeams = owner.team })

	for _, enemy in pairs(nearbyEnemies) do
		API_SE.ApplyStatusEffect(enemy, "Bleed", {
			source = ABILITY.owner,
			duration = durationMod,
			damage = bleedMod,
		})
		API_SE.ApplyStatusEffect(enemy, "Slow", {
			source = ABILITY.owner,
			duration = durationMod
		})
	end
end

ABILITY.executeEvent:Connect(Execute)
ABILITY.castEvent:Connect(Cast)
