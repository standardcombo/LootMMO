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
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

-- User Exposed Properties
local PLAYER_LOT = COMPONENT_ROOT:GetCustomProperty("PlayerLot"):WaitForObject()
local LOT_TYPE = COMPONENT_ROOT:GetCustomProperty("LotType")
local OWNER_ONLY = COMPONENT_ROOT:GetCustomProperty("OwnerOnly")

if PLAYER_LOT == nil then
    PLAYER_LOT = COMPONENT_ROOT.parent
end

-- Required APIs
---@type APIPlayerLots
local PLAYER_LOTS = require(script:GetCustomProperty("APIPlayerLots"))
---@type APIActiveCoreObjects
local ACTIVE = require(script:GetCustomProperty("APIActiveCoreObjects"))

-- Private Variables
local playerLotId = PLAYER_LOT.id
local ownerId
local isActive = true

---Is the lot available for an owner to use
---@return boolean @returns true if the lot is available
function IsAvailable()
    return ownerId == nil
end

function GetState()
    ---@class LotState
    local result = {}

    result.id = playerLotId
    result.name = COMPONENT_ROOT.name
    result.ownerId = ownerId
    result.ownerOnly = OWNER_ONLY
    result.isOwnerOnline = ownerId and GetLotOwner() ~= nil
    result.isAvailable = IsAvailable()
    result.root = COMPONENT_ROOT
    result.lotType = LOT_TYPE
    result.isActive = isActive

    return result
end

function SetLotOwner(playerId)
    ownerId = playerId
    COMPONENT_ROOT.serverUserData.ownerId = ownerId

    Events.Broadcast(PLAYER_LOTS.Events.PlayerLotAssigned, playerLotId, ownerId)
end

function SaveLot()
    if ownerId and GetLotOwner() ~= nil then
        Events.Broadcast(PLAYER_LOTS.Events.PlayerLotSaved, playerLotId, ownerId)
    end
end

function ClearPlayerLotSaveData()
    if ownerId and GetLotOwner() ~= nil then
        Events.Broadcast(PLAYER_LOTS.Events.PlayerLotClearSave, playerLotId, ownerId)
        Events.Broadcast(PLAYER_LOTS.Events.PlayerLotAssigned, playerLotId, ownerId)
    end
end

function GetLotOwner()
    if ownerId then
        return Game.FindPlayer(ownerId)
    end
    return nil
end

function SetActive(active)
    isActive = active
    ACTIVE.SetActive(PLAYER_LOT, active)

    if active then
        Events.Broadcast(PLAYER_LOTS.Events.PlayerLotActive, playerLotId)
    else
        Events.Broadcast(PLAYER_LOTS.Events.PlayerLotInactive, playerLotId)
    end
end

function SetActiveForPlayer(playerId, active)
    if active then
        Events.Broadcast(PLAYER_LOTS.Events.PlayerLotActiveForPlayer, playerLotId, playerId)
    else
        Events.Broadcast(PLAYER_LOTS.Events.PlayerLotInactiveForPlayer, playerLotId, playerId)
    end
end

function Reset()
    ownerId = nil
    COMPONENT_ROOT.serverUserData.ownerId = nil

    Events.Broadcast(PLAYER_LOTS.Events.PlayerLotReset, playerLotId)
end

-- Every 2 seconds save the lot if it has an owner
function Tick()
    SaveLot()
    Task.Wait(2)
end

-- Initialize
local functionTable = {}
functionTable.GetState = GetState
functionTable.GetLotOwner = GetLotOwner
functionTable.SetLotOwner = SetLotOwner
functionTable.Reset = Reset
functionTable.SaveLot = SaveLot
functionTable.SetActive = SetActive
functionTable.SetActiveForPlayer = SetActiveForPlayer
functionTable.ClearPlayerLotSaveData = ClearPlayerLotSaveData

PLAYER_LOTS.RegisterLot(playerLotId, functionTable)

-- Wait a frame so the replicators register themselves
Task.Wait()

-- If the owner is still nil, invoke reset
if ownerId == nil then
    Reset()
end