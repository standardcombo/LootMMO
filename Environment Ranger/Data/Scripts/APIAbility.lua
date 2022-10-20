local API_T = require(script:GetCustomProperty("APITargeting"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_ID = require(script:GetCustomProperty("API_ID"))
local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))
local API_AS = require(script:GetCustomProperty("APIAnimationSystem"))
local API_S = require(script:GetCustomProperty("APIStats"))

local abilityDefinitions = {}

for propertyName, otherScript in pairs(script:GetCustomProperties()) do
	if string.sub(propertyName, 1, 3) ~= "API" then
		table.insert(abilityDefinitions, require(otherScript))
	end
end

local API = {}

-- The core ability name convention has "cast" when something is started, and "execute" when it finishes. In some cases
-- here we are inconsistent, and use "cast" for when the ability finishes (executes). For ground target abilities,
-- "activate" is when we create the reticle, but the Core ability only casts when the user actually clicks.
-- We also use the word "target" in some places to represent a set of targets an ability is being applied to. Ability
-- targets are not always the same as the caster's target, and are carried throughout the duration of an ability
-- activation.

-- Time before the previous ability cast or cooldown is finished that a player can activate another ability and it is
-- queued to cast when available. Must be less than MIN_GLOBAL_COOLDOWN since we assume only one thing can be queued.
local QUEUE_TIME = 0.4
local BASE_GLOBAL_COOLDOWN = 1.0			--	Time after activating a spell where no other spell can be activated
local MIN_GLOBAL_COOLDOWN = 0.5
local TARGET_SET_LIMIT = 3					--	Until we can optimize the events a bit

-- These are set in Initialize()
local IS_CLIENT = nil
local LOCAL_PLAYER = nil

--[[	Ability data includes (Note that AssetReferences are just strings):
string name										User-facing unique name
bool targets									Whether this ability has a target
<bool> friendlyTargetValid						Whether this can target another player
<bool> enemyTargetValid							Whether this can target an enemy npc
bool requiresFacing								Whether the target must be in front of the player
bool groundTargets								Whether that target is a spot on the ground (vs their active npc target)
bool canMove									Whether the caster can move while casting
AssetReference icon								Icon to use in ui
<float> range									Max range of target if targeted
float cooldown									The base cooldown for this ability
float castDuration								Length of cast for this ability
<string> animationKey							Animation to play, see APIAnimationSystem, ANIMATION_MAP for values
<AssetReference> selfCasterEffectTemplate		Template spawned on the caster at cast start, visible to the caster
<AssetReference> otherCasterEffectTemplate		Template spawned on the caster at cast start, visible to other players
<AssetReference> selfTargetEffectTemplate		Template spawned at the target at impact or cast end time, visible to the caster
<AssetReference> otherTargetEffectTemplate		Template spawned at the target at impact or cast end time, visible to others
<AssetReference> reticleTemplate				Reticle for ground target ability
<function> getTargetSet(caster, target)			Client function called on 'cast', returns the target or array of targets (Local player only)
<function> onCastClient(caster, target)			Client function called on 'execute', returns the time to impact
<function> onCastServer(caster, target)			Server function called on 'execute'
]]
local abilityData = {}						--	string -> table (above)
local playerAbilities = {}					--	Player -> table (string -> int) This is a reference count. nil for 0
local abilityCooldownEnds = {}				--	string -> float | Client Only
-- castId is not present on the client for other players
local playerCastData = {}					--	Player -> table
--[[
string abilityName
float/Object target
<int> castId
float startTime
]]
-- Client only
local globalCooldownEndTime = 0.0
local queuedAbilityName = nil
local queuedAbilityTarget = nil
local groundTargetAbilityName = nil
local groundTargetReticle = nil
-- This is a separate variable because it persists one frame after the above. This is needed so inputs to this system
-- don't interact with other systems in undesirable ways.
local groundTargetActive = true
local altDown = false
local nextCastId = 1

-- Client and Server, called directly in this API
function RegisterAbility(data)
	assert(data.name)
	assert(not abilityData[data.name])
	assert(data.icon)
	assert(data.cooldown)
	assert(data.castDuration)
	assert(not data.groundTargets or data.reticleTemplate)

	if data.targets and not data.groundTargets then
		assert(data.friendlyTargetValid or data.enemyTargetValid)
	end

	abilityData[data.name] = data
end

-- Client and Server
function OnPlayerJoined(player)
	playerAbilities[player] = {}
end

-- Client and Server
function OnPlayerLeft(player)
	playerAbilities[player] = nil
end

-- Owning client
function CancelGroundTargeting()
	if groundTargetReticle then
		-- This check is being extra careful, but means if we get into a bad state we aren't stuck there forever
		if Object.IsValid(groundTargetReticle) then
			groundTargetReticle:Destroy()
		end

		groundTargetAbilityName = nil
		groundTargetReticle = nil
	end
end

-- Local client
function GetGlobalCooldown()
	-- This is intentionally haste and not CDR
	return math.max(MIN_GLOBAL_COOLDOWN, BASE_GLOBAL_COOLDOWN * API_S.GetPlayerStatMultiplier(LOCAL_PLAYER, "Haste"))
end

-- Owning client
function API.GetAbilityCooldown(abilityName)
	assert(playerAbilities[LOCAL_PLAYER][abilityName])
	local data = abilityData[abilityName]
	return data.cooldown * API_S.GetPlayerStatMultiplier(LOCAL_PLAYER, "CDR")
end

-- Any client
function API.GetAbilityCastDuration(player, abilityName)
	local data = abilityData[abilityName]
	return data.castDuration * API_S.GetPlayerStatMultiplier(player, "Haste")
end

-- Client
function API.GetPlayerCastData(player)
	return playerCastData[player]
end

-- Owning client
function API.AreEquipmentConstraintsSatisfied(player, abilityName)
	local inventory = player.clientUserData.inventory

	if not inventory then
		return false
	end

	local constraints = abilityData[abilityName].equippedItemConstraints

	if not constraints then
		return true
	end

	for _, requiredItemType in pairs(constraints) do
		if inventory:HasEquippedItemType(requiredItemType) then
			return true
		end
	end

	return false
end

-- Owning client
-- Used for ground target abilities and some key state
function OnBindingPressed(player, binding)
	if groundTargetReticle then
		if binding == "ability_primary" then
			if CanActivate(groundTargetAbilityName) then
				local target = groundTargetReticle:GetWorldPosition()

				if CanCast(groundTargetAbilityName, target) then
					CastAbility(groundTargetAbilityName, target)
				else
					queuedAbilityName = groundTargetAbilityName
					queuedAbilityTarget = target
				end

				CancelGroundTargeting()
			end
		elseif binding == "ability_secondary" then
			CancelGroundTargeting()
		end
	end

	if binding == "ability_extra_14" then
		altDown = true
	end
end

-- Owning client
function OnBindingRelease(player, binding)
	if binding == "ability_extra_14" then
		altDown = false
	end
end

-- Owning client
function CastAbility(abilityName, target)
	assert(CanCast(abilityName, target))
	local data = abilityData[abilityName]

	local targetSet = {target}

	if data.getTargetSet then
		targetSet = data.getTargetSet(LOCAL_PLAYER, target)

		-- We just shrink the set instead of making every ability handle this limit
		if #targetSet > TARGET_SET_LIMIT then
			for i = TARGET_SET_LIMIT + 1, #targetSet do
				targetSet[i] = nil
			end
		end
	end
	
	local castData = {}
	castData.abilityName = abilityName
	castData.targetSet = targetSet
	castData.castId = nextCastId
	castData.startTime = os.clock()
	playerCastData[LOCAL_PLAYER] = castData
	local isInstantCast = (API.GetAbilityCastDuration(LOCAL_PLAYER, castData.abilityName) == 0.0)
	API_RE.BroadcastToServer("ACS", abilityName, targetSet, nextCastId, isInstantCast)

	if data.animationKey then
		API_AS.PlayAnimation(data.animationKey, nextCastId, not isInstantCast)
	end

	-- Instant casts just go straight to execute. Since we only want one broadcast, and need target info, we use the
	-- the cast broadcast.
	if isInstantCast then
		ExecuteAbility(true)
	end

	globalCooldownEndTime = os.clock() + GetGlobalCooldown()
	nextCastId = nextCastId % 1000 + 1

	if data.selfCasterEffectTemplate then
		local effects = World.SpawnAsset(data.selfCasterEffectTemplate)
		effects:AttachToPlayer(LOCAL_PLAYER, "root")
	end
end

-- Owning client
function ExecuteAbility(skipBroadcast)
	local castData = playerCastData[LOCAL_PLAYER]
	assert(castData)
	local data = abilityData[castData.abilityName]
	local targetSet = castData.targetSet	-- May need this after a Task.Wait() below, after we've cleared out data
	local impactDelay = 0.0
	local isInstantCast = (API.GetAbilityCastDuration(LOCAL_PLAYER, castData.abilityName) == 0.0)

	if not isInstantCast and data.animationKey then
		API_AS.FinishAnimation(castData.castId)
	end

	if not skipBroadcast then
		API_RE.BroadcastToServer("AES")
	end

	abilityCooldownEnds[castData.abilityName] = os.clock() + API.GetAbilityCooldown(castData.abilityName)
	playerCastData[LOCAL_PLAYER] = nil

	if data.onCastClient then
		impactDelay = data.onCastClient(LOCAL_PLAYER, targetSet)
	end

	if targetSet then
		Task.Spawn(function()
			Task.Wait(impactDelay)

			if data.selfTargetEffectTemplate then
				for _, target in pairs(targetSet) do
					if data.groundTargets then
						World.SpawnAsset(data.selfTargetEffectTemplate, {position = target})
					else
						if target:IsA("Player") then
							local effect = World.SpawnAsset(data.selfTargetEffectTemplate)
							effect:AttachToPlayer(target, "root")
						else
							World.SpawnAsset(data.selfTargetEffectTemplate, {parent = target})
						end
					end
				end
			end
		end)
	end
end

-- Owning client
function InterruptAbility()
	API_RE.Broadcast("AI", LOCAL_PLAYER)		-- For cast bars
	API_RE.BroadcastToServer("AIS")
	queuedAbilityName = nil
	queuedAbilityTarget = nil
	playerCastData[LOCAL_PLAYER] = nil
end

-- Server
function OnAbilityCastServer(player, abilityName, targetSet, castId, isInstantCast)
	assert(not playerCastData[player])
	local castData = {
		abilityName = abilityName,
		targetSet = targetSet,
		castId = castId,
		startTime = os.clock(),
	}
	playerCastData[player] = castData

	-- Bounce it back to other clients
	API_RE.BroadcastToAllPlayers("ACC", player, abilityName, targetSet, isInstantCast)

	if isInstantCast then	-- Instant casts only send one broadcast
		OnAbilityExecuteServer(player, true)
	end
end

-- Server
-- The second argument is nil when coming from an original broadcast, rather than networking a "false"
function OnAbilityExecuteServer(player, skipBroadcast)
	local castData = playerCastData[player]
	assert(castData)
	local abilityName = castData.abilityName
	local data = abilityData[abilityName]
	playerCastData[player] = nil

	if not skipBroadcast then
		API_RE.BroadcastToAllPlayers("AEC", player)
	end

	if data.onCastServer then		-- This can have a Task.Wait() in it, so it has to be last
		data.onCastServer(player, castData.targetSet)
	end
end

-- Server
function OnAbilityInterruptServer(player)
	local castData = playerCastData[player]
	assert(castData)
	API_AS.InterruptAnimation(player, castData.castId)
	playerCastData[player] = nil
	API_RE.BroadcastToAllPlayers("AIC", player)
end

-- Other clients
function OnAbilityCastClient(player, abilityName, targetSet, isInstantCast)
	if player ~= LOCAL_PLAYER then
		local data = abilityData[abilityName]
		local castData = {}
		castData.abilityName = abilityName
		castData.targetSet = targetSet
		castData.startTime = os.clock()
		playerCastData[player] = castData

		if data.otherCasterEffectTemplate then
			local effects = World.SpawnAsset(data.otherCasterEffectTemplate)
			effects:AttachToPlayer(player, "root")
		end

		if isInstantCast then
			OnAbilityExecuteClient(player)
		end
	end
end

-- Other clients
function OnAbilityExecuteClient(player)
	local castData = playerCastData[player]

	if castData and player ~= LOCAL_PLAYER then
		local data = abilityData[castData.abilityName]
		local targetSet = castData.targetSet	-- May need this after a Task.Wait() below, after we've cleared out data
		local impactDelay = 0.0
		playerCastData[player] = nil

		if data.onCastClient then
			impactDelay = data.onCastClient(player, targetSet)
		end

		if targetSet then
			Task.Spawn(function()
				Task.Wait(impactDelay)

				if data.otherTargetEffectTemplate then
					for _, target in pairs(targetSet) do
						if data.groundTargets then
							World.SpawnAsset(data.otherTargetEffectTemplate, {position = target})
						else
							if target:IsA("Player") then
								local effect = World.SpawnAsset(data.otherTargetEffectTemplate)
								effect:AttachToPlayer(target, "root")
							else
								World.SpawnAsset(data.otherTargetEffectTemplate, {parent = target})
							end
						end
					end
				end
			end)
		end
	end
end

-- Other clients
function OnAbilityInterruptClient(player)
	if player ~= LOCAL_PLAYER then
		API_RE.Broadcast("AI", player)		-- For cast bars
		playerCastData[player] = nil
	end
end

function API.IsGroundTargetActive()
	return groundTargetActive
end

-- Client
function Tick()
	-- Update ground targeting
	if groundTargetReticle then
		local hitResult = UI.GetCursorHitResult()

		if hitResult then
			groundTargetReticle:SetWorldPosition(hitResult:GetImpactPosition())
		end
	else
		groundTargetActive = false
	end

	-- Check queued ability
	if queuedAbilityName then
		if GetTimeUntilReady(queuedAbilityName) == 0.0 then
			if CanCast(queuedAbilityName, queuedAbilityTarget) then
				CastAbility(queuedAbilityName, queuedAbilityTarget)
			end

			queuedAbilityName = nil
			queuedAbilityTarget = nil
		end
	end

	local castData = playerCastData[LOCAL_PLAYER]

	-- Watch for cast finished, or interrupt if no longer valid
	if castData and castData.startTime + API.GetAbilityCastDuration(LOCAL_PLAYER, castData.abilityName) <= os.clock() then
		ExecuteAbility(false)
	elseif castData and not CanContinue(LOCAL_PLAYER, castData) then
		InterruptAbility()
	end
end

-- Owning client
-- The ordering here is intentional to get errors that are most useful
function IsTargetValid(player, target, abilityName)
	local data = abilityData[abilityName]
	assert(data.targets)
	local targetPosition = nil

	-- Does the caster have a target
	if not target then
		return false, "Target required"
	end

	if data.groundTargets then
		targetPosition = target
	else
		if target:IsA("Player") and target.isDead then		-- Is the player target dead
			return false, "Target is dead"
		end
		
		if not target:IsA("Player") then					-- Is the NPC target dead or asleep
			if API_NPC.IsDead(target) then
				return false, "Target is dead"
			end

			if API_NPC.IsAsleep(target) then
				return false, "Target is asleep"
			end
		end

		-- Is this a hostile ability with a friendly target
		if not data.friendlyTargetValid and target:IsA("Player") then
			return false, "Enemy target required"
		end

		-- Is this a friendly ability with a hostile target
		if not data.enemyTargetValid and not target:IsA("Player") then
			return false, "Friendly target required"
		end

		targetPosition = target:GetWorldPosition()
	end

	-- Is the target out of range
	if data.range then
		local targetRadius = 0.0

		if target:IsA("Player") then
			targetRadius = target:GetWorldScale().x * 50.0
		elseif target:IsA("CoreObject") then
			targetRadius = API_NPC.GetAllNPCData()[target].capsuleWidth / 2.0
		end

		if (targetPosition - player:GetWorldPosition()).size > data.range + targetRadius then
			return false, "Target out of range"
		end
	end

	--[[ (Currently disabled) Does this ability require facing and the target is behind the caster
	if data.requiresFacing then
		local offset = targetPosition - player:GetWorldPosition()

		if offset .. (player:GetWorldRotation() * Vector3.FORWARD) < 0.0 then
			return false, "Target is behind you"
		end
	end]]

	return true
end

-- Owning client
function IsCasterValid(player, abilityName)
	local data = abilityData[abilityName]

	if not API.AreEquipmentConstraintsSatisfied(LOCAL_PLAYER, abilityName) then
		return false
	end

	if not data.canMove then
		-- This sort of corresponds with "are we trying to move". We set acceleration to be quite high.
		if player:GetVelocity().size > player.maxWalkSpeed * 0.2 then
			return false
		end

		if not player.isGrounded then						-- Are we not on the ground
			return false
		end
	end

	if API_SE.IsStunned(player) then					-- Are we stunned
		return false, "You are stunned"
	end

	return true
end

-- Owning client
-- This means, how long until we can literally activate the ability object. In our terms, this is when we can 'cast'.
-- Note that as long as we are casting something, we should return non-zero.
function GetTimeUntilReady(abilityName)
	local data = abilityData[abilityName]
	local castData = playerCastData[LOCAL_PLAYER]
	local clock = os.clock()

	local t = 0.0

	-- Global cooldown
	t = math.max(t, globalCooldownEndTime - clock)

	-- Current casting
	if castData then
		local endTime = castData.startTime + API.GetAbilityCastDuration(LOCAL_PLAYER, castData.abilityName)

		if castData.abilityName ~= abilityName then
			t = math.max(t, 0.01, endTime - clock)
		else
			t = math.max(t, 0.01, endTime - clock + API.GetAbilityCooldown(abilityName))
		end
	end

	-- Regular cooldown
	if abilityCooldownEnds[abilityName] then
		t = math.max(t, abilityCooldownEnds[abilityName] - clock)
	end

	return t
end

-- Owning client
-- Like above, but only what should be shown in UI
function API.GetVisibleCooldownData(abilityName)
	local data = abilityData[abilityName]
	local castData = playerCastData[LOCAL_PLAYER]
	local clock = os.clock()

	-- Global cooldown
	local globalCooldownRemaining = math.max(0.0, globalCooldownEndTime - clock)
	local cooldownRemaining = 0.0

	-- Regular cooldown
	if not castData or castData.abilityName ~= abilityName then
		if abilityCooldownEnds[abilityName] then
			cooldownRemaining = math.max(0.0, abilityCooldownEnds[abilityName] - clock)
		end
	end

	if cooldownRemaining > globalCooldownRemaining then
		return {remaining = cooldownRemaining, total = API.GetAbilityCooldown(abilityName)}
	elseif globalCooldownRemaining > 0.0 then
		return {remaining = globalCooldownRemaining, total = GetGlobalCooldown()}
	end
end

-- Owning client
-- This wraps behavior for things like alt to self cast, or (future) spells that auto target self.
function GetEffectiveTarget(abilityName, setTargetIfAutotarget)
	local data = abilityData[abilityName]
	assert(data.targets)
	assert(not data.groundTargets)
	
	if data.friendlyTargetValid and altDown then
		return LOCAL_PLAYER
	end

	local target = API_T.GetTarget(LOCAL_PLAYER)

	if target then
		return target
	else
		local autoTarget = API_T.FindAutoTarget()

		if setTargetIfAutotarget then
			assert(autoTarget)
			API_T.TrySetTarget(autoTarget, true)
		end

		return autoTarget
	end
end

-- Owning client
-- Whether the user can press the hotkey
function API.CanTrigger(abilityName)
	local data = abilityData[abilityName]
	assert(playerAbilities[LOCAL_PLAYER][abilityName])

	if LOCAL_PLAYER.isDead then
		return false
	end

	if data.targets then
		if data.groundTargets then
			return true 
		else
			local targetValid, errorMessage = IsTargetValid(LOCAL_PLAYER, GetEffectiveTarget(abilityName, false), abilityName)

			if not targetValid then
				if errorMessage then
					API_RE.Broadcast("BannerMessage", errorMessage)
				end

				return false
			end
		end
	end

	local canCast, errorMessage = IsCasterValid(LOCAL_PLAYER, abilityName)

	if not canCast then
		if errorMessage then
			API_RE.Broadcast("BannerMessage", errorMessage)
		end

		return false
	end

	if GetTimeUntilReady(abilityName) > QUEUE_TIME then
		return false
	end

	return true
end

-- Owning client
-- Whether the user can queue up this action (or cast it). For a ground target spell, this is when you click to confirm
-- the target, otherwise this is the same as triggering.
function CanActivate(abilityName)
	local data = abilityData[abilityName]
	assert(playerAbilities[LOCAL_PLAYER][abilityName])

	if LOCAL_PLAYER.isDead then
		return false
	end

	if data.targets then
		local target = nil

		if data.groundTargets then
			target = groundTargetReticle:GetWorldPosition()
		else
			target = GetEffectiveTarget(abilityName, false)
		end

		local targetValid, errorMessage = IsTargetValid(LOCAL_PLAYER, target, abilityName)

		if not targetValid then
			if errorMessage then
				API_RE.Broadcast("BannerMessage", errorMessage)
			end

			return false
		end
	end

	local canCast, errorMessage = IsCasterValid(LOCAL_PLAYER, abilityName)

	if not canCast then
		if errorMessage then
			API_RE.Broadcast("BannerMessage", errorMessage)
		end

		return false
	end

	if GetTimeUntilReady(abilityName) > QUEUE_TIME then
		return false
	end

	return true
end

-- Owning client
-- Whether this ability can be cast right now.
function CanCast(abilityName, target)
	local data = abilityData[abilityName]
	assert(playerAbilities[LOCAL_PLAYER][abilityName])

	if LOCAL_PLAYER.isDead then
		return false
	end

	if data.targets then
		if not IsTargetValid(LOCAL_PLAYER, target, abilityName) then
			return false
		end
	end

	if not IsCasterValid(LOCAL_PLAYER, abilityName) then
		return false
	end

	if GetTimeUntilReady(abilityName) > 0.0 then
		return false
	end

	return true
end

-- Client
-- Whether this cast can continue (and should not be interrupted)
function CanContinue(player, castData)
	local data = abilityData[castData.abilityName]

	if player.isDead then
		return false
	end

	-- We only need one target to be valid to continue.
	if data.targets then
		local hasValidTarget = false

		for _, target in pairs(castData.targetSet) do
			if IsTargetValid(player, target, castData.abilityName) then
				hasValidTarget = true
				break
			end
		end

		if not hasValidTarget then
			return false
		end
	end

	if not IsCasterValid(player, castData.abilityName) then
		return false
	end

	return true
end

-- Owning client
function API.Trigger(abilityName)
	assert(API.CanTrigger(abilityName))

	local data = abilityData[abilityName]

	CancelGroundTargeting()

	if data.targets and data.groundTargets then
		groundTargetReticle = World.SpawnAsset(data.reticleTemplate)
		groundTargetAbilityName = abilityName
		groundTargetActive = true
	else
		local target = nil

		if data.targets then
			target = GetEffectiveTarget(abilityName, true)
		end

		if CanCast(abilityName, target) then
			CastAbility(abilityName, target)
		else
			queuedAbilityName = abilityName
			queuedAbilityTarget = target
		end
	end
end

-- Onwing Client and Server
function API.GivePlayerAbility(player, abilityName)
	if playerAbilities[player][abilityName] then
		playerAbilities[player][abilityName] = playerAbilities[player][abilityName] + 1
	else
		local data = abilityData[abilityName]
		assert(data)
		playerAbilities[player][abilityName] = 1
		API_RE.Broadcast("AbilityGained", player, abilityName)

		if not IS_CLIENT and data.animationKey then
			API_AS.AddAnimationReference(player, data.animationKey)
		end
	end
end

-- Onwing Client and Server
function API.RemovePlayerAbility(player, abilityName)
	assert(playerAbilities[player][abilityName])

	if playerAbilities[player][abilityName] > 1 then
		playerAbilities[player][abilityName] = playerAbilities[player][abilityName] - 1
	else
		local data = abilityData[abilityName]
		assert(data)

		if IS_CLIENT then
			if playerCastData[player] and playerCastData[player].abilityName == abilityName then
				playerCastData[LOCAL_PLAYER] = nil
			end

			if abilityName == groundTargetAbilityName then
				CancelGroundTargeting()
			end

			if queuedAbilityName == abilityName then
				queuedAbilityName = nil
				queuedAbilityTarget = nil
			end
		else
			local castData = playerCastData[player]

			if castData and castData.abilityName == abilityName then
				API_AS.InterruptAnimation(player, castData.castId)
				playerCastData[player] = nil
			end
		end

		playerAbilities[player][abilityName] = nil
		API_RE.Broadcast("AbilityRemoved", player, abilityName)

		if not IS_CLIENT and data.animationKey then
			API_AS.RemoveAnimationReference(player, data.animationKey)
		end
	end
end

-- Client and Server
function API.GetAbilityData(abilityName)
	return abilityData[abilityName]
end

-- Client and Server
function API.Initialize(isClient)
	IS_CLIENT = isClient

	if IS_CLIENT then
		LOCAL_PLAYER = Game.GetLocalPlayer()
		LOCAL_PLAYER.bindingPressedEvent:Connect(OnBindingPressed)
		LOCAL_PLAYER.bindingReleasedEvent:Connect(OnBindingRelease)
		API_RE.Connect("ACC", OnAbilityCastClient)
		API_RE.Connect("AEC", OnAbilityExecuteClient)
		API_RE.Connect("AIC", OnAbilityInterruptClient)

		local tick = Task.Spawn(Tick)
		tick.repeatCount = -1
	else
		API_RE.ConnectForPlayer("ACS", OnAbilityCastServer)
		API_RE.ConnectForPlayer("AES", OnAbilityExecuteServer)
		API_RE.ConnectForPlayer("AIS", OnAbilityInterruptServer)
	end
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)

for _, data in pairs(abilityDefinitions) do
	RegisterAbility(data)
end

return API
