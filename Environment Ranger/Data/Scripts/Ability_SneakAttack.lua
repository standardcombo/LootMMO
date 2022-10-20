local API_P = require(script:GetCustomProperty("APIProjectile"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_ID = require(script:GetCustomProperty("API_ID"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local BASE_DAMAGE = 35.0
local DAMAGE_MULTIPLIER = 1.0

local data = {}

data.name = script:GetCustomProperty("Name")
data.targets = true
data.friendlyTargetValid = false
data.enemyTargetValid = true
data.requiresFacing = true
data.groundTargets = false
data.canMove = true
data.icon = script:GetCustomProperty("Icon")
data.range = script:GetCustomProperty("Range")
data.cooldown = script:GetCustomProperty("Cooldown")
data.castDuration = script:GetCustomProperty("CastDuration")
data.animationKey = script:GetCustomProperty("AnimationKey")
data.description = script:GetCustomProperty("Description")
data.selfCasterEffectTemplate = script:GetCustomProperty("SelfCasterEffectTemplate")
data.otherCasterEffectTemplate = script:GetCustomProperty("OtherCasterEffectTemplate")
data.selfTargetEffectTemplate = script:GetCustomProperty("SelfTargetEffectTemplate")
data.otherTargetEffectTemplate = script:GetCustomProperty("OtherTargetEffectTemplate")

function data.onCastClient(caster, targetSet)
	return 0.0
end

-- Caster only
function OnSneakAttack(targetId)
	-- We don't do this in onCastClient, because sneak attack can fail and not teleport the player.
	-- Can't cache local player because this script is required from server scripts as well
	local localPlayer = Game.GetLocalPlayer()
	local target = API_ID.GetObjectFromId(targetId)
	local lookRotation = localPlayer:GetLookWorldRotation()
	lookRotation.z = target:GetWorldRotation().z
	localPlayer:SetLookWorldRotation(lookRotation)
end

function data.onCastServer(caster, targetSet)
	local target = targetSet[1]
	assert(not target:IsA("Player"))
	local teleportPosition = target:GetWorldPosition() - target:GetWorldRotation() * Vector3.FORWARD * 250.0
	-- Find the ground
	hitResult = World.Raycast(teleportPosition + Vector3.UP * 500.0, teleportPosition - Vector3.UP * 500.0, {ignorePlayers = true})

	-- If our Raycast failed, we don't teleport because we don't want to drop the player below the map.
	if hitResult then
		caster:SetWorldPosition(hitResult:GetImpactPosition() + Vector3.UP * 110.0 * caster:GetWorldScale().z)
		caster:SetWorldRotation(Rotation.New(0.0, 0.0, target:GetWorldRotation().z))
		caster:ResetVelocity()
		local attackStat = caster.serverUserData.statSheet:GetStatTotalValue("Attack")
		API_D.ApplyDamage(caster, target, BASE_DAMAGE + DAMAGE_MULTIPLIER * attackStat)
		API_RE.BroadcastToPlayer(caster, "SA", API_ID.GetIdFromObject(target))
	end
end

API_RE.Connect("SA", OnSneakAttack)

return data
