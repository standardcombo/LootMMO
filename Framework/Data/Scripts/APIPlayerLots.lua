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

---@type APIReliableEvents
local RELIABLE_EVENTS = require(script:GetCustomProperty("APIReliableEvents"))

---@class APIPlayerLots
local API = {}

API.TAG = "PL_"

-- These events can be used like: Events.Connect(APIPlayerLots.Events.EventName, Handler)
API.Events = {
    PlayerLotAssigned = API.TAG .. "PlayerLotAssigned",
    PlayerLotActive = API.TAG .. "PlayerLotActive",
    PlayerLotInactive = API.TAG .. "PlayerLotInactive",
    PlayerLotReset = API.TAG .. "PlayerLotReset",
    PlayerLotActiveForPlayer = API.TAG .. "PlayerLotActiveForPlayer",
    PlayerLotInactiveForPlayer = API.TAG .. "PlayerLotInactiveForPlayer",
    PlayerLotSaved = API.TAG .. "PlayerLotSaved",
    PlayerLotClearSave = API.TAG .. "PlayerLotClearSave",
    SetLotOwner = API.TAG .. "SetLotOwner",
    TeleportToLot = API.TAG .. "TeleportToLot"
}

-- Private Variables
local lots = {}
local lotReplicators = {}
local lotSettings = {}

---Registers a Lot.
---@param lotId string
---@param functionTable any
function API.RegisterLot(lotId, functionTable)
    lots[lotId] = functionTable
end

---Registers a Replicator on a Lot.
---@param replicatorId string
---@param functionTable table
function API.RegisterLotReplicator(replicatorId, functionTable)
    lotReplicators[replicatorId] = functionTable
end

---Sets a maximum amount of a Lot Type that a Player can own at a time.
---@param lotType string
---@param amount integer
function API.SetMaxOwnedLots(lotType, amount)
    lotSettings[lotType] = {
        MaxOwnedPerPlayer = amount
    }
end

---Finds the id of the first Replicator on a Lot.
---@param lotId string
---@return string
function API.FindLotReplicator(lotId)
    for id, lotReplicator in pairs(lotReplicators) do
        local state = lotReplicator.GetState()
        if state.lotId == lotId then
            return state.replicatorId
        end
    end
    return nil
end

---Find the id of the first Replicator on a Lot that has a specific identifier.
---@param lotId string
---@param identifier string
---@return string
function API.FindLotReplicatorByIdentifier(lotId, identifier)
    for id, lotReplicator in pairs(lotReplicators) do
        local state = lotReplicator.GetState()
        if state.lotId == lotId and state.identifier == identifier then
            return state.replicatorId
        end
    end
    return nil
end

---Get the identifier of a Replicator on a Lot.
---@param lotId string
---@param replicatorId string
---@return string
function API.GetLotReplicatorIdentifier(lotId, replicatorId)
    for id, lotReplicator in pairs(lotReplicators) do
        local state = lotReplicator.GetState()
        if state.lotId == lotId and state.replicatorId == replicatorId then
            return state.identifier
        end
    end
    return nil
end

function API.IsOwnerOnly(lotId)
    local lot = lots[lotId]
    assert (lot)
    return lot.GetState().ownerOnly
end

---Returns true if the Player can own the Lot in question.
---@param lotId string
---@param playerId string
---@param allowOfflineTakeover boolean
---@return boolean
function API.CanOwnLot(lotId, playerId, allowOfflineTakeover)
    local lot = lots[lotId]
    assert (lot)

    if not allowOfflineTakeover and lot.GetState().ownerId then
        return false
    end

    local lotType = lot.GetState().lotType
    if lotSettings[lotType] and lotSettings[lotType].MaxOwnedPerPlayer > 0 then
        local ownedLots = #API.FindPlayerOwnedLots(playerId, lotType)
        return ownedLots < lotSettings[lotType].MaxOwnedPerPlayer
    end

    return true
end

---Sets the owner of the Lot.
---@param lotId string
---@param playerId string
---@param updateServer boolean
function API.SetLotOwner(lotId, playerId, updateServer)
    local lot = lots[lotId]
    assert (lot)
    lot.SetLotOwner(playerId)

    if Environment.IsClient() and updateServer then
        RELIABLE_EVENTS.BroadcastToServer(API.Events.SetLotOwner, lotId, playerId)
    end
end

---Invokes the Save method on all the things inside the lot
---@param lotId string
function API.SaveLot(lotId)
    if Environment.IsServer() then
        local lot = lots[lotId]
        assert(lot)
        lot.SaveLot()
    else
        error("SaveLot cannot be called from the client")
    end
end

---Clears save data for a Lot.
---@param lotId string
function API.ClearPlayerLotSaveData(lotId)
    if Environment.IsServer() then
        local lot = lots[lotId]
        assert (lot)
        lot.ClearPlayerLotSaveData()
    else
        error("ClearPlayerLotSaveData cannot be called from the client")
    end
end

---Returns an assigned Lot or assigns the Player as the owner on an available Lot.
---@param playerId string
---@param lotType string|nil
---@param includeOfflineOwners boolean
function API.GetOrAssignLot(playerId, lotType, includeOfflineOwners)
    if Environment.IsServer() then
        local ownedLots = API.FindPlayerOwnedLots(playerId, lotType)
        local targetLot = nil
        if #ownedLots == 0 then
            local availableLots = API.FindAvailableLots(lotType, includeOfflineOwners)
            if #availableLots == 0 then
                error("there were no available lots to use")
            end
            targetLot = availableLots[1]
            API.SetLotOwner(targetLot, playerId)
        else
            targetLot = ownedLots[1]
        end

        return targetLot
    else
        error("GetOrAssignLot cannot be called from the client")
    end
end

---Find the id of the first Lot for a Player that optionally matches the provided Lot type.
---@param playerId string
---@param lotType string|nil
---@return string
function API.FindLotForOwner(playerId, lotType)
    local ownedLots = API.FindPlayerOwnedLots(playerId, lotType)
    if #ownedLots > 0 then
        return ownedLots[1]
    end
    return nil
end

---Finds the id of the Lot this core object is contained inside.
---@param coreObject CoreObject
---@return string
function API.FindLotByAncestors(coreObject)
    while Object.IsValid(coreObject) do
        local id = coreObject.id
        if lots[id] then
            return id
        end
        coreObject = coreObject.parent
    end
end

---Finds all the lots that arent 'owned' by any Players, or that are owned by offline Players.
---@param lotType string|nil
---@param includeOfflineOwners boolean
---@return string[]
function API.FindAvailableLots(lotType, includeOfflineOwners)
    local result = {}
	for id, lot in pairs(lots) do
        local lotState = lot.GetState()
        local isOwnerOnline = lotState.isOwnerOnline
        if lotState.isAvailable or (includeOfflineOwners and not isOwnerOnline) then
            if lotType == nil or lotType == ""  or lotType == lotState.lotType then
                if lotState.ownerId then
                    table.insert(result, #result + 1, id)
                else
                    table.insert(result, id)
                end
            end
        end
    end
    return result
end

---Returns all the ids for Lots that are owned by a Player, with an optional Lot type filter.
---@param playerId string
---@param lotType string|nil
---@return string[]
function API.FindPlayerOwnedLots(playerId, lotType)
    local result = {}
	for id, lot in pairs(lots) do
        local lotState = lot.GetState()
        if lotState.ownerId == playerId then
            if lotType == nil or lotType == "" or lotType == lotState.lotType then
                table.insert(result, id)
            end
        end
    end
    return result
end

---Returns the owner of a Player Lot.
---@param id string
---@return Player|nil
function API.GetOwner(id)
    local lot = lots[id]
    assert(lot)
    return lot.GetLotOwner(id)
end

---Returns the root object of a Lot.
---@param lotId string
---@return CoreObject
function API.GetLotRoot(lotId)
    return API.GetLotState(lotId).root
end

---Returns the state for a Lot.
---@param lotId string
---@return LotState
function API.GetLotState(lotId)
    local lot = lots[lotId]
    if lot == nil then
        return
    end
    return lot.GetState()
end

---Activates or deactivates a Lot.
---@param lotId string
---@param isActive boolean
function API.SetLotActive(lotId, isActive)
    local lot = lots[lotId]
    assert(lot)
    lot.SetActive(isActive)
end

---Activates or deactivates a Lot for a specific Player.
---@param lotId string
---@param player Player
---@param isActive boolean
function API.SetLotActiveForPlayer(lotId, player, isActive)
    local lot = lots[lotId]
    assert(lot)
    lot.SetActiveForPlayer(player, isActive)
end

---Resets a Lot.
---@param lotId string
function API.ResetLot(lotId)
    local lot = lots[lotId]
    assert(lot)
    lot.Reset()
end

---Returns a list of all Lot ids with an optional filter on Lot Type.
---@param lotType string|nil
---@return string[]
function API.GetLots(lotType)
    local result = {}
    for lotId, lot in pairs(lots) do
        local lotState = lot.GetState()
        if not lotType or lotState.lotType == lotType then
            table.insert(result, lotId)
        end
    end
    return result
end

---Relay from client to set a Lot.
---@param lotId string
---@param playerId string
function OnSetLotOwner(lotId, playerId)
    if API.CanOwnLot(lotId, playerId, false) then
        API.SetLotOwner(lotId, playerId, false)
    end
end

if Environment.IsServer() then
    Events.Connect(API.Events.SetLotOwner, OnSetLotOwner)
end

return API