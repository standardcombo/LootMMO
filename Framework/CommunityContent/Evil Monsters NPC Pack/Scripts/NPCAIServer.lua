--[[
	NPCAI - Server
	v0.11.2
	by: standardcombo
	contributions: DarkDev
	
	Logical state machine for an enemy NPC. Works in conjunction with NPCAttackServer.
	
	Will walk over terrain and any objects to get to its objective. To mark objects as not walkable,
	add to each one a custom property called "Walkable" of type boolean and set to false.
	
	See the NPC Kit README for more information.
--]]

-- Component dependencies
local MODULE = require( script:GetCustomProperty("ModuleManager") )
require ( script:GetCustomProperty("NPCManager") )
function NPC_MANAGER() return MODULE.Get("standardcombo.NPCKit.NPCManager") end
function COMBAT() return MODULE.Get("standardcombo.Combat.Wrap") end
function CROSS_CONTEXT_CALLER() return MODULE.Get("standardcombo.Utils.CrossContextCaller") end
function NAV_MESH() return _G.NavMesh end
function NAV_MESH_ZONES() return MODULE.Get_Optional("standardcombo.NPCKit.NavMeshZones") end


local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local ROTATION_ROOT = script:GetCustomProperty("RotationRoot"):WaitForObject()
local COLLIDER = script:GetCustomProperty("Collider"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):GetObject()
local ATTACK_COMPONENT = script:GetCustomProperty("AttackComponent"):WaitForObject()
HOMING_TARGET = script:GetCustomProperty("HomingTarget"):GetObject()
local ENGAGE_EFFECT = script:GetCustomProperty("EngageEffect")

local MOVE_SPEED = ROOT:GetCustomProperty("MoveSpeed") or 400
local TURN_SPEED = ROOT:GetCustomProperty("TurnSpeed") or 2
local PATROL_SPEED = ROOT:GetCustomProperty("PatrolSpeed") or (MOVE_SPEED / 3)
local LOGICAL_PERIOD = ROOT:GetCustomProperty("LogicalPeriod") or 0.5
local RETURN_TO_SPAWN = ROOT:GetCustomProperty("ReturnToSpawn")
local VISION_HALF_ANGLE = ROOT:GetCustomProperty("VisionHalfAngle") or 0
local VISION_RADIUS = ROOT:GetCustomProperty("VisionRadius") or 2500
local HEARING_RADIUS = ROOT:GetCustomProperty("HearingRadius") or 1000
local SEARCH_BONUS_VISION = ROOT:GetCustomProperty("SearchBonusVision") or 5000
local SEARCH_DURATION = ROOT:GetCustomProperty("SearchDuration") or 6
local POSSIBILITY_RADIUS = ROOT:GetCustomProperty("PossibilityRadius") or 600
local CHASE_RADIUS = ROOT:GetCustomProperty("ChaseRadius") or 3500
local MAX_CHASE_DISTANCE = ROOT:GetCustomProperty("MaxChaseDistance") or 25000
local ATTACK_RANGE = ROOT:GetCustomProperty("AttackRange") or 1500
local ATTACK_MIN_ANGLE = ROOT:GetCustomProperty("AttackMinAngle") or 180
local ATTACK_CAST_TIME = ROOT:GetCustomProperty("AttackCast") or 0.5
local ATTACK_RECOVERY_TIME = ROOT:GetCustomProperty("AttackRecovery") or 1.5
local ATTACK_COOLDOWN = ROOT:GetCustomProperty("AttackCooldown") or 0
local OBJECTIVE_THRESHOLD_DISTANCE_SQUARED = 900

MAX_HEALTH = ROOT:GetCustomProperty("CurrentHealth")

local PATHING_STEP = MOVE_SPEED * LOGICAL_PERIOD + 10
local PATHING_STEP_SQUARED = PATHING_STEP * PATHING_STEP

local RAY_DISTANCE_FROM_GROUND = COLLIDER:GetPosition().z + 400
local RAY_DISTANCE_DOWN_VECTOR = Vector3.New(0, 0, -900)

local VISION_RADIUS_SQUARED = VISION_RADIUS * VISION_RADIUS
local HEARING_RADIUS_SQUARED = HEARING_RADIUS * HEARING_RADIUS
local SEARCH_RADIUS_SQUARED = (VISION_RADIUS + SEARCH_BONUS_VISION) * (VISION_RADIUS + SEARCH_BONUS_VISION)
local CHASE_RADIUS_SQUARED = CHASE_RADIUS * CHASE_RADIUS
local MAX_CHASE_DISTANCE_SQUARED = MAX_CHASE_DISTANCE * MAX_CHASE_DISTANCE
local ATTACK_RANGE_SQUARED = ATTACK_RANGE * ATTACK_RANGE

local SPAWN_POSITION = ROOT:GetWorldPosition()

local DEAD_1_DURATION = 4
local DEAD_2_DURATION = 6

local STATE_SLEEPING = 0
local STATE_ENGAGING = 1
local STATE_ATTACK_CAST = 2
local STATE_ATTACK_RECOVERY = 3
local STATE_PATROLLING = 4
local STATE_LOOKING_AROUND = 5
local STATE_DEAD_1 = 6
local STATE_DEAD_2 = 7
local STATE_DISABLED = 8

local currentState = STATE_SLEEPING
local stateTime = 0

local logicStepDelay = 0
local target = nil
local moveObjective = nil
local nextMoveObjective = nil
local stepDestination = SPAWN_POSITION
local lastValidRootPosition = ROOT:GetWorldPosition()
local lastPosition = lastValidRootPosition
local intermediatePos = lastValidRootPosition
local velocity = Vector3.ZERO
local navMeshPath = nil
local searchStartPosition = nil
local searchEndPosition = nil
local searchTimeElapsed = -1
local searchPrecision = 1
local engageStartPosition = nil
local engageCooldown = 0
local attackCooldown = 0
local waitingForPath = false

local temporaryVisionAngle = nil
local temporaryVisionRadius = nil
local temporaryHearingRadius = nil


function SetState(newState)
	--print("NewState = " .. newState)

	if (newState == STATE_SLEEPING) then
		RootStopRotate()
		
	elseif (newState == STATE_ENGAGING) then
		--print("target = " .. tostring(target) .. ", moveSpeed = " .. tostring(MOVE_SPEED) .. ", attackRange = " .. ATTACK_RANGE)

		if currentState == STATE_SLEEPING or
		currentState == STATE_PATROLLING or
		currentState == STATE_LOOKING_AROUND then
			PlayEngageEffect()
			
			engageStartPosition = ROOT:GetWorldPosition()
		end

		if (not IsWithinRangeSquared(target, ATTACK_RANGE_SQUARED)) then
			local targetPosition = target:GetWorldPosition()
			StepTowards(targetPosition)
		end
		
		if navMeshPath and #navMeshPath > 0 and velocity.sizeSquared > 1 then
			local pos = ROOT:GetWorldPosition()
			local flatVel = Vector3.New(velocity.x, velocity.y, 0)
			local r = Rotation.New(flatVel, Vector3.UP)
			RootRotateTo(r, GetRotateToTurnSpeed(), false)
		else
			RootLookAtContinuous(target, true, TURN_SPEED)
		end

	elseif (newState == STATE_PATROLLING) then
		local targetPosition = moveObjective
		StepTowards(targetPosition)

		local pos = ROOT:GetWorldPosition()
		local direction = targetPosition - pos
		if navMeshPath and stepDestination then
			direction = stepDestination - pos
		end
		direction.z = 0 -- Lock pitch
		local r = Rotation.New(direction, Vector3.UP)
		RootRotateTo(r, GetRotateToTurnSpeed(), false)

	elseif (newState == STATE_LOOKING_AROUND) then
		--
		
	elseif (newState == STATE_DEAD_1) then
		ROOT:StopMove()
		RootStopRotate()
		SetCollision(false)

	elseif (newState == STATE_DEAD_2) then
		ROOT:MoveTo(ROOT:GetWorldPosition() + Vector3.New(0, 0, -500), DEAD_2_DURATION)

	elseif (newState == STATE_DISABLED) then
		ROOT:Destroy()
	end

	currentState = newState
	stateTime = 0
	
	if Object.IsValid(ROOT) then
		ROOT:SetNetworkedCustomProperty("CurrentState", newState)
	end
end


function Tick(deltaTime)
	stateTime = stateTime + deltaTime
	logicStepDelay = logicStepDelay - deltaTime
	engageCooldown = engageCooldown - deltaTime
	attackCooldown = attackCooldown - deltaTime
	
	if (searchTimeElapsed >= 0) then
		searchTimeElapsed = searchTimeElapsed + deltaTime
	end
	
	if (currentState == STATE_ATTACK_CAST or currentState == STATE_ATTACK_RECOVERY) and
		COMBAT().IsDead(target) then
		SetTarget(nil)
		EngageNearest()
		if (not target) then
			ResumePatrol()
		end
		
	elseif currentState == STATE_ATTACK_CAST and stateTime >= ATTACK_CAST_TIME then
		ExecuteAttack()
		attackCooldown = ATTACK_COOLDOWN
		SetState(STATE_ATTACK_RECOVERY)
	
	elseif currentState == STATE_ATTACK_RECOVERY and stateTime >= ATTACK_RECOVERY_TIME then
		SetState(STATE_ENGAGING)
	end
	
	if currentState == STATE_ENGAGING then
		if COMBAT().IsDead(target) then
			SetTarget(nil)
			
		elseif IsWithinRangeSquared(target, ATTACK_RANGE_SQUARED, ATTACK_MIN_ANGLE) then
			if attackCooldown <= 0 then
				SetState(STATE_ATTACK_CAST)
			end
		else
			UpdateMovement(deltaTime)
		end
		
	elseif currentState == STATE_PATROLLING then
		UpdateMovement(deltaTime)
		
		if ROOT:GetWorldPosition() == stepDestination then
			logicStepDelay = 0
		end
		
	elseif (currentState == STATE_DEAD_1 and stateTime >= DEAD_1_DURATION) then
		SetState(STATE_DEAD_2)

	elseif (currentState == STATE_DEAD_2 and stateTime >= DEAD_2_DURATION) then
		SetState(STATE_DISABLED)
	end

	if logicStepDelay <= 0 then
		logicStepDelay = LOGICAL_PERIOD

		if currentState == STATE_SLEEPING then
			EngageNearest()

		elseif currentState == STATE_ENGAGING then
			local chaseRadiusSquared = CHASE_RADIUS_SQUARED
			if (searchTimeElapsed >= 0 and searchTimeElapsed < SEARCH_DURATION * 4) then
				chaseRadiusSquared = SEARCH_RADIUS_SQUARED
			else
				searchTimeElapsed = -1
			end
			
			-- Sub-behavior where the NPC has a maximum distance it's willing to engage/chase
			if engageStartPosition and MAX_CHASE_DISTANCE_SQUARED > 0 then
				local pos = ROOT:GetWorldPosition()
				local engageDelta = pos - engageStartPosition
				if engageDelta.sizeSquared > MAX_CHASE_DISTANCE_SQUARED then
					engageCooldown = 1.5
					SetTarget(nil)
					ResumePatrol()
				end
			end
			
			--print("chaseRadiusSquared = " .. chaseRadiusSquared .. ", searchTimeElapsed = " .. searchTimeElapsed)
			
			if IsWithinRangeSquared(target, chaseRadiusSquared) then
				SetState(STATE_ENGAGING)
			else
				EngageNearest()

				if (not target) then
					--print("ResumePatrol 1")
					ResumePatrol()
				end
			end
			
		elseif currentState == STATE_PATROLLING then
			local pos = ROOT:GetWorldPosition()
			local delta = pos - moveObjective
			delta.z = 0
			if (delta.sizeSquared < OBJECTIVE_THRESHOLD_DISTANCE_SQUARED) then
				--print("OBJECTIVE REACHED")
				if nextMoveObjective then
					moveObjective = nextMoveObjective
					nextMoveObjective = nil
					SetState(STATE_PATROLLING)
					
				elseif RETURN_TO_SPAWN and moveObjective ~= SPAWN_POSITION then
					moveObjective = SPAWN_POSITION
					SetState(STATE_PATROLLING)
				else
					SetState(STATE_SLEEPING)
				end
			else
				EngageNearest()

				if (not target) then
					SetState(STATE_PATROLLING)
				end
			end
			
		elseif currentState == STATE_LOOKING_AROUND then
			if (searchTimeElapsed >= SEARCH_DURATION) then
				--print("ResumePatrol 2")
				ResumePatrol()
			else
				EngageNearest()
				if (not target) then
					DoLookAround()
				end
			end
		end
	end
	
	UpdateTemporaryProperties(deltaTime)
end


function SetTarget(newTarget)
	target = newTarget
	
	if Object.IsValid(target) then
		if currentState == STATE_SLEEPING 
		or currentState == STATE_PATROLLING 
		or currentState == STATE_LOOKING_AROUND then
			SetState(STATE_ENGAGING)
		end
	end
end


function ResumePatrol()
	--print("ResumePatrol")

	SetTarget(nil)
	
	if moveObjective then
		SetState(STATE_PATROLLING)
		
	elseif RETURN_TO_SPAWN then
		SetObjective(SPAWN_POSITION)
		
	else
		SetState(STATE_SLEEPING)
	end
end


function SetObjective(pos)
	--print("SetObjective = " .. tostring(pos))
	if (currentState == STATE_PATROLLING) then
		nextMoveObjective = pos
		
	elseif (not target) then
		moveObjective = pos
		SetState(STATE_PATROLLING)
	end
end


function ExecuteAttack()
	if ATTACK_COMPONENT then
		ATTACK_COMPONENT.context.Attack(target)
	end
end


local function GetClosestPointOnLineSegment(linePosA, linePosB, worldPos)
	local posToLineA = worldPos - linePosA
	local line = linePosB - linePosA
	local lineNormalized = line:GetNormalized()

	local t = lineNormalized .. posToLineA

	if t < 0 then
		return linePosA
	elseif t > line.size then
		return linePosB
	else
		return linePosA + lineNormalized * t
	end
end


local function StepTowardsFallback(targetPosition)
	local pos = ROOT:GetWorldPosition()
	navMeshPath = nil
	-- No NavMesh available, fallback
	
	-- Calculate step destination
	local direction = targetPosition - pos

	if (direction.sizeSquared > PATHING_STEP_SQUARED) then
		direction = direction:GetNormalized() * PATHING_STEP
	end
	
	if attemptOrthogonal then
		attemptOrthogonal = false
		local rng = math.random()
		direction = Rotation.New(0, 0, rng * 180 - 90) * direction
		direction = direction * 0.65
	end

	local rayStart = pos + direction
	rayStart.z = rayStart.z + RAY_DISTANCE_FROM_GROUND

	--print("pos = " .. tostring(pos) .. ", targetPosition = " .. tostring(targetPosition) .. ", rayStart = " .. tostring(rayStart))

	local hitResult = nil
	repeat
		local rayEnd = rayStart + RAY_DISTANCE_DOWN_VECTOR
		hitResult = World.Raycast(rayStart, rayEnd, {ignorePlayers = true})
		
		local isWalkable
		if hitResult then
			isWalkable = IsObjectWalkable(hitResult.other)
	
			if (not isWalkable) then
				rayStart = hitResult:GetImpactPosition() + Vector3.New(0,0,-0.5)
			end
		end
	until hitResult == nil or hitResult.other == nil or isWalkable

	if hitResult then
		--print("HitResult.other = " .. tostring(hitResult.other))

		local groundPos = hitResult:GetImpactPosition()
		stepDestination = groundPos
	else
		stepDestination = targetPosition
	end
end

local function FindPathOnNavMesh(targetPosition)
	if not Object.IsValid(ROOT) then return end
	
	local pos = ROOT:GetWorldPosition()
	waitingForPath = true
	navMeshPath = NAV_MESH().FindPath(pos, targetPosition)
	waitingForPath = false

	if navMeshPath then
		if #navMeshPath > 1 then
			-- Find the closest point on the current path
			local closestDist = 999999999.0
			local closestPoint = Vector3.ZERO
			local quickBreak = false
			local removePathIndex = 0
			for i = 1, #navMeshPath - 1 do
				local pointOnLine = GetClosestPointOnLineSegment(navMeshPath[i], navMeshPath[i+1], pos)
				local checkDist = (pointOnLine - pos).size
				if checkDist < closestDist then
					quickBreak = true
					closestDist = checkDist
					closestPoint = pointOnLine
					removePathIndex = i
				else
					if quickBreak then
						break
					end
				end
			end
			
			if removePathIndex > 0 then
				for _ = 1, removePathIndex - 1 do
					table.remove(navMeshPath, 1)
				end
				navMeshPath[1] = closestPoint
			end

			stepDestination = navMeshPath[1]
			
		elseif #navMeshPath == 0 then
			navMeshPath = nil
		end
	end
	
	if navMeshPath then
		local distSquared = (navMeshPath[1] - pos).sizeSquared
		if distSquared > VISION_RADIUS_SQUARED then
			navMeshPath = nil
		end
		
	elseif NAV_MESH_ZONES() and 
		NAV_MESH_ZONES().IsInsideZone(script) and
		not NAV_MESH_ZONES().IsTargetInsideSameZone(script, targetPosition) then
		
		StepTowardsFallback(targetPosition)
	end
end


function StepTowards(targetPosition)
	if NAV_MESH() and (not NAV_MESH_ZONES() or NAV_MESH_ZONES().IsInsideZone(script)) then
		
		if waitingForPath then
			return
		end

		if navMeshPath == nil or #navMeshPath == 0 then
			FindPathOnNavMesh(targetPosition)
		else
			Task.Spawn(function()
				FindPathOnNavMesh(targetPosition)
			end)
		end
	else
		StepTowardsFallback(targetPosition)
	end
end

local overlappingObjects = {}

function GetMoveSpeed()
	if currentState == STATE_PATROLLING then
		return PATROL_SPEED
	end
	return MOVE_SPEED
end


function GetVelocity()
	return velocity
end


function UpdateMovement(deltaTime)
	local pos = ROOT:GetWorldPosition()
	
	lastPosition = intermediatePos
	intermediatePos = pos
	velocity = pos - lastPosition
	
	-- Test overlap against other objects and adjust
	if TRIGGER then
		local overlaps = overlappingObjects
		for i,other in ipairs(overlaps) do
			if not Object.IsValid(other) then goto continue end
			
			local triggerPos = TRIGGER:GetWorldPosition()
			local otherPos = other:GetWorldPosition()
			
			local v = triggerPos - otherPos
			v.z = 0
			local distance = v.size
			local radii = 50 * (other:GetWorldScale().y + TRIGGER:GetWorldScale().y)
			local removeAmount = radii - distance
			if removeAmount > 0 and distance ~= 0 then
				v = v / distance * removeAmount * 0.5
				pos = pos + v
			end
			
			::continue::
		end
	end
	
	-- Move forward
	if navMeshPath then
		local moveAmount = GetMoveSpeed() * deltaTime
		while moveAmount > 0 do
			stepDestination = navMeshPath[1]
			local moveV = stepDestination - pos
			local distance = moveV.size
			
			if (distance <= moveAmount) then
				pos = stepDestination

				table.remove(navMeshPath, 1)
				if #navMeshPath > 0 then
					moveAmount = moveAmount - distance
				else
					navMeshPath = nil
					moveAmount = 0
				end
			else
				pos = pos + moveV / distance * moveAmount
				moveAmount = 0
			end
		end
	else
		local moveV = stepDestination - pos
		local distance = moveV.size
		local moveAmount = GetMoveSpeed() * deltaTime
		
		if (distance <= moveAmount) then
			pos = stepDestination
		else
			pos = pos + moveV / distance * moveAmount
		end
	end
	
	ROOT:SetWorldPosition(pos)
	
	if NAV_MESH_ZONES() and 
		NAV_MESH_ZONES().IsInsideZone(script) and 
		not NAV_MESH_ZONES().IsInsideValidNavMesh(script) then
	
		ROOT:SetWorldPosition(lastValidRootPosition)
		
		attemptOrthogonal = true
	else
		lastValidRootPosition = pos
	end
end


function EngageNearest()
	if engageCooldown > 0 then return end
	
	SetTarget(nil)
	
	local enemy = FindNearestEnemy()
	if enemy then
		SetTarget(enemy)
	end
end

function FindNearestEnemy()
	local myPos = ROOT:GetWorldPosition()
	local forwardVector = ROTATION_ROOT:GetWorldRotation() * Vector3.FORWARD
	local myTeam = GetTeam()
	
	local nearestEnemy = nil
	local nearestDistSquared = 9999999999
	
	-- Players
	for _,enemy in ipairs(Game.GetPlayers()) do
		if (enemy.team ~= myTeam and not enemy.isDead) then
			local canSee,distSquared = CanSeeEnemy(enemy, myPos, forwardVector, nearestDistSquared)
			if canSee then
				nearestDistSquared = distSquared
				nearestEnemy = enemy
				--print("Distance to enemy = " .. tostring(math.sqrt(nearestDistSquared)))
			end
		end
	end
	
	-- Other NPCs
	local enemyNPCs = NPC_MANAGER().GetEnemies(myTeam)
	for _,enemy in ipairs(enemyNPCs) do
		if not COMBAT().IsDead(enemy) then
			local canSee,distSquared = CanSeeEnemy(enemy, myPos, forwardVector, nearestDistSquared)
			if canSee then
				nearestDistSquared = distSquared
				nearestEnemy = enemy
				--print("Distance to enemy = " .. tostring(math.sqrt(nearestDistSquared)))
			end
		end
	end
	return nearestEnemy
end

function CanHear(noisePos)
	local myPos = ROOT:GetWorldPosition()
	local delta = noisePos - myPos
	local distSquared = delta.sizeSquared
	if (distSquared < GetHearingRadiusSquared()) then
		return true
	end
	return false
end

function CanSeeEnemy(enemy, myPos, forwardVector, nearestDistSquared)
	local enemyPos = enemy:GetWorldPosition()
	local delta = enemyPos - myPos
	local distSquared = delta.sizeSquared
	
	if (distSquared > nearestDistSquared) then
		return false, distSquared
	end
	
	local canSeeFromDistance = (distSquared <= GetVisionRadiusSquared())
		
	-- Is searching
	if (not canSeeFromDistance and
		currentState == STATE_LOOKING_AROUND and
		distSquared < SEARCH_RADIUS_SQUARED and
		SEARCH_RADIUS_SQUARED > GetVisionRadiusSquared()) then
		
		local p = (distSquared - GetVisionRadiusSquared()) / (SEARCH_RADIUS_SQUARED - GetVisionRadiusSquared())
		p = CoreMath.Lerp(0.5 / searchPrecision, 1, p)
		local rng = math.random()
		if (rng >= p) then
			canSeeFromDistance = true
		end
		--print("rng = " .. rng .. ", p = " .. p)
	end
	
	-- Angle vision in front
	if (canSeeFromDistance and
		GetVisionHalfAngle() > 0 and GetVisionHalfAngle() < 360) then

		local distance = math.sqrt(distSquared)
		local directionToEnemy = delta / distance
		local angle = Angle(directionToEnemy, forwardVector)
		if (angle > GetVisionHalfAngle()) then
			canSeeFromDistance = false
		end
	end
	
	-- Test if there is something obstructing the view. If searching for the enemy ignore this constraint
	local ENEMY_RADIUS = 150 -- TODO
	if (canSeeFromDistance and 
		(currentState ~= STATE_LOOKING_AROUND or (searchEndPosition - enemyPos).size > 400) and
		distSquared > ENEMY_RADIUS * ENEMY_RADIUS) then
		
		local rayStart = script:GetWorldPosition()
		local rayEnd = enemyPos - delta:GetNormalized() * ENEMY_RADIUS
		local myTeam = GetTeam()
				
		local hitResult = World.Raycast(rayStart, rayEnd, {ignorePlayers = true, ignoreTeams = myTeam})
		if hitResult then
			canSeeFromDistance = false
			
			--CoreDebug.DrawLine(rayStart, rayEnd, {duration = 1, color = Color.RED})
		else
			--CoreDebug.DrawLine(rayStart, rayEnd, {duration = 1, color = Color.WHITE})
		end
	end
	
	--print("dist = " .. tostring(math.sqrt(distSquared)) .. ", " .. tostring(distSquared) .. ", " .. tostring(GetVisionRadiusSquared()))
	return canSeeFromDistance, distSquared
end

function Angle(normV1, normV2)
	local value = normV1 .. normV2
	value = CoreMath.Clamp(value, -1, 1)
	return math.acos(value) * 57.29578
end


function IsWithinRangeSquared(enemy, rangeSquared, minAngle)
	if Object.IsValid(enemy) then
		local myPos = ROOT:GetWorldPosition()
		local enemyPos = enemy:GetWorldPosition()
		local delta = enemyPos - myPos
		if delta.sizeSquared < rangeSquared then
			if minAngle then
				local forwardVector = ROTATION_ROOT:GetWorldRotation() * Vector3.FORWARD
				delta.z = 0
				local angleBetweenForward = Angle(forwardVector, delta:GetNormalized())
				return angleBetweenForward <= minAngle
			end
			return true
		end
	end
	return false
end

function GetVisionHalfAngle()
	if temporaryVisionAngle ~= nil then
		return temporaryVisionAngle.value
	end
	return VISION_HALF_ANGLE
end

function GetVisionRadiusSquared()
	if temporaryVisionRadius ~= nil then
		return temporaryVisionRadius.value
	end
	return VISION_RADIUS_SQUARED
end

function GetHearingRadiusSquared()
	if temporaryHearingRadius ~= nil then
		return temporaryHearingRadius.value
	end
	return HEARING_RADIUS_SQUARED
end

function SetTemporaryVisionHalfAngle(angle, duration)
	temporaryVisionAngle = {value = angle, timeRemaining = duration}
end

function SetTemporaryVisionRadius(radius, duration)
	temporaryVisionRadius = {value = radius, timeRemaining = duration}
end

function SetTemporaryHearingRadius(radius, duration)
	temporaryHearingRadius = {value = radius, timeRemaining = duration}
end

function UpdateTemporaryProperties(deltaTime)
	temporaryVisionAngle = UpdateTemporary(temporaryVisionAngle, deltaTime)
	temporaryVisionRadius = UpdateTemporary(temporaryVisionRadius, deltaTime)
	temporaryHearingRadius = UpdateTemporary(temporaryHearingRadius, deltaTime)
end

function UpdateTemporary(property, deltaTime)
	if property ~= nil then
		property.timeRemaining = property.timeRemaining - deltaTime
		if property.timeRemaining <= 0 then
			return nil
		end
	end
	return property
end

function SetCollision(enabled)
	if enabled then
		COLLIDER.collision = Collision.INHERIT
	else
		COLLIDER.collision = Collision.FORCE_OFF
	end
end


function IsAlive()
	return currentState < STATE_DEAD_1
end


function OnObjectDamaged(id, prevHealth, dmgAmount, impactPosition, impactRotation, sourceObject)
	if engageCooldown > 0 then return end
	
	if currentState == STATE_SLEEPING or 
	currentState == STATE_PATROLLING or 
	currentState == STATE_LOOKING_AROUND then
		if Object.IsValid(sourceObject) and GetObjectTeam(sourceObject) ~= GetTeam() and 
			not COMBAT().IsDead(sourceObject) and CanHear(impactPosition) then
			Search(impactPosition, sourceObject:GetWorldPosition())
		end
		
	elseif currentState == STATE_ENGAGING and
	target ~= sourceObject and
	Object.IsValid(target) and
	Object.IsValid(sourceObject) and
	dmgAmount > 0 then
		-- Behavior where NPC changes target if being attacked by another target that's closer
		local myId = ROOT:GetCustomProperty("ObjectId")
		if myId == id then
			local myPos = script:GetWorldPosition()
			local distanceToCurrentTarget = (target:GetWorldPosition() - myPos).sizeSquared
			local distanceToNewTarget = (sourceObject:GetWorldPosition() - myPos).sizeSquared
			if distanceToNewTarget < distanceToCurrentTarget / 2 then
				SetTarget(sourceObject)
			end
		end
	end
end

function Search(fromPos, toPos)
	--print("Search")
	searchStartPosition = fromPos
	searchEndPosition = toPos
	searchTimeElapsed = 0
	
	if (currentState == STATE_LOOKING_AROUND) then
		searchPrecision = searchPrecision * 2
	else
		searchPrecision = 1
	end
	
	DoLookAround()
	SetState(STATE_LOOKING_AROUND)
end

function DoLookAround()
	local t = 1
	if (SEARCH_DURATION > 0) then
		t = searchTimeElapsed / SEARCH_DURATION
	end
	local searchPos = Vector3.Lerp(searchStartPosition, searchEndPosition, t)
	local area = math.ceil(POSSIBILITY_RADIUS / searchPrecision)
	searchPos.x = searchPos.x + math.random(-area, area)
	searchPos.y = searchPos.y + math.random(-area, area)
	
	local myPos = ROOT:GetWorldPosition()
	local forward = searchPos - myPos
	forward.z = 0 -- Lock pitch
	local rot = Rotation.New(forward, Vector3.UP)
	
	RootRotateTo(rot, GetRotateToTurnSpeed(), false)
end

function RootRotateTo(rotation, speed, isLocalSpace)
	--CROSS_CONTEXT_CALLER().Call(function()
	ROTATION_ROOT:RotateTo(rotation, speed, isLocalSpace)
	--end)
end

function RootLookAtContinuous(targetObj, lockPitch, speed)
	--CROSS_CONTEXT_CALLER().Call(function()
	if targetObj.isServerOnly and targetObj.parent and 
	not targetObj.parent.isServerOnly then
		targetObj = targetObj.parent
	end
	
	if targetObj:IsA("CoreObject") or targetObj:IsA("Player") then
		ROTATION_ROOT:LookAtContinuous(targetObj, lockPitch, speed)
	else
		-- Fallback in case it's not possible to look at the object (e.g. Projectile)
		local targetPos = targetObj:GetWorldPosition()
		local myPos = ROOT:GetWorldPosition()
		local forward = targetPos - myPos
		local rot = Rotation.New(forward, Vector3. UP)
		
		ROTATION_ROOT:RotateTo(rot, GetRotateToTurnSpeed(), false)
	end
	--end)
end

function RootStopRotate()
	--CROSS_CONTEXT_CALLER().Call(function()
	ROTATION_ROOT:StopRotate()
	--end)
end

function GetRotateToTurnSpeed()
	local turnTime = 0.25
	if TURN_SPEED > 0 then
		turnTime = 1 / TURN_SPEED
	end
	return turnTime
end


function IsObjectWalkable(object)
	if object == nil then return false end
	
	local isWalkable, hasProperty = object:GetCustomProperty("Walkable")
	if (hasProperty and not isWalkable) then
		return false
	end
	return true
end


function PlayEngageEffect()
	if ENGAGE_EFFECT then
		CROSS_CONTEXT_CALLER().Call(function()
			local pos = script:GetWorldPosition()
			World.SpawnAsset(ENGAGE_EFFECT, {position = pos})
		end)
	end
end


function OnObjectDestroyed(id)
	if IsAlive() then
		local myId = ROOT:GetCustomProperty("ObjectId")
		if myId == id then
			SetState(STATE_DEAD_1)
		end
	end
end

local damagedListener = Events.Connect("ObjectDamaged", OnObjectDamaged)
local destroyedListener = Events.Connect("ObjectDestroyed", OnObjectDestroyed)

function Cleanup()
	--print("Cleanup()")
	if damagedListener then
		damagedListener:Disconnect()
		damagedListener = nil
	end
	if destroyedListener then
		destroyedListener:Disconnect()
		destroyedListener = nil
	end
end

function OnDestroyed(obj)
	--print("OnDestroyed()")
	Cleanup()
end
ROOT.destroyEvent:Connect(OnDestroyed)



function OnBeginOverlap(whichTrigger, other)
	if other == COLLIDER then return end
	if other:IsA("StaticMesh") then		
		if not IsObjectWalkable(other) then
			table.insert(overlappingObjects, other)
		end
	end
end

function OnEndOverlap(whichTrigger, other)
	for i,obj in ipairs(overlappingObjects) do
		if other == obj then
			table.remove(overlappingObjects, i)
			break
		end
	end
end

if TRIGGER then
	TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)
	TRIGGER.endOverlapEvent:Connect(OnEndOverlap)
end


function GetTeam()
	return ROOT:GetCustomProperty("Team")
end

function GetObjectTeam(object)
	if object.team ~= nil then
		return object.team
	end
	local templateRoot = object:FindTemplateRoot()
	if templateRoot then
		return templateRoot:GetCustomProperty("Team")
	end
	return nil
end


function OnPropertyChanged(object, propertyName)
	if propertyName == "Team" then
		HandleTeamChanged()
	end
end

function HandleTeamChanged()
	COLLIDER.team = GetTeam()
end
HandleTeamChanged()

ROOT.networkedPropertyChangedEvent:Connect(OnPropertyChanged)


NPC_MANAGER().Register(script)
NPC_MANAGER().RegisterCollider(script, COLLIDER)

