local function COMBAT()
	return require(script:GetCustomProperty('Combat_Connector'))
end

local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local ENDING_FXBASIC = script:GetCustomProperty("AssassinOrcBladeDashEndingFXBasic")
local BLADE_DASH_VFXBASIC = script:GetCustomProperty("BladeDashVFXBasic")
local STAB_ANIMATION = script:GetCustomProperty("StabAnimation"):WaitForObject()

local mods = {}
local DashImpulseVector = nil
local originalPlayerSettings = {}
local isDashing = false
local OwnerImpulseAmount = 50000

local SpawnedAttachedVFX = nil

local function DashOn()
	if Object.IsValid(ABILITY) and ABILITY:GetCurrentPhase() == AbilityPhase.READY then
		return
	end
	local owner = ABILITY.owner
	originalPlayerSettings = {}
	originalPlayerSettings.BrakingDecelerationWalking = owner.brakingDecelerationWalking
	originalPlayerSettings.AnimationStance = owner.animationStance

	owner.movementControlMode = MovementMode.NONE
	owner.animationStance = '1hand_melee_shield_block'
	owner.groundFriction = 0
	owner.brakingDecelerationWalking = 0

	local directionVector = owner:GetWorldRotation() * Vector3.FORWARD
	DashImpulseVector = directionVector * OwnerImpulseAmount

	local attachmentTemplate = BLADE_DASH_VFXBASIC
	SpawnedAttachedVFX =
	World.SpawnAsset(
		attachmentTemplate,
		{ position = ABILITY.owner:GetWorldPosition(), networkContext = NetworkContextType.NETWORKED }
	)
	SpawnedAttachedVFX:AttachToPlayer(ABILITY.owner, 'root')
end

local function DashOff()
	local owner = ABILITY.owner

	if Object.IsValid(SpawnedAttachedVFX) then
		SpawnedAttachedVFX:Destroy()
	end

	if Object.IsValid(ABILITY) and originalPlayerSettings ~= {} then
		owner.brakingDecelerationWalking = originalPlayerSettings.BrakingDecelerationWalking
		owner.animationStance = originalPlayerSettings.AnimationStance
		owner.groundFriction = 8
		owner.movementControlMode = MovementControlMode.LOOK_RELATIVE
	end
end

function ToggleDash(mode)
	if mode then
		DashOn()
	else
		DashOff()
	end
	isDashing = mode
end

function Cast()
	if not ABILITY.owner.isGrounded then
		ABILITY:Interrupt()
	end
end

function Execute()
	ToggleDash(true)
	
	Events.Broadcast("Ability.Used", player, "BladeDash")
end

function OnInterrupted()
	if isDashing then
		ToggleDash(false)
	end
end

function Cooldown()
	ToggleDash(false)
end

function Recovery()
	Task.Wait(1)--Task.Wait(mod["Range"])
	STAB_ANIMATION:Activate()
	local bashTemplate = World.SpawnAsset(ENDING_FXBASIC, {rotation = ABILITY.owner:GetWorldRotation(), networkContext = NetworkContextType.NETWORKED})
	-- Task.Spawn(function()
	-- 	while Object.IsValid(bashTemplate) do
	-- 		bashTemplate:SetWorldPosition(ABILITY.owner:GetWorldPosition())
	-- 		Task.Wait()
	-- 	end
	-- end)
	bashTemplate:AttachToPlayer(ABILITY.owner, 'lower_spine')
	mods = ROOT.serverUserData.calculateModifier()
	local nearbyEnemies = COMBAT().FindInSphere(ABILITY.owner:GetWorldPosition(), 1000, { ignoreTeams = ABILITY.owner.team, ignoreDead = true })
	local dmg = Damage.New()
	dmg.amount = mods['Damage'][1]
	dmg.reason = DamageReason.COMBAT
	dmg.sourcePlayer = ABILITY.owner
	dmg.sourceAbility = ABILITY
	local isCrit = mods['Damage'][2]
	for i, enemy in pairs(nearbyEnemies) do
		local attackData = {
			object = enemy,
			damage = dmg,
			source = dmg.sourcePlayer,
			position = nil,
			rotation = nil,
			tags = { id = 'Hunter_Q', Critical = isCrit}
		}
		COMBAT().ApplyDamage(attackData)
	end
	if not Object.IsValid(ABILITY) then
		return
	end
	if ABILITY:GetCurrentPhase() == AbilityPhase.RECOVERY then
		ABILITY:AdvancePhase()
	end
end

function Tick(deltaTime)
	if Object.IsValid(ABILITY) and Object.IsValid(ABILITY.owner) and isDashing then
		ABILITY.owner:AddImpulse((DashImpulseVector or Vector3.ZERO) * (deltaTime * 10))
	end
end

ABILITY.executeEvent:Connect(Execute)
ABILITY.castEvent:Connect(Cast)
ABILITY.cooldownEvent:Connect(Cooldown)
ABILITY.recoveryEvent:Connect(Recovery)
ABILITY.interruptedEvent:Connect(OnInterrupted)