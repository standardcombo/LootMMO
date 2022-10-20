local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_EP = require(script:GetCustomProperty("APIEnemyPathing"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_PP = require(script:GetCustomProperty("APIPlayerPassives"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local NAV_MESH_FOLDER = script:GetCustomProperty("NavMeshFolder"):WaitForObject()
local NPC_FOLDER = script:GetCustomProperty("NPC_Folder"):WaitForObject()

local DESPAWN_TIME = 90.0
local SUMMON_DESPAWN_TIME = 30.0
local TASK_HISTORY_LENGTH = 8

--[[
-- Hitpoints and target are stored as a networked property on the npc
-- The first task in taskHistory is also stored in the same way
CoreObject -> table:
	table taskHistory			-- int -> string
	table taskCooldownEndTimes	-- string -> float
	float currentTaskEndTime	-- 0.0 means endless
	float nextMoveUpdateTime	-- To avoid constant calls to MoveTo, or changing between stare and move a lot
	Vector3 nextWaypoint		-- Current MoveTo() target
	table threatTable			-- Object -> float
	bool shouldBeStunned 		-- Should we be in the stunned task?
	bool shouldMoveUpdate		-- Should we do a move update next frame?
]]
local npcStates = {}
local activePulls = {}			-- CoreObject -> true

local frameIndex = 0			-- So we can print errors if tasks yield
local tickPaused = false

function IsTableEmpty(table)
	for _, _ in pairs(table) do
		return false
	end

	return true
end

function IsAsleep(npc)
	-- NPC hasn't been set up yet
	if not npcStates[npc] then
		return true
	end

	return npcStates[npc].taskHistory[1] == API_NPC.STATE_ASLEEP
end

function IsResetting(npc)
	-- NPC hasn't been set up yet
	if not npcStates[npc] then
		return false
	end

	return npcStates[npc].taskHistory[1] == API_NPC.STATE_RESETTING
end

function SetCurrentTask(npc, task, interrupted)
	local npcData = API_NPC.GetAllNPCData()[npc]
	local npcState = npcStates[npc]
	local tasks = API_NPC.GetAllTaskData()
	local previousTask = npcState.taskHistory[1]

	if previousTask then
		-- Should we stop moving?
		if previousTask == API_NPC.STATE_CHASING or previousTask == API_NPC.STATE_RESETTING then
			if task ~= API_NPC.STATE_CHASING and task ~= API_NPC.STATE_RESETTING then
				npc:StopMove()
				npcState.nextWaypoint = nil
			end
		end

		local taskData = tasks[previousTask]

		if taskData and taskData.onTaskEnd then
			local prevFrame = frameIndex
			taskData.onTaskEnd(npc, interrupted)
			assert(frameIndex == prevFrame, string.format("NPC task %s server end function yielded", previousTask))
		end
	end

	if previousTask == API_NPC.STATE_IDLE and task ~= API_NPC.STATE_IDLE then
		if npcData.onPulledEventName then
			API_RE.Broadcast(npcData.onPulledEventName)
		end
	end

	if previousTask ~= API_NPC.STATE_RESETTING and task == API_NPC.STATE_RESETTING then
		if npcData.onResetEventName then
			API_RE.Broadcast(npcData.onResetEventName)
		end
	end

	if previousTask ~= API_NPC.STATE_DEAD and task == API_NPC.STATE_DEAD then
		if npcData.onDiedEventName then
			API_RE.Broadcast(npcData.onDiedEventName)
		end
	end

	npcState.taskHistory[TASK_HISTORY_LENGTH] = nil
	table.insert(npcState.taskHistory, 1, task)

	-- We assume that the client will get updates fast enough to see every task. If they miss one, the only effect will
	-- be some missed cosmetics. We also toggle the parity every change so the same task can be repeated.
	_, _, p = API_NPC.DecodeTaskString(npc:GetCustomProperty("CurrentTask"))
	local newTaskString = API_NPC.EncodeTaskString(task, interrupted, not p)
	npc:SetNetworkedCustomProperty("CurrentTask", newTaskString)
end

function ResetPulls()
	activePulls = {}
end

function ResetNPC(npc)
	local npcData = API_NPC.GetAllNPCData()[npc]
	local npcState = npcStates[npc]
	API_NPC.SetHealthFraction(npc, 1.0)
	API_NPC.SetTarget(npc, nil)
	npcState.taskHistory = {}
	npcState.taskCooldownEndTimes = {}
	npcState.currentTaskEndTime = 0.0
	npcState.nextMoveUpdateTime = 0.0
	npcState.threatTable = {}
	npcState.shouldBeStunned = false
	npcState.shouldMoveUpdate = false
end

function UpdateCurrentTask(npc)
	assert(not IsAsleep(npc))
	local npcData = API_NPC.GetAllNPCData()[npc]
	local npcState = npcStates[npc]
	local tasks = API_NPC.GetAllTaskData()
	-- Player position is in their middle. NPC position is at their root, so we adjust
	local distanceToTarget = (API_NPC.GetTarget(npc):GetWorldPosition() - Vector3.UP * 100.0 - npc:GetWorldPosition()).size

	local totalPriorty = 0.0
	local possibleTasks = {}		-- String -> float

	for _, taskName in pairs(npcData.taskList) do
		local taskData = tasks[taskName]
		assert(taskData)
		local cooldownEndTime = npcState.taskCooldownEndTimes[taskName]

		if not cooldownEndTime or cooldownEndTime <= time() then
			if taskData.range == 0.0 or taskData.range >= distanceToTarget then
				local priority = taskData.getPriority(npc, npcState.taskHistory)
				assert(priority >= 0.0)
				
				if priority > 0.0 then
					totalPriorty = totalPriorty + priority
					possibleTasks[taskName] = priority
				end
			end
		end
	end

	if IsTableEmpty(possibleTasks) then
		local currentTask = npcState.taskHistory[1]

		if currentTask ~= API_NPC.STATE_CHASING and currentTask ~= API_NPC.STATE_STARING then
			if npcData.immobile then
				SetCurrentTask(npc, API_NPC.STATE_STARING, false)
			else
				SetCurrentTask(npc, API_NPC.STATE_CHASING, false)
			end
		end
	else
		local r = math.random() * totalPriorty

		for taskName, priority in pairs(possibleTasks) do
			if r < priority then
				local taskData = tasks[taskName]
				SetCurrentTask(npc, taskName, false)
				npcState.taskCooldownEndTimes[taskName] = time() + taskData.cooldown
				local duration = nil

				if taskData.onTaskStart then
					local prevFrame = frameIndex
					duration = taskData.onTaskStart(npc, npcState.threatTable)
					assert(frameIndex == prevFrame, string.format("NPC task %s server start function yielded", taskName))
				end

				if duration and duration > 0.0 then
					npcState.currentTaskEndTime = time() + duration
				else
					npcState.currentTaskEndTime = 0.0
				end

				return
			else
				r = r - priority
			end
		end
	end
end

function MoveAlongPath(npc, deltaTime, path)
	assert(not IsAsleep(npc))
	local npcData = API_NPC.GetAllNPCData()[npc]
	local npcState = npcStates[npc]
	local npcPosition = npc:GetWorldPosition()
	local speed = npcData.speed * API_SE.GetCharacterMoveSpeedMultiplier(npc)
	local stepSize = speed * deltaTime
	local targetWaypoint = npcPosition		-- We'll replace this immediately

	-- Find the first waypoint far enough away, or the last one if we don't have enough
	for _, wayPoint in pairs(path) do
		if (npcPosition - targetWaypoint).size < stepSize then
			targetWaypoint = wayPoint
		else
			break
		end
	end

	if npcState.nextWaypoint ~= targetWaypoint or npcState.shouldMoveUpdate then
		npcState.nextWaypoint = targetWaypoint
		local moveDuration = (targetWaypoint - npcPosition).size / speed
		npc:MoveTo(targetWaypoint, moveDuration)
		API_NPC.LookAtTargetWithoutPitch(npc, targetWaypoint)

		-- We only update every 0.5 seconds, but don't want pauses at waypoints
		npcState.nextMoveUpdateTime = time() + math.min(0.5, moveDuration)
	end
end

function GetXYDistance(p1, p2)
	return math.sqrt((p1.x - p2.x) ^ 2 + (p1.y - p2.y) ^ 2)
end

function GetNPCsInPull(pull)
	local result = {}

	for _, child in pairs(pull:GetChildren()) do
		if npcStates[child] then
			table.insert(result, child)
		end
	end

	return result
end

function AddPlayerToThreatTable(npc, player)
	local npcState = npcStates[npc]
	assert(not IsAsleep(npc))
	assert(not npcState.threatTable[player])
	assert(player:IsA("Player"))

	if not API_NPC.GetTarget(npc) then
		API_NPC.SetTarget(npc, player)
	end

	npcState.threatTable[player] = 0.0

	-- Get the rest of the pull too
	for _, pullNpc in pairs(GetNPCsInPull(npc.parent)) do
		if not API_NPC.IsDead(pullNpc) and not npcStates[pullNpc].threatTable[player] then
			if not API_NPC.GetTarget(pullNpc) then
				API_NPC.SetTarget(pullNpc, player)
			end

			npcStates[pullNpc].threatTable[player] = 0.0
		end
	end
end

function GetThreatTable(npc)
	assert(not IsAsleep(npc))
	local npcState = npcStates[npc]
	return npcState.threatTable
end

function SetThreat(npc, player, threat)
	assert(not IsAsleep(npc))
	local npcState = npcStates[npc]
	local target = API_NPC.GetTarget(npc)

	if not npcState.threatTable[player] then
		AddPlayerToThreatTable(npc, player)
	end

	npcState.threatTable[player] = threat

	-- Pulling aggro
	if target and target ~= sourceCharacter and npcState.threatTable[player] > npcState.threatTable[target] * 1.2 then
		API_NPC.SetTarget(npc, player)
	end
end

function AddThreat(npc, player, addedThreat)
	assert(not IsAsleep(npc))
	local npcState = npcStates[npc]
	SetThreat(npc, player, npcState.threatTable[player] + addedThreat)
end

function OnDamaged(sourceCharacter, npc, amount)
	assert(not IsAsleep(npc))
	
	if sourceCharacter:IsA("Player") then
		local npcState = npcStates[npc]

		if not npcState.threatTable[sourceCharacter] then
			AddPlayerToThreatTable(npc, sourceCharacter)
		end

		local addedThreat = amount * API_PP.GetPlayerThreatMultiplier(sourceCharacter)
		AddThreat(npc, sourceCharacter, addedThreat)
	end
end

function OnHealed(sourceCharacter, npc, amount)
end

function SetStunnedFlag(npc, isStunned)
	assert(not IsAsleep(npc))
	npcStates[npc].shouldBeStunned = isStunned
end

function SuggestMoveUpdate(npc)
	assert(not IsAsleep(npc))
	npcStates[npc].shouldMoveUpdate = true
end

function Wake(npc)
	assert(npcStates[npc].taskHistory[1] == API_NPC.STATE_ASLEEP)
	SetCurrentTask(npc, API_NPC.STATE_IDLE, false)
end

function OnNPCCreated(npc, data)
	local npcState = {}
	npcState.taskHistory = {}
	npcState.taskCooldownEndTimes = {}
	npcState.currentTaskEndTime = 0.0
	npcState.nextMoveUpdateTime = 0.0
	npcState.shouldBeStunned = false
	npcState.shouldMoveUpdate = false
	npcState.threatTable = {}
	npcStates[npc] = npcState
	API_NPC.SetHealthFraction(npc, 1.0)
	SetCurrentTask(npc, API_NPC.STATE_ASLEEP, false)

	-- Inherit our spawn parent's target and threat table entries
	if data.spawnParent then
		for enemy, threat in pairs(npcStates[data.spawnParent].threatTable) do
			npcState.threatTable[enemy] = 0.0
		end

		local target = API_NPC.GetTarget(data.spawnParent)

		if target then
			SetCurrentTask(npc, API_NPC.STATE_CHASING, false)
			API_NPC.SetTarget(npc, target)
		else
			-- Our parent already reset or died
			KillNPC(npc)
		end
	end
end


function WakePull(pull)
	activePulls[pull] = true

	for _, npc in pairs(GetNPCsInPull(pull)) do
		Wake(npc)
	end
end

function IsNPCInCombat(npc)
	local currentTask = npcStates[npc].taskHistory[1]

	if currentTask == API_NPC.STATE_ASLEEP then
		return false
	end

	if currentTask == API_NPC.STATE_IDLE then
		return false
	end

	if currentTask == API_NPC.STATE_DEAD then
		return false
	end

	return true
end

function IsPlayerInCombat(player)
	for npc, _ in pairs(API_NPC.GetAllNPCData()) do
		local npcState = npcStates[npc]
		local currentTask = npcState.taskHistory[1]

		if IsNPCInCombat(npc) then
			for threatPlayer, _ in pairs(npcState.threatTable) do
				if threatPlayer == player then
					return true
				end
			end
		end
	end

	return false
end

function KillNPC(npc, skipLoot)
	local npcState = npcStates[npc]
	local npcData = API_NPC.GetAllNPCData()[npc]

	SetCurrentTask(npc, API_NPC.STATE_DEAD, true)
	API_NPC.SetTarget(npc, nil)
	API_NPC.SetHealthFraction(npc, 0.0)

	if npcData.spawnParent then
		npcState.currentTaskEndTime = time() + SUMMON_DESPAWN_TIME
	else
		if not skipLoot then
			for _, player in pairs(Game.GetPlayers()) do
				for _, dropInfo in pairs(npcData.dropData) do
					if not dropInfo.minDifficulty or dropInfo.minDifficulty <= API_DS.GetDifficultyLevel() then
						if math.random() <= dropInfo.chance then
							API_RE.Broadcast("DropLoot", dropInfo.key, npc:GetWorldPosition() + Vector3.UP * 20.0, player)
						end

						if player.serverUserData.statSheet then
							local multiplier = API_DS.GetExperienceMultiplier()
							player.serverUserData.statSheet:AddExperience(npcData.experience * multiplier)
						end
					end
				end
			end
		end

		npcState.currentTaskEndTime = time() + DESPAWN_TIME
	end

	if npcData.despawnTime then
		npcState.currentTaskEndTime = time() + npcData.despawnTime
	end

	npcState.threatTable = {}
	npcState.shouldBeStunned = false
	npcState.shouldMoveUpdate = false
	npc:StopMove()
	npc:StopRotate()

	API_RE.Broadcast("NPC_Died", npc)
end

function DespawnNPC(npc)
	KillNPC(npc, true)

	Task.Spawn(function()
		Task.Wait()			-- Need one frame for ticks to clear status effects and such
		npcStates[npc] = nil
		npc:Destroy()
	end)
end

function IsPullCleared(pull)
	for _, npc in pairs(GetNPCsInPull(pull)) do
		if not API_NPC.IsDead(npc) then
			return false
		end
	end

	return true
end

function SetTickPaused(isPaused)
	tickPaused = isPaused
end

function Tick(deltaTime)
	if tickPaused then
		return
	end

	-- Update Pulls
	for _, pull in pairs(NPC_FOLDER:GetChildren()) do
		if not activePulls[pull] then
			local prerequisite = pull:GetCustomProperty("Prerequisite")

			if prerequisite then
				local requiredPull = prerequisite:GetObject()

				if activePulls[requiredPull] and IsPullCleared(requiredPull) then
					WakePull(pull)
				end
			else
				WakePull(pull)
			end
		end
	end

	-- Update NPCS
	for npc, npcData in pairs(API_NPC.GetAllNPCData()) do
		local npcState = npcStates[npc]
		local npcPosition = npc:GetWorldPosition()
		local currentTask = npcState.taskHistory[1]

		if currentTask == API_NPC.STATE_DEAD then
			if time() >= npcState.currentTaskEndTime then
				npcStates[npc] = nil
				npc:Destroy()
			end
		elseif currentTask ~= API_NPC.STATE_ASLEEP then
			-- Are we dead?
			if API_NPC.IsDead(npc) or (npcData.spawnParent and API_NPC.IsDead(npcData.spawnParent)) then
				KillNPC(npc)
			else
				if currentTask == API_NPC.STATE_RESETTING then
					-- Spawned npcs die instead of resetting
					if npcData.spawnParent then
						KillNPC(npc)
					else
						-- We're home
						if GetXYDistance(npcPosition, npcData.spawnPosition) < 10.0 then
							ResetNPC(npc)
							SetCurrentTask(npc, API_NPC.STATE_IDLE, false)
							npc:SetWorldRotation(npcData.spawnRotation)
							npcState.currentTaskEndTime = 0.0
						else
							-- Heal and remove debuffs constantly while resetting
							API_NPC.SetHealthFraction(npc, 1.0)

							for i, _ in pairs(API_SE.GetStatusEffectsOnCharacter(npc)) do
								API_SE.RemoveStatusEffect(npc, i)
							end

							-- Update movement
							if time() >= npcState.nextMoveUpdateTime or npcState.shouldMoveUpdate then
								local path = API_EP.GetPath(npcPosition, npcData.spawnPosition)

								if path then
									MoveAlongPath(npc, deltaTime, path)
								else
									warn(string.format("NPC spawned at %s couldn't find a path to reset", tostring(npcData.spawnPosition)))
									npc:SetWorldPosition(npcData.spawnPosition)
								end
							end
						end
					end
				else
					-- Update threat with new nearby players
					for _, player in pairs(Game.FindPlayersInSphere(npcPosition, npcData.engageRange, {ignoreDead = true})) do
						if not npcState.threatTable[player] then
							AddPlayerToThreatTable(npc, player)
						end
					end

					-- Remove invalid threat table entries
					local removedTarget = false

					for player, _ in pairs(npcState.threatTable) do
						local removePlayer = true

						if Object.IsValid(player) then
							local distance = (npc:GetWorldPosition() - player:GetWorldPosition()).size

							if not player.isDead then
								if not npcData.dropCombatDistance or npcData.dropCombatDistance > distance then
									removePlayer = false
								end
							end
						end

						if removePlayer then
							-- player may not be valid, so we can't access its members
							removedTarget = true
							local targetId = API_NPC.GetTargetId(npc)

							for _, otherPlayer in pairs(Game.GetPlayers()) do
								if otherPlayer ~= player and otherPlayer.id == targetId then
									removedTarget = false
									break
								end
							end

							if removedTarget then
								API_NPC.SetTarget(npc, nil)
							end

							npcState.threatTable[player] = nil
						end
					end

					if removedTarget then
						for player, threat in pairs(npcState.threatTable) do
							if not API_NPC.GetTarget(npc) or npcState.threatTable[API_NPC.GetTarget(npc)] < threat then
								API_NPC.SetTarget(npc, player)
							end
						end

						-- Threat table is empty
						if not API_NPC.GetTarget(npc) then
							assert(IsTableEmpty(npcState.threatTable))
							ResetNPC(npc)
							SetCurrentTask(npc, API_NPC.STATE_RESETTING, true)
						end
					end

					if API_NPC.GetTarget(npc) then
						-- Should we be stunned?
						if npcState.shouldBeStunned and not npcData.immuneToStun then
							if currentTask ~= API_NPC.STATE_STUNNED then
								SetCurrentTask(npc, API_NPC.STATE_STUNNED, true)
							end
						elseif -- Always looking for a new task in these states
							currentTask == API_NPC.STATE_IDLE or
							currentTask == API_NPC.STATE_CHASING or
							currentTask == API_NPC.STATE_STARING or
							(not npcState.shouldBeStunned and currentTask == API_NPC.STATE_STUNNED) or
							(npcState.currentTaskEndTime ~= 0.0 and npcState.currentTaskEndTime <= time()) then

							UpdateCurrentTask(npc)
						end
					end
				end

				currentTask = npcState.taskHistory[1]	-- We may have changed tasks since we last read this

				if currentTask == API_NPC.STATE_CHASING or currentTask == API_NPC.STATE_STARING then
					if not npcData.immobile and (time() >= npcState.nextMoveUpdateTime or npcState.shouldMoveUpdate) then
						-- Movement
						local targetPosition = API_NPC.GetTarget(npc):GetWorldPosition() - Vector3.UP * 100.0
						local path = API_EP.GetPath(npcPosition, targetPosition)
						assert(path and GetXYDistance(path[#path], targetPosition) < 100.0)

						if path and (path[#path] - npcPosition).size > 100.0 then
							if currentTask ~= API_NPC.STATE_CHASING then
								SetCurrentTask(npc, API_NPC.STATE_CHASING, false)
							end

							MoveAlongPath(npc, deltaTime, path)
						else
							if currentTask ~= API_NPC.STATE_STARING then
								SetCurrentTask(npc, API_NPC.STATE_STARING, false)
								npcState.nextMoveUpdateTime = time() + 0.5		-- Don't want rapid toggling

								if GetXYDistance(targetPosition, npcPosition) > 10.0 then
									API_NPC.LookAtTargetWithoutPitch(npc, targetPosition)
								end
							end
						end
					end
				end
			end
		end

		npcState.shouldMoveUpdate = false
	end
end

local functionTable = {}
functionTable.OnDamaged = OnDamaged
functionTable.OnHealed = OnHealed
functionTable.SetStunnedFlag = SetStunnedFlag
functionTable.SuggestMoveUpdate = SuggestMoveUpdate
functionTable.IsAsleep = IsAsleep
functionTable.IsResetting = IsResetting
functionTable.IsPlayerInCombat = IsPlayerInCombat
functionTable.GetThreatTable = GetThreatTable
functionTable.SetThreat = SetThreat
functionTable.AddThreat = AddThreat
functionTable.IsPullCleared = IsPullCleared
functionTable.GetNPCsInPull = GetNPCsInPull
functionTable.DespawnNPC = DespawnNPC
functionTable.ResetPulls = ResetPulls
functionTable.SetTickPaused = SetTickPaused
API_NPC.RegisterSystem(functionTable, false)
API_NPC.RegisterNPCFolder(NPC_FOLDER)
API_EP.RegisterRectangles(NAV_MESH_FOLDER)
Task.Wait()		-- Work around networked property backing data issue
API_RE.Connect("NPC_Created", OnNPCCreated)

for npc, data in pairs(API_NPC.GetAllNPCData()) do
	OnNPCCreated(npc, data)
end

-- Separate task so yielding in tick doesn't break this
local frameIndexTask = Task.Spawn(function()
	frameIndex = frameIndex + 1
	Task.Wait()
end)

frameIndexTask.repeatCount = -1
