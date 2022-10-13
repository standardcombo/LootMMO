local function COMBAT()
	return require(script:GetCustomProperty('Combat_Connector'))
end

local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local ABILITY = script:GetCustomProperty('Ability'):WaitForObject()
local Trigger = script:GetCustomProperty('Trigger'):WaitForObject()

local OwnerImpulseAmount = 50000
local DEFAULT_Stun = { duration = 4.0, damage = 0, multiplier = 0 }
local OriginalSettings = {}
local DashImpulseVector = nil
local TriggerEventConnection = nil

local originalPlayerSettings = {}
local isDashing = false

local mod = {}

local ATTACHED_VFX = script:GetCustomProperty('AttachedVFX')
local BASH_VFX = script:GetCustomProperty('BashVFX')

local SpawnedAttachedVFX = nil

function AddImpulseToPlayer(player)
	warn('Apply effect stun')

	-- Do damage
	local crit = mod ["Damage"][2]
	local dmg = Damage.New()
	dmg.amount = mod ["Damage"][1]
	dmg.reason = DamageReason.COMBAT
	dmg.sourcePlayer = ABILITY.owner
	dmg.sourceAbility = ABILITY


	local attackData = {
		object = player,
		damage = dmg,
		source = dmg.sourcePlayer,
		position = nil,
		rotation = nil,
		tags = { id = 'Warrior_R', Critical = crit }
	}
	COMBAT().ApplyDamage(attackData)
end

function OnBeginOverlap(thisTrigger, other)
	if (other:IsA('Player') or other.name == 'Collider') and other.team ~= ABILITY.owner.team then
		AddImpulseToPlayer(other)
	end
end

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

	local attachmentTemplate = ATTACHED_VFX
	SpawnedAttachedVFX =
	World.SpawnAsset(
		attachmentTemplate,
		{ position = ABILITY.owner:GetWorldPosition(), networkContext = NetworkContextType.NETWORKED }
	)
	SpawnedAttachedVFX:AttachToPlayer(ABILITY.owner, 'root')

	for _, other in ipairs(Trigger:GetOverlappingObjects()) do
		if (other:IsA('Player') or other.name == 'Collider') and other.team ~= ABILITY.owner.team then
			AddImpulseToPlayer(other)
		end
	end

	TriggerEventConnection = Trigger.beginOverlapEvent:Connect(OnBeginOverlap)
end

local function DashOff()
	local owner = ABILITY.owner
	if TriggerEventConnection then
		TriggerEventConnection:Disconnect()
	end

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
	mod = ROOT.serverUserData.calculateModifier()
	Trigger:SetWorldScale(Vector3.New(mod["BashRadius"]))
	ToggleDash(true)
end

function OnInterrupted()
	if isDashing then
		ToggleDash(false)
	end
end

function Cooldown()
	ToggleDash(false)

	local bashTemplate = BASH_VFX
	World.SpawnAsset(
		bashTemplate,
		{
			position = ABILITY.owner:GetWorldPosition(),
			rotation = ABILITY.owner:GetWorldRotation(),
			networkContext = NetworkContextType.NETWORKED
		}
	)

	for _, other in ipairs(Trigger:GetOverlappingObjects()) do
		if (other:IsA('Player') or other.name == 'Collider') and other.team ~= ABILITY.owner.team then
			AddImpulseToPlayer(other)
		end
	end
end

function Recovery()
	Task.Wait(mod["Range"])
	if not Object.IsValid(ABILITY) then
		return
	end
	if ABILITY:GetCurrentPhase() == AbilityPhase.RECOVERY then
		ABILITY:AdvancePhase()
	end
end

function OnUnequip(equipment, player)
	if TriggerEventConnection then
		TriggerEventConnection:Disconnect()
	end
	if Object.IsValid(SpawnedAttachedVFX) then
		SpawnedAttachedVFX:Destroy()
	end

	player.movementControlMode = OriginalSettings.movementControlMode or MovementControlMode.LOOK_RELATIVE
	player.groundFriction = OriginalSettings.groundFriction or 8
	player.brakingDecelerationWalking = OriginalSettings.brakingDecelerationWalking or 1000
end

function OnEquip(equipment, player)
	OriginalSettings.movementControlMode = player.movementControlMode
	OriginalSettings.groundFriction = player.groundFriction
	OriginalSettings.brakingDecelerationWalking = player.brakingDecelerationWalking
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

ROOT.unequippedEvent:Connect(OnUnequip)
ROOT.equippedEvent:Connect(OnEquip)
