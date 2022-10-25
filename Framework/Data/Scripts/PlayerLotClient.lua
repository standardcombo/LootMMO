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

if not PLAYER_LOT then
    error(string.format("The 'PlayerLot' Custom Property on %s must be set.", COMPONENT_ROOT.name))
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

---@return boolean @returns true if the lot is available
function IsAvailable()
    return ownerId == nil
end

function GetState()
    local result = {}
    result.id = playerLotId
    result.name = PLAYER_LOT.name
    result.ownerId = ownerId
    result.ownerOnly = OWNER_ONLY
    result.isOwnerOnline = ownerId and GetLotOwner() ~= nil
    result.root = COMPONENT_ROOT
    result.isAvailable = IsAvailable()
    result.lotType = LOT_TYPE
    result.isActive = isActive
    return result
end

function GetLotOwner()
    if ownerId then
        return Game.FindPlayer(ownerId)
    end
    return nil
end

function SetLotOwner(playerId)
    ownerId = playerId

    Events.Broadcast(PLAYER_LOTS.Events.PlayerLotAssigned, playerLotId, playerId)
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

function Reset()
    ownerId = nil

    Events.Broadcast(PLAYER_LOTS.Events.PlayerLotReset, playerLotId)
end

-- Initialize
local functionTable = {}
functionTable.GetState = GetState
functionTable.GetLotOwner = GetLotOwner
functionTable.SetLotOwner = SetLotOwner
functionTable.SetActive = SetActive
functionTable.Reset = Reset

PLAYER_LOTS.RegisterLot(playerLotId, functionTable)