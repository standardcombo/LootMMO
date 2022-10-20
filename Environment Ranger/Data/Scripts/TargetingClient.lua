local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_T = require(script:GetCustomProperty("APITargeting"))
local API_ID = require(script:GetCustomProperty("API_ID"))
local API_A = require(script:GetCustomProperty("APIAbility"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local TARGET_MARKER = script:GetCustomProperty("TargetMarker"):WaitForObject()
local TARGET_LIGHT = script:GetCustomProperty("TargetLight"):WaitForObject()
local TARGET_CHANGE_SOUND = script:GetCustomProperty("TargetChangeSound"):WaitForObject()

local AUTO_TARGET_BINDING = ROOT:GetCustomProperty("AutoTargetBinding")
local AUTO_TARGET_HISTORY_DURATION = ROOT:GetCustomProperty("AutoTargetHistoryDuration")
local AUTO_TARGET_MAX_RANGE = ROOT:GetCustomProperty("AutoTargetMaxRange")

local LOCAL_PLAYER = Game.GetLocalPlayer()
local RATE_LIMIT_PER_SECOND = 6.0		-- We rate limit to avoid hitting event limits

local autoTargetHistory = {}
local lastAutoTargetTime = 0.0
local targetChangeTimeHistory = {}

-- Clicking in world or using auto targeting only targets enemies. Players can use their party frames to target allies
-- or themselves

function FindRayCapsuleCollisionDistance(rayStart, rayDirection, capsuleCenter, capsuleHeight, capsuleWidth)
	-- We find collision with the top full sphere, bottom full sphere, and cylinder, and return whichever is closest
	local closestDistance = math.huge
	local rayHat = rayDirection:GetNormalized()
	local capsuleRadius = capsuleWidth / 2.0
	local capsuleTopCenter = capsuleCenter + Vector3.UP * (capsuleHeight - capsuleWidth) / 2.0
	local capsuleBottomCenter =  capsuleCenter - Vector3.UP * (capsuleHeight - capsuleWidth) / 2.0
	-- Specifically distance of closest approach
	local topDistance = (rayHat ^ (capsuleTopCenter - rayStart)).size
	local bottomDistance = (rayHat ^ (capsuleBottomCenter - rayStart)).size

	if topDistance <= capsuleRadius then
		local topRayLength = rayHat .. (capsuleTopCenter - rayStart) - (capsuleRadius ^ 2 - topDistance ^ 2) ^ (0.5)

		if topRayLength < closestDistance then
			closestDistance = topRayLength
		end
	end

	if bottomDistance <= capsuleRadius then
		local bottomRayLength = rayHat .. (capsuleBottomCenter - rayStart) - (capsuleRadius ^ 2 - bottomDistance ^ 2) ^ (0.5)
		
		if bottomRayLength < closestDistance then
			closestDistance = bottomRayLength
		end
	end

	local xyOffset = capsuleCenter - rayStart
	xyOffset.z = 0.0
	local xyRayhat = Vector3.New(rayHat.x, rayHat.y, 0.0):GetNormalized()
	-- Closest approach again
	local centerXYDistance = (xyRayhat ^ xyOffset).size

	if centerXYDistance <= capsuleRadius then
		local centerXYRayLength = xyRayhat .. xyOffset - (capsuleRadius ^ 2 - centerXYDistance ^ 2) ^ (0.5)
		local centerRayLength = centerXYRayLength / Vector3.New(rayHat.x, rayHat.y, 0.0).size
		local centerCollision = rayStart + centerRayLength * rayHat

		-- We checked against an infinite cylinder, we only care about this specific part
		if centerCollision.z < capsuleTopCenter.z and centerCollision.z > capsuleBottomCenter.z then
			if centerRayLength < closestDistance then
				closestDistance = centerRayLength
			end
		end
	end

	if closestDistance ~= math.huge then
		return closestDistance
	end
end

function FindClickTarget()
	local viewPosition = LOCAL_PLAYER:GetViewWorldPosition()
	local viewForward = LOCAL_PLAYER:GetViewWorldRotation() * Vector3.FORWARD
	local cursorPoint = UI.GetCursorPlaneIntersection(viewPosition + viewForward * 100.0, viewForward)

	if cursorPoint then
		local cursorForward = cursorPoint - viewPosition
		local currentTarget = API_T.GetTarget(LOCAL_PLAYER)
		local closestTarget = nil
		local closestDistance = math.huge
		local hitCurrentTarget = false

		for npc, data in pairs(API_NPC.GetAllNPCData()) do
			if not API_NPC.IsDead(npc) then
				local capsuleCenter = npc:GetWorldPosition() + Vector3.UP * data.capsuleHeight / 2.0
				-- Fudge the capsule size to make it easier to click
				local capsuleHeight = data.capsuleHeight * 1.4
				local capsuleWidth = data.capsuleWidth * 1.4
				local distance = FindRayCapsuleCollisionDistance(viewPosition, cursorForward, capsuleCenter, capsuleHeight, capsuleWidth)

				if distance then
					if npc == currentTarget then
						hitCurrentTarget = true
					elseif distance < closestDistance then
						closestDistance = distance
						closestTarget = npc
					end
				end
			end
		end

		for _, player in pairs(Game.GetPlayers()) do
			if not player.isDead then
				local capsuleCenter = player:GetWorldPosition()
				-- Fudge the capsule size to make it easier to click (a bit less than enemies)
				local capsuleHeight = player:GetWorldScale().z * 240.0
				local capsuleWidth = capsuleHeight * 0.5
				local distance = FindRayCapsuleCollisionDistance(viewPosition, cursorForward, capsuleCenter, capsuleHeight, capsuleWidth)

				if distance then
					if player == currentTarget then
						hitCurrentTarget = true
					elseif distance < closestDistance then
						closestDistance = distance
						closestTarget = player
					end
				end
			end
		end

		if closestTarget then
			return closestTarget
		elseif hitCurrentTarget then
			return currentTarget
		end
	end
end

function FindAutoTarget()
	-- Check if we need to clear history
	if os.clock() > lastAutoTargetTime + AUTO_TARGET_HISTORY_DURATION then
		autoTargetHistory = {}
	end

	lastAutoTargetTime = os.clock()

	local currentTarget = API_T.GetTarget(LOCAL_PLAYER)
	local viewPosition = LOCAL_PLAYER:GetViewWorldPosition()
	local viewForward = LOCAL_PLAYER:GetViewWorldRotation() * Vector3.FORWARD
	local candidates = {}

	-- We care how close they are to our character, but the angle in our view
	for npc, data in pairs(API_NPC.GetAllNPCData()) do
		local distance = (npc:GetWorldPosition() - LOCAL_PLAYER:GetWorldPosition()).size
		local dot = (npc:GetWorldPosition() - viewPosition):GetNormalized() .. viewForward

		if not API_NPC.IsDead(npc) and not API_NPC.IsAsleep(npc) and dot > 0.7 and distance <= AUTO_TARGET_MAX_RANGE then
			local priority = (dot - 0.55) / distance
			table.insert(candidates, {target = npc, priority = priority})
		end
	end

	table.sort(candidates, function(a, b) return a.priority > b.priority end)	-- High to low

	-- Find the first candidate that isn't in our history or our current target (which may have been from another method)
	-- We also mark their history rank for the next step if this one falls through
	for _, candidateData in pairs(candidates) do
		if candidateData.target ~= currentTarget then
			local inHistory = false

			for i, target in pairs(autoTargetHistory) do
				if candidateData.target == target then
					inHistory = true
					candidateData.rank = i
					break
				end
			end

			if not inHistory then
				return candidateData.target
			end
		end
	end

	-- All candidates have been targeted before, find the least recently targeted one
	local minRank = #autoTargetHistory + 1
	local target = nil

	for _, candidateData in pairs(candidates) do
		if candidateData.rank and candidateData.rank < minRank then
			minRank = candidateData.rank
			target = candidateData.target
		end
	end

	return target
end

function TrySetTarget(target, isAutoTarget)
	local currentTarget = API_T.GetTarget(LOCAL_PLAYER)

	if target == currentTarget then
		return
	end

	if isAutoTarget then
		local index = nil

		for i, previousTarget in pairs(autoTargetHistory) do
			if target == previousTarget then
				index = i
				break
			end
		end

		if index then
			table.remove(autoTargetHistory, index)
		end

		table.insert(autoTargetHistory, target)
	end

	table.insert(targetChangeTimeHistory, t)
	TARGET_CHANGE_SOUND:Play()
	API_T.SetTarget_Direct(target)
end

function OnBindingPressed(player, binding)
	local t = os.clock()

	while targetChangeTimeHistory[1] and targetChangeTimeHistory[1] < t - 1.0 do
		table.remove(targetChangeTimeHistory, 1)
	end

	if #targetChangeTimeHistory >= RATE_LIMIT_PER_SECOND then
		return
	end

	if binding == "ability_primary" and UI.IsCursorVisible() and not API_A.IsGroundTargetActive() then
		autoTargetHistory = {}			-- Clear auto target history
		TrySetTarget(FindClickTarget(), false)
	elseif binding == AUTO_TARGET_BINDING then
		local autoTarget = FindAutoTarget()
		
		if autoTarget then
			TrySetTarget(FindAutoTarget(), true)
		end
	end
end

function OnDamageDone(sourceCharacter, targetCharacter, amount, overkill, tags)
	local currentTarget = API_T.GetTarget(LOCAL_PLAYER)

	if sourceCharacter and targetCharacter == LOCAL_PLAYER and not currentTarget then
		if not sourceCharacter:IsA("Player") and not API_NPC.IsDead(sourceCharacter) then
			TARGET_CHANGE_SOUND:Play()
			API_T.SetTarget_Direct(sourceCharacter)
		end
	end
end

function Tick(deltaTime)
	local currentTarget = API_T.GetTarget(LOCAL_PLAYER)
	TARGET_MARKER.visibility = Visibility.FORCE_OFF
	TARGET_LIGHT.visibility = Visibility.FORCE_OFF

	if currentTarget then
		if currentTarget:IsA("Player") then
			if currentTarget.isDead then
				API_T.SetTarget_Direct(nil)
				return
			end

			local playerScale = currentTarget:GetWorldScale()
			TARGET_MARKER:SetWorldPosition(currentTarget:GetWorldPosition() - playerScale.z * 100.0 * Vector3.UP)
			TARGET_MARKER:SetWorldScale(playerScale)
			TARGET_MARKER:SetSmartProperty("Stroke Color", Color.New(0.0, 2.0, 0.0, 0.25))
			local targetHat = (currentTarget:GetWorldPosition() - LOCAL_PLAYER:GetViewWorldPosition()):GetNormalized()
			TARGET_LIGHT:SetWorldPosition(currentTarget:GetWorldPosition() - targetHat * playerScale.z * 200.0)
			TARGET_LIGHT:SetWorldRotation(Rotation.New(targetHat, Vector3.UP))
			TARGET_LIGHT:SetWorldScale(playerScale)
			TARGET_LIGHT:SetColor(Color.New(0.7, 2.0, 0.0))
		else
			if API_NPC.IsDead(currentTarget) then
				API_T.SetTarget_Direct(nil)
				return
			end

			local data = API_NPC.GetAllNPCData()[currentTarget]
			TARGET_MARKER:SetWorldPosition(currentTarget:GetWorldPosition())
			TARGET_MARKER:SetWorldScale(Vector3.New(data.capsuleWidth / 256.0 + 0.5))	-- We want this to scale correctly, but be a bit big
			TARGET_MARKER:SetSmartProperty("Stroke Color", Color.New(2.0, 0.0, 0.0, 0.25))
			local targetCenter = currentTarget:GetWorldPosition() + data.capsuleHeight * Vector3.UP * 0.5
			local targetHat = (targetCenter - LOCAL_PLAYER:GetViewWorldPosition()):GetNormalized()
			TARGET_LIGHT:SetWorldPosition(targetCenter - targetHat * data.capsuleWidth * 2.0)
			TARGET_LIGHT:SetWorldRotation(Rotation.New(targetHat, Vector3.UP))
			TARGET_LIGHT:SetWorldScale(Vector3.New(data.capsuleWidth / 150.0))
			TARGET_LIGHT:SetColor(Color.New(2.0, 0.7, 0.0))
		end

		TARGET_MARKER.visibility = Visibility.INHERIT
		TARGET_LIGHT.visibility = Visibility.INHERIT
	end
end

local functionTable = {}
functionTable.FindAutoTarget = FindAutoTarget
functionTable.TrySetTarget = TrySetTarget
API_T.RegisterSystem(functionTable)

LOCAL_PLAYER.bindingPressedEvent:Connect(OnBindingPressed)
API_RE.Connect("DamageDone", OnDamageDone)
