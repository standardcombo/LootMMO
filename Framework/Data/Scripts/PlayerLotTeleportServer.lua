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
---@type APIPlayerLots
local PLAYER_LOTS = require(script:GetCustomProperty("APIPlayerLots"))
---@type APISpawnPoints
local SPAWN_POINTS = require(script:GetCustomProperty("APISpawnPoints"))

-- Private Variables
local teleportingPlayers = {}

---Recieved a broadcast from a player that they want to teleport to a particular lot type
---@param player Player
---@param lotType string|nil
---@param spawnPointKey string|nil
---@param sourceLotId string|nil
---@param assignPlayerToLot boolean
---@param includeOfflineOwners boolean
function OnTeleportToLot(player, lotType, spawnPointKey, sourceLotId, assignPlayerToLot, includeOfflineOwners)
    if not player or type(player) == "string" or teleportingPlayers[player] then return end

    teleportingPlayers[player] = true

    Task.Spawn(function()
        local playerId = player.id

        if sourceLotId then
            playerId = PLAYER_LOTS.GetLotState(sourceLotId).ownerId or playerId
        end

        local lotId
        if assignPlayerToLot then
            lotId = PLAYER_LOTS.GetOrAssignLot(playerId, lotType, includeOfflineOwners)
        else
            lotId = PLAYER_LOTS.FindLotForOwner(playerId, lotType)
        end

        if not lotId then
            local allLotIds = PLAYER_LOTS.GetLots(lotType)
            if #allLotIds > 0 then
                lotId = allLotIds[1]
            end
        end

        local root = PLAYER_LOTS.GetLotRoot(lotId)
        local areaId = AREAS.FindAreaByAncestors(root)
        if areaId then
            local areaState = AREAS.GetAreaState(areaId)
            if areaState.isAssignable and not areaState.isAssigned then
                local assignKey = sourceLotId or playerId
                AREAS.AssignArea(areaId, assignKey)
            end
        end

        -- Find a spawn point
        local spawnPointIds = SPAWN_POINTS.GetSpawnPoints(lotId, spawnPointKey)
        if #spawnPointIds > 0 then
            local targetPosition = SPAWN_POINTS.GetSpawnPointTargetPosition(spawnPointIds[1])
            local targetRotation = SPAWN_POINTS.GetSpawnPointTargetRotation(spawnPointIds[1])

            -- Send player to this Area if the lot is in an Area
            if areaId then
                AREAS.SendPlayerToArea(player, areaId)

                Task.Wait(0.5)

                if not Object.IsValid(player) then
                    teleportingPlayers[player] = nil
                    return
                end
            end

            player:SetWorldPosition(targetPosition)
            player:SetWorldRotation(targetRotation)
        else
            error("Could not find a spawn point")
        end

        teleportingPlayers[player] = nil
    end)
end

Events.Connect(PLAYER_LOTS.Events.TeleportToLot, OnTeleportToLot)
Events.ConnectForPlayer(PLAYER_LOTS.Events.TeleportToLot, OnTeleportToLot)