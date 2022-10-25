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

-- Internal Properties
local NETWORK = script:GetCustomProperty("Network"):WaitForObject()

-- Required APIs
---@type APIAreas
local AREAS = require(script:GetCustomProperty("APIAreas"))
---@type APIPlayerLots
local PLAYER_LOTS = require(script:GetCustomProperty("APIPlayerLots"))
---@type APISerializer
local BIT_STRING = require(script:GetCustomProperty("APISerializer"))

-- Constants
local PROP_AREAS = "AreasState"
local PROP_PLAYER_LOTS = "PlayerLotsState"

-- Private Variables
local areasState = {
    ---@type table<string, string> playerId, areaId
    PlayerAreas = {}
}
local playerLotsState = {
    ---@type table<string, string> lotId, playerId
    LotOwners = {}
}

-- Server Only. Sends data down to client.
function SyncWithClient(propertyName, data)
    NETWORK:SetCustomProperty(propertyName, BIT_STRING.WriteString(data))
end

---Client Only. Updates state when networked properties change.
---@param coreObject CoreObject
---@param propertyName string
function UpdateState(coreObject, propertyName)
    if coreObject == NETWORK then
        if propertyName == PROP_AREAS then
            local newAreasState = BIT_STRING.ReadString(NETWORK:GetCustomProperty(PROP_AREAS))
            if newAreasState then
                -- Find new areas
                for playerId, areaId in pairs(newAreasState.PlayerAreas) do
                    if areaId ~= areasState.PlayerAreas[playerId] then
                        local player = Game.FindPlayer(playerId)
                        if Object.IsValid(player) then
                            AREAS.SendPlayerToArea(player, areaId)
                        end
                    end
                end
                areasState = newAreasState
            end
        elseif propertyName == PROP_PLAYER_LOTS then
            local newPlayerLotsState = BIT_STRING.ReadString(NETWORK:GetCustomProperty(PROP_PLAYER_LOTS))
            if newPlayerLotsState then
                -- Find newly assigned lots
                for lotId, playerId in pairs(newPlayerLotsState.LotOwners) do
                    if not playerLotsState.LotOwners[lotId] or playerLotsState.LotOwners[lotId] ~= playerId then
                        PLAYER_LOTS.SetLotOwner(lotId, playerId, false)
                    end
                end

                -- Find reset lots
                for lotId, _ in pairs(playerLotsState.LotOwners) do
                    if not newPlayerLotsState.LotOwners[lotId] then
                        PLAYER_LOTS.ResetLot(lotId)
                    end
                end

                playerLotsState = newPlayerLotsState
            end
        end
    end
end

---Server Only. Called when a Player moves to a new Area.
---@param player Player
---@param areaId string
---@param lastAreaId string
function OnPlayerAreaChanged(player, areaId, lastAreaId)
    areasState.PlayerAreas[player.id] = areaId
    SyncWithClient(PROP_AREAS, areasState)
end

---Server Only. Called when a Player Lot is reset.
---@param resetLotId string
function OnPlayerLotReset(resetLotId)
    playerLotsState.LotOwners[resetLotId] = nil
    SyncWithClient(PROP_PLAYER_LOTS, playerLotsState)
end

---Server Only. Called when a Player is assigned a Player Lot.
---@param assignedLotId string
---@param playerId string
function OnPlayerLotAssigned(assignedLotId, playerId)
    playerLotsState.LotOwners[assignedLotId] = playerId
    SyncWithClient(PROP_PLAYER_LOTS, playerLotsState)
end

---Server Only. Handles cleaning up after a Player leaves.
---@param player Player
function OnPlayerLeft(player)
    areasState.PlayerAreas[player.id] = nil
    SyncWithClient(PROP_AREAS, areasState)
end

if Environment.IsServer() then
    Events.Connect(AREAS.Events.PlayerAreaChanged, OnPlayerAreaChanged)
    Events.Connect(PLAYER_LOTS.Events.PlayerLotReset, OnPlayerLotReset)
    Events.Connect(PLAYER_LOTS.Events.PlayerLotAssigned, OnPlayerLotAssigned)

    Game.playerLeftEvent:Connect(OnPlayerLeft)
else
    Task.Wait()

    NETWORK.customPropertyChangedEvent:Connect(UpdateState)

    UpdateState(NETWORK, PROP_AREAS)
    UpdateState(NETWORK, PROP_PLAYER_LOTS)
end