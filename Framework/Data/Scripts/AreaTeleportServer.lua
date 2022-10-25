--[[
Copyright 2021 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Required APIs
---@type APIAreas
local AREAS = require(script:GetCustomProperty("APIAreas"))
---@type APISpawnPoints
local SPAWN_POINTS = require(script:GetCustomProperty("APISpawnPoints"))

-- Private Variables
local teleportingPlayers = {}

function TeleportPlayerToArea(player, areaId, targetPosition, targetRotation, spawnPointKey)
	AREAS.SendPlayerToArea(player, areaId)

	Task.Wait(0.5)

	if not Object.IsValid(player) then
		teleportingPlayers[player] = nil
		return
	end

    local position, rotation
	if spawnPointKey and spawnPointKey ~= "" then
		local spawnPoints = SPAWN_POINTS.GetSpawnPoints(areaId, spawnPointKey)
		if #spawnPoints > 0 then
			position = SPAWN_POINTS.GetSpawnPointTargetPosition(spawnPoints[1])
			rotation = SPAWN_POINTS.GetSpawnPointTargetRotation(spawnPoints[1])
		end
	else
		position = targetPosition
		rotation = targetRotation
	end

	if not position then
		-- Find any spawn point if a position hasn't been set
		local spawnPoints = SPAWN_POINTS.GetSpawnPoints(areaId)
		if #spawnPoints > 0 then
			position = SPAWN_POINTS.GetSpawnPointTargetPosition(spawnPoints[1])
			rotation = SPAWN_POINTS.GetSpawnPointTargetRotation(spawnPoints[1])
		end
	end

	if position then
		player:SetWorldPosition(position)
		player:SetWorldRotation(rotation)
	else
		error("Unable to find a position for the player")
	end

	teleportingPlayers[player] = nil
end

function OnTeleportToArea(player, areaId, areaKey, targetPosition, targetRotation, spawnPointKey)
    if not player or type(player) == "string" or teleportingPlayers[player] then return end

    teleportingPlayers[player] = true

	if areaId == nil then
		local assignKey = areaKey
		if not assignKey or assignKey == "" then
			assignKey = player.id
		end

		areaId = AREAS.GetAndAssignArea(areaKey, AREAS.GetPlayerArea(player), assignKey)

		if areaId then
			Task.Spawn(function()
				TeleportPlayerToArea(player, areaId, targetPosition, targetRotation, spawnPointKey)
			end)
		else
			error("Unable to find an Assignable Area for the Player")
		end
	else
		Task.Spawn(function()
			TeleportPlayerToArea(player, areaId, targetPosition, targetRotation, spawnPointKey)
		end)
	end
end

Events.Connect(AREAS.Events.TeleportToArea, OnTeleportToArea)
Events.ConnectForPlayer(AREAS.Events.TeleportToArea, OnTeleportToArea)