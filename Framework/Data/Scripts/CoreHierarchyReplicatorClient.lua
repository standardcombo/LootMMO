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
function require_optional(s) if s then return require(s) end end

---@type APIBitString
local BitString = require(script:GetCustomProperty("APIBitString"))

---@type APIReplicatorTree
local TREE_HELPER = require(script:GetCustomProperty("APITreeHelper"))

---@type APIReplicator
local API = require(script:GetCustomProperty("APIReplicator"))

---@type APIActiveCoreObjects
local API_ACTIVE = require(script:GetCustomProperty("APIActiveCoreObjects"))

---@type APIStringChunk
local API_STRING_CHUNK = require(script:GetCustomProperty("APIStringChunk"))

---@type APIReliableEvents
local RELIABLE_EVENTS = require_optional(script:GetCustomProperty("APIReliableEvents")) or Events

-- Internal constants

---@type CoreObject
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local DEFAULT_PARENT = COMPONENT_ROOT:GetCustomProperty("Parent"):WaitForObject() or World.GetRootObject()

-- required APIs
local UserFunctions = require(COMPONENT_ROOT:GetCustomProperty("UserFunctions"))

---@type string
local REPLICATOR_ID = API.FindReplicatorIdentifier(COMPONENT_ROOT)

local LOCAL_PLAYER = Game.GetLocalPlayer()

-- For networking
local USE_NETWORKED_OBJECT = COMPONENT_ROOT:GetCustomProperty("UseNetworkedObject")
local DOWNSTREAM = nil
if USE_NETWORKED_OBJECT then
    DOWNSTREAM = COMPONENT_ROOT:GetCustomProperty("Downstream"):WaitForObject()
end
local MAX_BITSTRING_LENGTH = COMPONENT_ROOT:GetCustomProperty("MaxBitStringLength")

-- Internal private variables

-- used to assign a new Id to instances. However it may be different on the server
local uniqueId = 0

-- Private variables
---@type table<integer, instance>
local serverInstances = {} -- list of all the instances according to the server, with .id as the key!
---@type number|nil
local serverTimeStamp = nil -- time we last had properties from the server

---@type table<integer, CoreObject>
local existingCoreObjects = {}

-- The numbers are time()
---@type table<instance, number>
local clientAddedInstances = {} -- set of all the instance we have 'added' that the server hasnt verified,
---@type table<instance, number>
local clientDestroyedInstances = {} -- set of all the instances we have destroyed on the client

-- Set of instances with client-sided modifications

---@type table<instance, boolean>
local instances = {}

local isActive = true

local serverIncomingChange = false

local userSettings = {}

local isLocked = false

-- Generates a new ID
function GenerateUniqueID()
    uniqueId = uniqueId + 1
    return uniqueId
end

-- Updates the uniqueId to be the largest number. Client does the same when recieving data
function UpdateUniqueIndex()
    uniqueId = 0
    for id, serverInstance in pairs(serverInstances) do
        uniqueId = math.max(uniqueId, id)
    end
end

-- Helper function to copy all key values from one table to another
function CopyKeyValues(copyFrom, copyTo)
    for key, value in pairs(copyFrom) do
        copyTo[key] = value
    end
end

-- Updates the instances set above
function UpdateCurrentInstances()
    local currentInstances = {}

    -- Copy all the server instances
    for _, instance in pairs(serverInstances) do
        currentInstances[instance] = true
    end

    -- May contain instances that arent in the server instances list
    for instance in pairs(clientAddedInstances) do
        currentInstances[instance] = true
    end

    -- Client wants to remove these instances
    for instance in pairs(clientDestroyedInstances) do
        currentInstances[instance] = nil
    end

    instances = currentInstances
end



-- If the replicator is saving its buffer into multiple private networked data, it will append them all into a single string
function GetBufferFromPlayerPrivateNetworkedData()
    local key = API.GetPlayerPrivateNetworkKey(REPLICATOR_ID)
    if MAX_BITSTRING_LENGTH then
        return API_STRING_CHUNK.GetPlayerPrivateNetworkedDataString(LOCAL_PLAYER, key)
    else
        local data = LOCAL_PLAYER:GetPrivateNetworkedData(key)
        return data or ""
    end
end

-- If the replicator is using a networked object to hold the buffer, it gets the string
function GetCustomPropertyBuffer()
    return DOWNSTREAM:GetCustomProperty("Buffer")
end


function GetServerBuffer()
    if USE_NETWORKED_OBJECT then
        return GetCustomPropertyBuffer()
    else
        return GetBufferFromPlayerPrivateNetworkedData()
    end
end

-- Processes a string and creates instances
function ParseStringBuffer(buffer)
    local newInstances = {}
    local reader = BitString.Reader.New(buffer)
    while reader:BitsAvailable() do
        local readStart = reader.readIndex
        local instance = UserFunctions.ReadInstance(userSettings, reader)
        local readEnd = reader.readIndex-1
        instance._bitString = string.sub(reader.stream, readStart, readEnd)
        instance.replicatorId = REPLICATOR_ID
        instance.existingCoreObject = existingCoreObjects[instance.id]
        newInstances[instance.id] = instance
    end
    return newInstances
end

-- Used to match an instance with another instance when theres no id (by matching the properties)
function MatchInstanceWithClientAddedInstances(serverInstance)
    -- First check to see if we have any instances that match exactly, id included
   for clientInstance in pairs(clientAddedInstances) do
        if serverInstance._bitString == clientInstance._bitString then
            return clientInstance
        end
    end

    -- we have a new instance...check if it matches with any in the clientAddedInstances
    for clientInstance in pairs(clientAddedInstances) do
        if UserFunctions.CompareInstanceProperties then
            if UserFunctions.CompareInstanceProperties(userSettings, serverInstance, clientInstance) then
                return clientInstance
            end
        end
    end
    return false
end

function ProcessServerInstancesFromBuffer(newInstances)
    local serverTimeStamp = time() -- todo

    local broadcasts = {}
    broadcasts.destroyedInstances = {}
    broadcasts.addedInstances = {}
    broadcasts.modifiedInstances = {}

    -- Look existing instances, find out if any have been destroyed
    for id, instance in pairs(serverInstances) do
        if not newInstances[id] then
            -- This server instance was destroyed... if its not already inside the clientDestroyed, then broadcast
            if not clientDestroyedInstances[id] then
                broadcasts.destroyedInstances[instance] = true
            end
            -- Clear it out from server instances
            serverInstances[id] = nil
            instance.isDestroyed = true
        end
    end

    -- Loop new instances, and find out if they are new or modify existing instances
    for id, serverInstance in pairs(newInstances) do
        local existingServerInstance = serverInstances[id]

        if existingServerInstance then
            -- Check if its changed
            if serverInstance._bitString ~= existingServerInstance._bitString then
                CopyKeyValues(serverInstance, existingServerInstance)
                broadcasts.modifiedInstances[existingServerInstance] = true
            end
        else
            -- We dont have an existing server instance, so it must be new
            local foundClientInstance = MatchInstanceWithClientAddedInstances(serverInstance)

            if foundClientInstance then
                CopyKeyValues(serverInstance, foundClientInstance)
                serverInstances[id] = foundClientInstance
                clientAddedInstances[foundClientInstance] = nil -- remove from the client added instances as it has been 'claimed'
            else
                -- We didn't match it
                serverInstances[id] = serverInstance
                broadcasts.addedInstances[serverInstance] = true
            end
        end
    end

    -- Update our unique instance number as the server might have had more instances added by other players
    UpdateUniqueIndex()

    -- Remove any predictions we dont need anymore
    CheckClientStateAgainstServer(broadcasts)

    -- Update our set of current instances
    UpdateCurrentInstances()

    -- Update our instances parent and children
    TREE_HELPER.UpdateInstanceChildrenAndParent(instances)

    -- Sort so parents are first, turning the set into an array
    broadcasts.addedInstances = TREE_HELPER.SortParentsFirst(broadcasts.addedInstances)
    broadcasts.modifiedInstances = TREE_HELPER.SortParentsFirst(broadcasts.modifiedInstances)

    -- Broadcast the changes at the end
    for instance in pairs(broadcasts.destroyedInstances) do
        Events.Broadcast(API.Events.InstanceDestroyed, COMPONENT_ROOT, instance)
    end

    for _, instance in ipairs(broadcasts.addedInstances) do
        Events.Broadcast(API.Events.InstanceAdded, COMPONENT_ROOT, instance)
    end

    for _, instance in ipairs(broadcasts.modifiedInstances) do
        Events.Broadcast(API.Events.InstanceModified, COMPONENT_ROOT, instance)
    end

end

-- Used to remove any client predictions so we match the server
function CheckClientStateAgainstServer(broadcasts)
    -- Look existing instances, find out if any have been destroyed
    for id, instance in pairs(serverInstances) do
        if clientDestroyedInstances[instance] then
            -- if the client destroyed thing is old and needs to be removed, then we need to broadcast its been added
            clientDestroyedInstances[instance] = nil
            broadcasts.addedInstances[instance] = true
            instance.isDestroyed = nil
        end
    end

    -- Loop our added instances, if any exist we need to destroy it because the server didnt allow it :(
    for clientInstance, time in pairs(clientAddedInstances) do
        broadcasts.destroyedInstances[clientInstance] = true
        clientAddedInstances[clientInstance] = nil
        clientInstance.isDestroyed = true
    end
end

------------------------------
---Mark our instance as locally added, but waiting for the server to authorize the change
---@param instance instance
function MarkInstanceClientAdded(instance)
    clientAddedInstances[instance] = time()
    clientDestroyedInstances[instance] = nil
    instance.isDestroyed = nil
end

---When the client destroys an instance, mark it in a set
---@param instance instance
function MarkInstanceClientDeleted(instance)
    -- Mark object as deleted, and cancel any modifications or an existing 'add'
    clientAddedInstances[instance] = nil
    clientDestroyedInstances[instance] = time()
    instance.isDestroyed = true
end

-----------------
-- todo. potentially expensive, cache
function GetInstanceById(id)
    for instance in pairs(instances) do
        if instance.id == id then
            return instance
        end
    end
end


--------------------------------------------------
-- Local event handlers
--------------------------------------------------

-- Local event: AddInstance
function AddInstance(replicator, instance, localOnly)
    if replicator ~= COMPONENT_ROOT then
        return -- not for us
    end

    if isActive == false then
        return
    end

    instance.replicatorId = REPLICATOR_ID
    instance.id = GenerateUniqueID()

    -- If parent id is invalid on the client for some reason set the parent id to 0...probably not necessary
    if instance.parentId and instance.parentId > 0 then
        if GetInstanceById(instance.parentId) == nil then
            instance.parentId = 0 -- parent couldnt be found... maybe print a warning
        end
    end

    -- Write and read to compress the instance so the data matches the server
    local writer = BitString.Writer.New()
    UserFunctions.WriteInstance(userSettings, writer, instance)
    local bitString = writer:GetString()
    local reader = writer:GetBitStringReader()
    instance._bitString = bitString

    local parsedInstance = UserFunctions.ReadInstance(userSettings, reader)
    CopyKeyValues(parsedInstance, instance)

    -- Mark it as added
    MarkInstanceClientAdded(instance)

    -- todo. expensive to update all of them
    UpdateCurrentInstances()
    TREE_HELPER.UpdateInstanceChildrenAndParent(instances)

    local instantSpawn = instance.existingCoreObject == nil
    -- client broadcast
    Events.Broadcast(API.Events.InstanceAdded, COMPONENT_ROOT, instance, instantSpawn)

    -- Broadcast to server
    if not localOnly then
        RELIABLE_EVENTS.BroadcastToServer(API.Events.UserAdd, REPLICATOR_ID, bitString)
    end
end


function _RecursiveDelete(instance)
    -- delete children first
    if instance.children then
        for child in pairs(instance.children) do
            _RecursiveDelete(child)
        end
    end

    -- mark it as deleted in the buffer
    MarkInstanceClientDeleted(instance)

    -- client broadcast
    Events.Broadcast(API.Events.InstanceDestroyed, COMPONENT_ROOT, instance)
end

-- Local event: DestroyInstance
function DestroyInstance(replicator, instance, localOnly)
    if replicator ~= COMPONENT_ROOT then
        return -- not for us
    end
    if isActive == false then
        return
    end
    -- Will recursively delete any children
    _RecursiveDelete(instance)

    -- Update the instances and the tree
    UpdateCurrentInstances()
    TREE_HELPER.UpdateInstanceChildrenAndParent(instances)

    -- Broadcast to server
    if not localOnly then
        RELIABLE_EVENTS.BroadcastToServer(API.Events.UserDestroy, REPLICATOR_ID, instance.id)
    end
end

-- Local event: ModifyInstance
function ModifyInstance(replicator, instance, localOnly)
    if replicator ~= COMPONENT_ROOT then
        return -- not for us
    end
    if isActive == false then
        return
    end

    local writer = BitString.Writer.New()
   
    UserFunctions.WriteInstance(userSettings, writer, instance)
    local bitString = writer:GetString()
    instance._bitString = bitString

    local reader = writer:GetBitStringReader()

    -- Make a new instance by decoding what we would have sent to the server
    local parsedInstance = UserFunctions.ReadInstance(userSettings, reader)

    -- Apply the compressed version but keep using the same instance
    CopyKeyValues(parsedInstance, instance)

    -- Client broadcast
    Events.Broadcast(API.Events.InstanceModified, COMPONENT_ROOT, instance)

    -- Broadcast to server
    if not localOnly then
        RELIABLE_EVENTS.BroadcastToServer(API.Events.UserModify, REPLICATOR_ID, bitString)
    end
end

function ActivateReplicator(replicator, localOnly)
    if replicator ~= COMPONENT_ROOT then
        return -- not for us
    end
    isActive = true

    local buffer = GetBufferFromPlayerPrivateNetworkedData()
    local newInstances = ParseStringBuffer(buffer)
    if #newInstances > 0 then
        ProcessServerInstancesFromBuffer(newInstances)
    end

    API_ACTIVE.SetActive(DEFAULT_PARENT, true)
    if not localOnly then
        RELIABLE_EVENTS.BroadcastToServer(API.Events.UserActivate, REPLICATOR_ID)
    end
end

function DeactivateReplicator(replicator, localOnly)
    if replicator ~= COMPONENT_ROOT then
        return -- not for us
    end
    isActive = false
    DestroyAllInstances(replicator, true)
    API_ACTIVE.SetActive(DEFAULT_PARENT, false)
    if not localOnly then
        RELIABLE_EVENTS.BroadcastToServer(API.Events.UserDeactivate, REPLICATOR_ID)
    end
end

function LockReplicator(replicator, localOnly)
    if replicator ~= COMPONENT_ROOT then
        return
    end
    if isLocked then
        return
    end

    isLocked = true

    if not localOnly then
        RELIABLE_EVENTS.BroadcastToServer(API.Events.UserLock, REPLICATOR_ID)
    end
end

function UnlockReplicator(replicator, localOnly)
    if replicator ~= COMPONENT_ROOT then
        return
    end
    if not isLocked then
        return
    end

    isLocked = false

    if not localOnly then
        RELIABLE_EVENTS.BroadcastToServer(API.Events.UserUnlock, REPLICATOR_ID)
    end
end

---Loops a set and marks the instances as destroyed
---@param instances table<instance, any>
function FlagSetInstancesDestroyed(instances)
    for instance in pairs(instances) do
        instance.isDestroyed = true
    end
end

function DestroyAllInstances(replicator, localOnly)
    if replicator ~= COMPONENT_ROOT then
        return -- not for us
    end
    FlagSetInstancesDestroyed(clientAddedInstances)
    FlagSetInstancesDestroyed(clientDestroyedInstances)

    -- We dont want to do a whole bunch of broadcasts so we handle this in the spawner
    clientAddedInstances = {}
    clientDestroyedInstances = {}

    local instancesToKeep = {}
    for id, instance in pairs(serverInstances) do
        if instance.keepWhenInactive then
            instancesToKeep[id] = instance
        else
            instance.isDestroyed = true
        end
    end

    serverInstances = instancesToKeep
    UpdateCurrentInstances()

    if not localOnly then
        RELIABLE_EVENTS.BroadcastToServer(API.Events.UserDestroyAll)
    end

    Events.Broadcast(API.Events.AllInstancesDestroyed, COMPONENT_ROOT)
end


-- Core callback when the players private networked data changes
function OnPrivateNetworkedPropertyChanged(player, key)
    if isActive == false then
        return
    end
    if API.IsPlayerPrivateNetworkKey(REPLICATOR_ID, key) then
        serverIncomingChange = true
    end
end

-- Core callback when the buffer changes
function OnPropertyChanged(owner, propertyName)
    if isActive == false then
        return
    end
    if propertyName == "Buffer" then
        serverIncomingChange = true
    end
end

function GetInstancesArray()
    local result = {}
    for instance, _ in pairs(instances) do
        table.insert(result, instance)
    end
    return result
end

-- New experimental function
function ConvertExistingCoreObjectsToInstances()
    local convert = UserFunctions.ConvertCoreObjectToInstance
    if convert == nil then
        return
    end

    local defaultGroup = DEFAULT_PARENT

    -- Dont convert existing core objects depending on the parent
    if defaultGroup == nil or defaultGroup == World.GetRootObject() or defaultGroup == COMPONENT_ROOT then
        return
    end

    for _, coreObject in ipairs(defaultGroup:GetChildren()) do
        local instance, needsSpawning = convert(userSettings, coreObject)
        if instance then
            instance.replicatorId = REPLICATOR_ID
            if not needsSpawning then
                API.AddCoreObjectToSpawner(coreObject, instance)
            end
            instance.existingCoreObject = coreObject
            API.AddInstance(instance, true)
            existingCoreObjects[instance.id] = coreObject
        end
    end

    -- Convert all the client instances into server instances
    for instance in pairs(clientAddedInstances) do
        serverInstances[instance.id] = instance
    end
    clientAddedInstances = {}
end

function GetUserSettings()
    return userSettings
end

function GetIsLocked()
    return isLocked
end

function Tick()
    if serverIncomingChange then
        serverIncomingChange = false
        local buffer = GetServerBuffer()
        if buffer then
            local newInstances = ParseStringBuffer(buffer)
            ProcessServerInstancesFromBuffer(newInstances)
        end
    end
end
--[[ DISABLED PRIOR REMOVAL
-- Initialize
Events.Connect(API.Events.AddInstance, AddInstance)
Events.Connect(API.Events.DestroyInstance, DestroyInstance)
Events.Connect(API.Events.ModifyInstance, ModifyInstance)
Events.Connect(API.Events.ActivateReplicator, ActivateReplicator)
Events.Connect(API.Events.DeactivateReplicator, DeactivateReplicator)
Events.Connect(API.Events.DestroyAllInstances, DestroyAllInstances)
Events.Connect(API.Events.LockReplicator, LockReplicator)
Events.Connect(API.Events.UnlockReplicator, UnlockReplicator)

local functionTable = {}

functionTable.GetInstances = GetInstancesArray
functionTable.GetUserSettings = GetUserSettings
functionTable.GetIsLocked = GetIsLocked

functionTable.id = REPLICATOR_ID
functionTable.root = COMPONENT_ROOT
functionTable.spawnParent = DEFAULT_PARENT
functionTable.userFunctions = UserFunctions


-- Register the replicator
API.RegisterReplicator(REPLICATOR_ID, functionTable)

-- Wait for the spawners to be registered
Task.Wait()

if UserFunctions.InitializeSettings then
    userSettings = UserFunctions.InitializeSettings(COMPONENT_ROOT)
end

-- Any objects the creator has put inside the replicator core objects folder can be loaded
ConvertExistingCoreObjectsToInstances()

if USE_NETWORKED_OBJECT then
    DOWNSTREAM.customPropertyChangedEvent:Connect(OnPropertyChanged)
else
    LOCAL_PLAYER.privateNetworkedDataChangedEvent:Connect(OnPrivateNetworkedPropertyChanged)
end

local buffer = GetServerBuffer()
local newInstances = ParseStringBuffer(buffer)
--if #newInstances > 0 then
    ProcessServerInstancesFromBuffer(newInstances)
--end

function OnActivationChanged(coreObject, isActive)
    if isActive then
        API.ActivateReplicator(REPLICATOR_ID, true)
    else
        API.DeactivateReplicator(REPLICATOR_ID, true)
    end
end

OnActivationChanged(COMPONENT_ROOT, API_ACTIVE.IsActive(COMPONENT_ROOT))
API_ACTIVE.ConnectToActivationChange(COMPONENT_ROOT, OnActivationChanged)
]]