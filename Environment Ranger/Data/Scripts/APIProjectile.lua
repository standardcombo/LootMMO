local API = {}

-- Above this height, we heavily reduce gravity for small gains in height
local MAX_LINEAR_HEIGHT = 1000.0
local G = 980.0			-- This is little g, as a constant

function GetCorrectPosition(characterOrPosition)
	if characterOrPosition:IsA("Vector3") then
		return characterOrPosition
	elseif not Object.IsValid(characterOrPosition) then
		return Vector3.ZERO		-- Edge case, probably from join in progress
	elseif characterOrPosition:IsA("Player") then
		return characterOrPosition:GetWorldPosition()
	else
		return characterOrPosition:GetWorldPosition() + Vector3.UP * 100.0 * characterOrPosition:GetWorldScale().z
	end
end

-- This is really more of "expected travel time"
-- source and target can be npcs, players, or just Vector3s
function API.GetTravelTime(source, target, horizontalSpeed)
	local offset = GetCorrectPosition(target) - GetCorrectPosition(source)
	offset.z = 0.0
	return offset.size / horizontalSpeed
end

-- Client only
-- source and target can be npcs, players, or just Vector3s. gravityAmount is a multiplier on g
function API.CreateProjectile(source, target, horizontalSpeed, gravityAmount, projectileTemplate)
	if not target then		-- This can happen during join in progress. We'd rather not have to handle this in every task
		return
	end

	local projectile = World.SpawnAsset(projectileTemplate, {position = GetCorrectPosition(source)})
	local expectedTravelTime = API.GetTravelTime(source, target, horizontalSpeed)
	local peakHeight = G * gravityAmount * expectedTravelTime ^ 2 / 8.0		-- y = 1/2 at^2, but t = expectedTravelTime / 2

	if peakHeight > MAX_LINEAR_HEIGHT then
		peakHeight = (peakHeight - MAX_LINEAR_HEIGHT) ^ (0.5) + MAX_LINEAR_HEIGHT
	end

	local startT = os.clock()
	local previousT = os.clock()
	local basePosition = projectile:GetWorldPosition()
	local previousPosition = basePosition

	Task.Spawn(function()
		while true do
			if target:IsA("Object") and not Object.IsValid(target) then
				break
			end
			
			local currentT = os.clock()
			local offset = GetCorrectPosition(target) - basePosition
			local stepSize = horizontalSpeed * (currentT - previousT)

			if offset.size < stepSize then
				break
			end
			
			basePosition = basePosition + offset:GetNormalized() * stepSize
			local verticalOffset = math.max(0.0, (1.0 - (2.0 * (currentT - startT) / expectedTravelTime - 1.0) ^ 2) * peakHeight)
			local newPosition = basePosition + verticalOffset * Vector3.UP
			projectile:SetWorldPosition(newPosition)
			projectile:SetWorldRotation(Rotation.New(newPosition - previousPosition, Vector3.UP))
			previousT = currentT
			previousPosition = newPosition

			Task.Wait()
		end

		projectile:Destroy()
	end)
end

return API
