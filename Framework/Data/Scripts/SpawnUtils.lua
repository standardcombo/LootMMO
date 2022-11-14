
local API = {}


function GetSpawnPointsWithKey(key)
	local spawnPoints = World.FindObjectsByType("PlayerStart")
	for i = #spawnPoints, 1, -1 do
		local point = spawnPoints[i]
		if point.key ~= key then
			table.remove(spawnPoints, i)
		end
	end
	return spawnPoints
end


function GetPointFurthestFromPlayers(spawnPoints)
	local maxDistance = 0
	bestPoint = nil
	for _,point in ipairs(spawnPoints) do
		local pointPos = point:GetWorldPosition()
		local nearestDistance = 999999
		for _,player in ipairs(Game.GetPlayers()) do
			local distSqr = (player:GetWorldPosition() - pointPos).sizeSquared
			if nearestDistance > distSqr then
				nearestDistance = distSqr
			end
		end
		if maxDistance < nearestDistance then
			maxDistance = nearestDistance
			bestPoint = point
		end
	end
	return bestPoint
end


function API.SpawnPlayerAt(player, point)
	Task.Wait(1)
	local key
	if type(point) == "string" then
		key = point
		point = GetSpawnPointsWithKey(point)
	end
	if type(point) == "table" then
		--local randomIndex = math.random(1, #point)
		--point = point[randomIndex]
		point = GetPointFurthestFromPlayers(point)
	end
	--print("SpawnUtils::SpawnPlayerAt() "..tostring(point))
	
	if not point then
		error("Couldn't find a spawn point named "..key)
	end
	player:Spawn({
		position = point:GetWorldPosition(), 
		rotation = point:GetWorldRotation()
	})
	point.serverUserData.isTaken = true
end


return API

