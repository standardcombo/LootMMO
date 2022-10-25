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
---@type CoreObject
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

-- User Exposed Properties
---@type boolean
local REQUIRE_OWNER_TO_LOAD = COMPONENT_ROOT:GetCustomProperty("RequireOwnerToLoad")
---@type string
local IDENTIFIER = COMPONENT_ROOT:GetCustomProperty("Identifier")
---@type CoreObject
local REPLICATOR_ROOT = COMPONENT_ROOT:GetCustomProperty("Replicator"):WaitForObject()
---@type string
local PLAYER_STORAGE_KEY = COMPONENT_ROOT:GetCustomProperty("StorageKey")
---@type NetReference
local PLAYER_SHARED_STORAGE_KEY = COMPONENT_ROOT:GetCustomProperty("SharedStorageKey")
---@type boolean
local POPULATE = COMPONENT_ROOT:GetCustomProperty("Populate")

-- Required APIs
---@type APIReplicator
local REPLICATOR = require(script:GetCustomProperty("AIReplicator"))
---@type APIPlayerLots
local PLAYER_LOTS = require(script:GetCustomProperty("APIPlayerLots"))
---@type APIActiveCoreObjects
local ACTIVE = require(script:GetCustomProperty("APIActiveCoreObjects"))
---@type APIBitString
local BitString = require(script:GetCustomProperty("BitString"))

-- Wait for lots to register
Task.Wait()

-- Constants
local PLAYER_STORAGE_VERSION_KEY = "PSV"
local PLAYER_STORAGE_VERSION = 2

-- Private Variables
local replicatorId = REPLICATOR.FindReplicatorIdentifier(REPLICATOR_ROOT)
local lotId = PLAYER_LOTS.FindLotByAncestors(COMPONENT_ROOT)

-- Exit early if this is not within a Player Lot
if not lotId then
    error(string.format("%s needs to be within the hierarchy of a Player Lot", COMPONENT_ROOT.name))
end

local isActive = true
local ownerId = nil
local handlers = {}

function OnPlayerLotReset(playerLot)
    if playerLot ~= lotId then return end

    ownerId = nil
    UpdateReplicator()
end

function OnPlayerLotAssigned(playerLot, playerId)
    if playerLot ~= lotId then return end

    ownerId = playerId
    UpdateReplicator()
end

function MigrateFrom24BitTime(buffer)
    local userFunctions = REPLICATOR.GetUserFunctions(replicatorId)
    local userSettings = REPLICATOR.GetUserSettings(replicatorId)
    userSettings.Use24BitTime = true

    local instances = {}
    local reader = BitString.Reader.New(buffer)
    while reader:BitsAvailable() do
        local instance = userFunctions.ReadInstance(userSettings, reader)
        table.insert(instances, instance)
    end

    userSettings.Use24BitTime = nil

    local function EncodeInstance(instance)
        local writer = BitString.Writer.New()
        userFunctions.WriteInstance(userSettings, writer, instance)
        return writer:GetString()
    end

    local newBuffer = {}
    for _, instance in ipairs(instances) do
        table.insert(newBuffer, EncodeInstance(instance))
    end

    return table.concat(newBuffer)
end

function UpdateReplicator()
    if isActive and (not REQUIRE_OWNER_TO_LOAD or ownerId) then
        ACTIVE.SetActive(REPLICATOR_ROOT, true)

        if ownerId then
            local owner = Game.FindPlayer(ownerId)
            local buffer = ""

            if PLAYER_STORAGE_KEY ~= nil and PLAYER_STORAGE_KEY ~= "" then
                local data
                if Object.IsValid(owner) then
                    if PLAYER_SHARED_STORAGE_KEY and PLAYER_SHARED_STORAGE_KEY.isAssigned then
                        data = Storage.GetSharedPlayerData(PLAYER_SHARED_STORAGE_KEY, owner)
                    else
                        data = Storage.GetPlayerData(owner)
                    end
                else
                    if PLAYER_SHARED_STORAGE_KEY and PLAYER_SHARED_STORAGE_KEY.isAssigned then
                        data = Storage.GetSharedOfflinePlayerData(PLAYER_SHARED_STORAGE_KEY, ownerId)
                    else
                        data = Storage.GetOfflinePlayerData(ownerId)
                    end
                end

                if data[PLAYER_STORAGE_KEY] then
                    buffer = data[PLAYER_STORAGE_KEY]

                    local version = data[PLAYER_STORAGE_VERSION_KEY]
                    if not version then
                        -- Migrate from old timestamp format
                        buffer = MigrateFrom24BitTime(buffer)
                    end
                end
            end

            if POPULATE and buffer == "" then
                buffer = REPLICATOR.GetInitialBufferString(replicatorId)
            end

            REPLICATOR.LoadFromBuffer(replicatorId, buffer)

            if owner then
                REPLICATOR.UnlockReplicator(replicatorId)
            else
                REPLICATOR.LockReplicator(replicatorId)
            end
        else
            REPLICATOR.LockReplicator(replicatorId)
        end
    else
        ACTIVE.SetActive(REPLICATOR_ROOT, false)
    end
end

function OnPlayerLotSaved(playerLot, playerId)
    if playerLot ~= lotId then return end
    if not isActive then
        return
    end

    local owner = Game.FindPlayer(ownerId)
    if Object.IsValid(owner) then
        local buffer = REPLICATOR.GetBufferString(replicatorId, true)
        if PLAYER_STORAGE_KEY and PLAYER_STORAGE_KEY ~= "" then
            -- todo use a storage API
            local data
            if PLAYER_SHARED_STORAGE_KEY and PLAYER_SHARED_STORAGE_KEY.isAssigned then
                data = Storage.GetSharedPlayerData(PLAYER_SHARED_STORAGE_KEY, owner)
            else
                data = Storage.GetPlayerData(owner)
            end

            data[PLAYER_STORAGE_KEY] = buffer
            data[PLAYER_STORAGE_VERSION_KEY] = PLAYER_STORAGE_VERSION

            if PLAYER_SHARED_STORAGE_KEY and PLAYER_SHARED_STORAGE_KEY.isAssigned then
                Storage.SetSharedPlayerData(PLAYER_SHARED_STORAGE_KEY, owner, data)
            else
                Storage.SetPlayerData(owner, data)
            end
        end
    end
end

function OnPlayerLotClearSave(playerLot, playerId)
    if playerLot ~= lotId then return end

    local owner = Game.FindPlayer(ownerId)
    if Object.IsValid(owner) then
        if PLAYER_STORAGE_KEY and PLAYER_STORAGE_KEY ~= "" then
            local data
            if PLAYER_SHARED_STORAGE_KEY and PLAYER_SHARED_STORAGE_KEY.isAssigned then
                data = Storage.GetSharedPlayerData(PLAYER_SHARED_STORAGE_KEY, owner)
            else
                data = Storage.GetPlayerData(owner)
            end

            data[PLAYER_STORAGE_KEY] = nil

            if PLAYER_SHARED_STORAGE_KEY and PLAYER_SHARED_STORAGE_KEY.isAssigned then
                Storage.SetSharedPlayerData(PLAYER_SHARED_STORAGE_KEY, owner, data)
            else
                Storage.SetPlayerData(owner, data)
            end
        end
    end
end

function OnPlayerLotActive(playerLot)
    if playerLot ~= lotId then return end
    isActive = true
    UpdateReplicator()
end

function OnPlayerLotInactive(playerLot)
    if playerLot ~= lotId then return end
    isActive = false

    UpdateReplicator()
end

function OnPlayerLotActiveForPlayer(playerLot, playerId)
    if playerLot ~= lotId then return end
    REPLICATOR.ActivateReplicatorForPlayer(replicatorId, playerId)
end

function OnPlayerLotInactiveForPlayer(playerLot, playerId)
    if playerLot ~= lotId then return end
    REPLICATOR.DeactivateReplicatorForPlayer(replicatorId, playerId)
end

function OnPlayerLeft(player)
    if player.id == ownerId then
        REPLICATOR.LockReplicator(replicatorId)
    end
end

function OnPlayerJoined(player)
    if player.id == ownerId then
        REPLICATOR.UnlockReplicator(replicatorId)
        UpdateReplicator()
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
    Events.Connect(PLAYER_LOTS.Events.PlayerLotSaved, OnPlayerLotSaved),
    Events.Connect(PLAYER_LOTS.Events.PlayerLotActive, OnPlayerLotActive),
    Events.Connect(PLAYER_LOTS.Events.PlayerLotInactive, OnPlayerLotInactive),
    Events.Connect(PLAYER_LOTS.Events.PlayerLotActiveForPlayer, OnPlayerLotActiveForPlayer),
    Events.Connect(PLAYER_LOTS.Events.PlayerLotInactiveForPlayer, OnPlayerLotInactiveForPlayer),
    Events.Connect(PLAYER_LOTS.Events.PlayerLotClearSave, OnPlayerLotClearSave),
    Game.playerLeftEvent:Connect(OnPlayerLeft),
    Game.playerJoinedEvent:Connect(OnPlayerJoined)
}

script.destroyEvent:Connect(OnDestroyed)