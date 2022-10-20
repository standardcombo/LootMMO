local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local API = {}

-- Predefined Tasks:
API.STATE_ASLEEP = "asleep"			-- Functionally disabled, cannot be interacted with
API.STATE_IDLE = "idle"
API.STATE_CHASING = "chasing"
API.STATE_STARING = "staring"		-- This is chasing without moving
API.STATE_RESETTING = "resetting"
API.STATE_DEAD = "dead"
API.STATE_STUNNED = "stunned"

local IS_CLIENT = nil

local tasks = {}		-- string -> table
local npcs = {}			-- CoreObject -> table
local npcSpawnData = {}	-- array of tables (templateId, position, rotation, parent)
local systemFunctions = nil

-- nil RegisterTaskClient(string, <string>, <function>, <function>) [Client]
-- Registers a named task for npcs, with optional task start and task end handlers.
-- They have the following signatures:
-- onTaskStart(npc, AnimatedMesh)
-- onTaskEnd(npc, AnimatedMesh, interrupted)
function API.RegisterTaskClient(taskName, effectTemplate, onTaskStart, onTaskEnd)
	local data = {}
	data.effectTemplate = effectTemplate
	data.onTaskStart = onTaskStart
	data.onTaskEnd = onTaskEnd
	tasks[taskName] = data
end

-- nil RegisterTaskServer(string, float, float, function, <function>, <function>) [Server]
-- Registers a named task for npcs, with range, cooldown, priority function, and optional task start and task end handlers.
-- They have the following signatures:
-- float getPriority(npc, taskHistory)
-- <float> onTaskStart(npc, threatTable)
-- 	   This should return the duration of this task, and spawn a task if delayed action is needed instead of calling
--     Task.Wait(), which may cause strange or broken behavior. A duration of 0.0 means do not end this task.
-- nil onTaskEnd(npc, interrupted)
function API.RegisterTaskServer(taskName, range, cooldown, getPriority, onTaskStart, onTaskEnd)
	local data = {}
	data.range = range
	data.cooldown = cooldown
	data.getPriority = getPriority
	data.onTaskStart = onTaskStart
	data.onTaskEnd = onTaskEnd
	tasks[taskName] = data
end

function API.RegisterNPCFolder(npcFolder)
	function AddNPC(npc)
		-- Specifically, all NPCs should be client contexts so we don't have to worry about objects replicating at
		-- different times
		assert(npc:IsA("NetworkContext"))

		local data = {}
		data.name = npc:GetCustomProperty("Name")
		data.level = npc:GetCustomProperty("Level")
		data.baseMaxHitPoints = npc:GetCustomProperty("BaseMaxHitPoints")
		data.speed = npc:GetCustomProperty("MoveSpeed")
		data.engageRange = npc:GetCustomProperty("EngageRange")
		data.immuneToStun = npc:GetCustomProperty("ImmuneToStun")
		data.immobile = npc:GetCustomProperty("Immobile")
		data.capsuleHeight = npc:GetCustomProperty("CapsuleHeight")
		data.capsuleWidth = npc:GetCustomProperty("CapsuleWidth")
		data.experience = npc:GetCustomProperty("Experience")
		data.dropCombatDistance = npc:GetCustomProperty("DropCombatDistance")
		data.despawnTime = npc:GetCustomProperty("DespawnTime")

		data.spawnPosition = npc:GetWorldPosition()
		data.spawnRotation = npc:GetWorldRotation()

		if not IS_CLIENT then
			if not npc.serverUserData.spawned then
				local spawnData = {}
				spawnData.templateId = npc.sourceTemplateId
				spawnData.position = data.spawnPosition
				spawnData.rotation = data.spawnRotation
				spawnData.parent = npc.parent
				table.insert(npcSpawnData, spawnData)
			end

			npc.serverUserData.spawned = nil

			data.spawnParent = npc.serverUserData.spawnParent
			npc.serverUserData.spawnParent = nil
		end

		data.taskList = {}
		local i = 1
		
		while true do
			local task = npc:GetCustomProperty(string.format("Task%d", i))

			if task then
				data.taskList[i] = task
				i = i + 1
			else
				break
			end
		end

		data.dropData = {}
		i = 1

		while true do
			local key = npc:GetCustomProperty(string.format("DropKey%d", i))
			local chance = npc:GetCustomProperty(string.format("DropChance%d", i))
			local minDifficulty = npc:GetCustomProperty(string.format("DropMinDifficulty%d", i))

			if key then
				assert(chance)
				data.dropData[i] = {key = key, chance = chance, minDifficulty = minDifficulty}
				i = i + 1
			else
				break
			end
		end

		data.onPulledEventName = npc:GetCustomProperty("OnPulledEventName")
		data.onResetEventName = npc:GetCustomProperty("OnResetEventName")
		data.onDiedEventName = npc:GetCustomProperty("OnDiedEventName")
		data.movementEffectTemplate = npc:GetCustomProperty("MovementEffectTemplate")
		data.deathEffectTemplate = npc:GetCustomProperty("DeathEffectTemplate")
		data.animatedMesh = npc:FindDescendantByType("AnimatedMesh")

		if npc:GetCustomProperty("FollowRoot") then
			data.followRoot = npc:GetCustomProperty("FollowRoot"):GetObject()		-- This will give nil on server
		end

		npcs[npc] = data

		API_RE.Broadcast("NPC_Created", npc, data)

		npc.destroyEvent:Connect(function(npc)
			npcs[npc] = nil

			API_RE.Broadcast("NPC_Destroyed", npc)
		end)
	end

	function FindNPCs_R(root)
		for _, child in pairs(root:GetChildren()) do
			-- We assume anything with a "HealthFraction" custom property is an npc
			_, isNPC = child:GetCustomProperty("HealthFraction")

			if isNPC then
				AddNPC(child)
			else
				FindNPCs_R(child)
			end
		end
	end

	FindNPCs_R(npcFolder)

	npcFolder.descendantAddedEvent:Connect(function(ancestor, newChild)
		Task.Wait()		-- Networked custom properties are not available for a frame
		-- We assume anything with a "HealthFraction" custom property is an npc
		if Object.IsValid(newChild) then		-- Children can be destroyed immediately in some cases
			_, isNPC = newChild:GetCustomProperty("HealthFraction")

			if isNPC then
				AddNPC(newChild)
			end
		end
	end)
end

-- Server only
function OnResetDungeon()
	systemFunctions.SetTickPaused(true)
	-- Waits are added to avoid spiking the server
	for npc, _ in pairs(npcs) do
		systemFunctions.DespawnNPC(npc)
		Task.Wait()
	end

	for _, spawnData in pairs(npcSpawnData) do
		local npc = World.SpawnAsset(spawnData.templateId, {parent = spawnData.parent})
		npc:SetWorldPosition(spawnData.position)
		npc:SetWorldRotation(spawnData.rotation)
		npc.serverUserData.spawned = true
		Task.Wait()
	end

	systemFunctions.ResetPulls()
	systemFunctions.SetTickPaused(false)
end

-- Server only
function API.SpawnNPC(templateId, spawnParent, position, rotation)
	local npc = World.SpawnAsset(templateId, {parent = spawnParent.parent})
	-- We do these separately so they are world coordinates
	npc:SetWorldPosition(position)
	npc:SetWorldRotation(rotation)
	-- Pass this value to descendantAddedEvent just above
	npc.serverUserData.spawnParent = spawnParent
	npc.serverUserData.spawned = true
	return npc
end

function API.RegisterSystem(functionTable, isClient)
	systemFunctions = functionTable
	IS_CLIENT = isClient

	if not IS_CLIENT then
		API_RE.Connect("ResetDungeon", OnResetDungeon)
	end
end

-- table GetAllTaskData() [Client, Server]
-- Returns a list of all task data.
function API.GetAllTaskData()
	return tasks
end

-- table GetAllNPCData() [Client, Server]
-- Returns a list of all NPC data.
function API.GetAllNPCData()
	return npcs
end

function API.GetMaxHitPoints(npc)
	return math.max(1, #Game.GetPlayers()) * npcs[npc].baseMaxHitPoints * API_DS.GetEnemyHealthMultiplier()
end

function API.GetHitPoints(npc)
	-- Separate lines so we don't return both values from GetCustomProperty()
	local healthFraction = npc:GetCustomProperty("HealthFraction")
	return healthFraction * API.GetMaxHitPoints(npc)
end

function API.SetHitPoints(npc, hitPoints)
	assert(not systemFunctions.IsAsleep(npc))
	npc:SetNetworkedCustomProperty("HealthFraction", hitPoints / API.GetMaxHitPoints(npc))
end

function API.GetHealthFraction(npc)
	return npc:GetCustomProperty("HealthFraction")
end

function API.SetHealthFraction(npc, healthFraction)
	npc:SetNetworkedCustomProperty("HealthFraction", healthFraction)
end

function API.ApplyDamage(sourceCharacter, npc, amount)
	assert(not systemFunctions.IsAsleep(npc))
	local currentHealth = API.GetHitPoints(npc)
	systemFunctions.OnDamaged(sourceCharacter, npc, amount)
	API.SetHitPoints(npc, math.max(0.0, currentHealth - amount))
end

function API.ApplyHealing(sourceCharacter, npc, amount)
	assert(not systemFunctions.IsAsleep(npc))
	local currentHealth = API.GetHitPoints(npc)
	systemFunctions.OnHealed(sourceCharacter, npc, amount)
	API.SetHitPoints(npc, math.min(API.GetMaxHitPoints(npc), currentHealth + amount))
end

function API.SetTarget(npc, target)
	assert(not systemFunctions.IsAsleep(npc))

	if target then
		npc:SetNetworkedCustomProperty("TargetID", target.id)
	else
		npc:SetNetworkedCustomProperty("TargetID", "")
	end
end

function API.GetTarget(npc)
	local id = npc:GetCustomProperty("TargetID")

	if id ~= "" then
		for _, player in pairs(Game.GetPlayers()) do
			if player.id == id then
				return player
			end
		end

		-- This means the player left, and whatever we are doing with this call is probably going to be incorrect
		-- On client this is just visual (and could just be timing), so that's okay
		assert(IS_CLIENT)
	end
end

function API.GetTargetId(npc)
	return npc:GetCustomProperty("TargetID")
end

function API.IsDead(npc)
	return API.GetHealthFraction(npc) == 0.0
end

function API.SetStunned(npc, isStunned)
	assert(not systemFunctions.IsAsleep(npc))
	systemFunctions.SetStunnedFlag(npc, isStunned)
end

function API.SuggestMoveUpdate(npc)
	assert(not systemFunctions.IsAsleep(npc))
	systemFunctions.SuggestMoveUpdate(npc)
end

function API.IsAsleep(npc)
	return systemFunctions.IsAsleep(npc)
end

function API.IsPlayerInCombat(player)
	return systemFunctions.IsPlayerInCombat(player)
end

function FindSphereToCapsuleDistance(sphereCenter, sphereRadius, capsuleCenter, capsuleHeight, capsuleWidth)
	local capsuleRadius = capsuleWidth / 2.0
	local capsuleTopCenter = capsuleCenter + Vector3.UP * (capsuleHeight - capsuleWidth) / 2.0
	local capsuleBottomCenter =  capsuleCenter - Vector3.UP * (capsuleHeight - capsuleWidth) / 2.0

	if sphereCenter.z >= capsuleTopCenter.z then
		return math.max(0.0, (sphereCenter - capsuleTopCenter).size - sphereRadius - capsuleRadius)
	elseif sphereCenter.z <= capsuleBottomCenter.z then
		return math.max(0.0, (sphereCenter - capsuleBottomCenter).size - sphereRadius - capsuleRadius)
	else
		local xyOffset = sphereCenter - capsuleCenter
		xyOffset.z = 0.0
		return math.max(0.0, xyOffset.size - sphereRadius - capsuleRadius)
	end
end

function API.GetAwakeNPCsInSphere(center, radius)
	local result = {}

	for npc, _ in pairs(npcs) do
		if not API.IsDead(npc) and not systemFunctions.IsAsleep(npc) and not systemFunctions.IsResetting(npc) then
			local npcData = npcs[npc]
			local npcPosition = nil

			if npcData.animatedMesh then
				-- This is client only, intended to be as accurate as possible. We can never expect it to match anyway
				npcPosition = npcData.animatedMesh:GetWorldPosition()
			else
				npcPosition = npc:GetWorldPosition()
			end

			if FindSphereToCapsuleDistance(center, radius, npcPosition, npcData.capsuleHeight, npcData.capsuleWidth) == 0.0 then
				table.insert(result, npc)
			end
		end
	end

	return result
end

function API.GetAwakeNPCs()
	local result = {}

	for npc, _ in pairs(npcs) do
		if not API.IsDead(npc) and not systemFunctions.IsAsleep(npc) then
			table.insert(result, npc)
		end
	end

	return result
end

function API.GetNumAwakeNPCsInPull(pull)
	local result = 0

	for _, npc in pairs(systemFunctions.GetNPCsInPull(pull)) do
		if not API.IsDead(npc) and not systemFunctions.IsAsleep(npc) then
			result = result + 1
		end
	end

	return result
end

function API.LookAtTargetWithoutPitch(npc, target)
	assert(not systemFunctions.IsAsleep(npc))
	local direction = target - npc:GetWorldPosition()
	direction.z = 0.0
	npc:SetWorldRotation(Rotation.New(direction, Vector3.UP))
end

function API.GetRandomCharacterInThreatTable(threatTable)
	local temp = {}

	for character, _ in pairs(threatTable) do
		table.insert(temp, character)
	end

	return temp[math.random(#temp)]
end

-- This encoding is horribly inefficient, but it's really easy to debug and doesn't change enough for it to matter
function API.EncodeTaskString(task, interrupted, parity)
	function BoolToString(bool)
		if bool then
			return "t"
		else
			return "f"
		end
	end

	return string.format("%s%s%s", BoolToString(interrupted), BoolToString(parity), task)
end

function API.DecodeTaskString(taskString)
	if taskString then
		local interrupted = (string.sub(taskString, 1, 1) == "t")
		local parity = (string.sub(taskString, 2, 2) == "t")
		local task = string.sub(taskString, 3)
		return task, interrupted, parity
	end
end

function API.GetThreatTable(npc)
	return systemFunctions.GetThreatTable(npc)
end

function API.SetThreat(npc, player, threat)
	systemFunctions.SetThreat(npc, player, threat)
end

function API.AddThreat(npc, player, addedThreat)
	systemFunctions.AddThreat(npc, player, addedThreat)
end

function API.IsPullCleared(pull)
	return systemFunctions.IsPullCleared(pull)
end

return API
