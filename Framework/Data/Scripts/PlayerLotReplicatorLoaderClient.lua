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
local IDENTIFIER = COMPONENT_ROOT:GetCustomProperty("Identifier")
local REPLICATOR_ROOT = COMPONENT_ROOT:GetCustomProperty("Replicator"):WaitForObject()

-- Required APIs
---@type APIReplicator
local REPLICATOR = require(script:GetCustomProperty("APIReplicator"))
---@type APIPlayerLots
local PLAYER_LOTS = require(script:GetCustomProperty("APIPlayerLots"))
---@type APIActiveCoreObjects
local API_ACTIVE = require(script:GetCustomProperty("APIActiveCoreObjects"))

-- Wait for lots to register
Task.Wait()

-- Private Variables
local lotId = PLAYER_LOTS.FindLotByAncestors(COMPONENT_ROOT)
local handlers = {}

-- Exit early if this is not within a Player Lot
if not lotId then
    error(string.format("%s needs to be within the hierarchy of a Player Lot", COMPONENT_ROOT.name))
end

local replicatorId = REPLICATOR.FindReplicatorIdentifier(REPLICATOR_ROOT)

function OnPlayerLotReset(playerLot)
    if playerLot ~= lotId then return end

    REPLICATOR.LockReplicator(replicatorId, true)
end

function OnPlayerLotAssigned(playerLot, playerId)
    if playerLot ~= lotId then return end

    if Object.IsValid(PLAYER_LOTS.GetOwner(lotId)) then
        REPLICATOR.UnlockReplicator(replicatorId, true)
    else
        REPLICATOR.LockReplicator(replicatorId, true)
    end
end

function OnPlayerLotActive(playerLot)
    if playerLot ~= lotId then return end

    API_ACTIVE.SetActive(REPLICATOR_ROOT, true)
end

function OnPlayerLotInactive(playerLot)
    if playerLot ~= lotId then return end

    API_ACTIVE.SetActive(REPLICATOR_ROOT, false)
end

function OnPlayerLeft(player)
    if player.id == PLAYER_LOTS.GetLotState(lotId).ownerId then
        REPLICATOR.LockReplicator(replicatorId, true)
    end
end

function OnPlayerJoined(player)
    if player.id == PLAYER_LOTS.GetLotState(lotId).ownerId then
        REPLICATOR.UnlockReplicator(replicatorId, true)
    end
end

function GetState()
    local result = {}
    result.lotId = lotId
    result.replicatorId = replicatorId
    result.root = COMPONENT_ROOT
    result.identifier = IDENTIFIER
    return result
end

local functionTable = {}
functionTable.GetState = GetState

PLAYER_LOTS.RegisterLotReplicator(COMPONENT_ROOT.id, functionTable)

function OnDestroyed(coreObject)
    for _, handler in ipairs(handlers) do
        handler:Disconnect()
    end
    handlers = nil
end

handlers = {
    Events.Connect(PLAYER_LOTS.Events.PlayerLotReset, OnPlayerLotReset),
    Events.Connect(PLAYER_LOTS.Events.PlayerLotAssigned, OnPlayerLotAssigned),
    Events.Connect(PLAYER_LOTS.Events.PlayerLotActive, OnPlayerLotActive),
    Events.Connect(PLAYER_LOTS.Events.PlayerLotInactive, OnPlayerLotInactive),
    Game.playerLeftEvent:Connect(OnPlayerLeft),
    Game.playerJoinedEvent:Connect(OnPlayerJoined)

}

script.destroyEvent:Connect(OnDestroyed)