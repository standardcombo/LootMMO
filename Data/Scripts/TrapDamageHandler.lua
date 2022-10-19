function COMBAT()
	return require(script:GetCustomProperty('Combat_Connector'))
end

local Root = script.parent
local Trigger = script:GetCustomProperty('Trigger'):WaitForObject()
local TrapActivationTemplate = script:GetCustomProperty('TrapActivationTemplate')
local API_SE = _G["StatusEffects.API"]
while Root:GetCustomProperty('OwnerID') == '' do
	Task.Wait()
end
local mod = Root.serverUserData.mod
local ownerID = Root:GetCustomProperty('OwnerID')
local TrapOwner
for _, player in pairs(Game.GetPlayers()) do
	if player.id == ownerID then
		TrapOwner = player
		break
	end
end

if not TrapOwner then
	Root:Destroy()
	return
end

local OverlapEvent

function DoDamage(other)
	if COMBAT().IsValidObject(other) and not COMBAT().IsDead(other) and COMBAT().GetTeam(other) ~= TrapOwner.team then
		--other:ResetVelocity()
		if OverlapEvent then
			OverlapEvent:Disconnect()
			OverlapEvent = nil
		end
		Root.visibility = Visibility.FORCE_OFF
		World.SpawnAsset(
			TrapActivationTemplate,
			{ position = Root:GetWorldPosition(), rotation = Root:GetWorldRotation() }
		)
		API_SE.ApplyStatusEffect(other, "Bleed", {
			source = TrapOwner,
			duration = mod["Duration"],
			damage = mod["Bleed"],
		})

		API_SE.ApplyStatusEffect(other, "Stun", {
			source = TrapOwner,
			duration = mod ["StunDuration"]
		})

		local dmg = Damage.New()
		dmg.amount = Root:GetCustomProperty('Damage')

		dmg.reason = DamageReason.COMBAT
		dmg.sourcePlayer = TrapOwner

		local attackData = {
			object = other,
			damage = dmg,
			source = dmg.sourcePlayer,
			position = nil,
			rotation = nil,
			tags = { id = 'Hunter_R', Critical = Root:GetCustomProperty('IsCrit') }
		}
		COMBAT().ApplyDamage(attackData)
		Root:Destroy()
		Task.Wait()
		--        other:ResetVelocity()
	end
end

function OnBeginOverlap(thisTrigger, other)
	DoDamage(other)
end

Task.Wait(1)
for _, other in pairs(Trigger:GetOverlappingObjects()) do
	DoDamage(other)
end

if Object.IsValid(Trigger) then
	OverlapEvent = Trigger.beginOverlapEvent:Connect(OnBeginOverlap)
end
