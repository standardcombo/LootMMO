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

---@type APIBitString
local BitString = require(script:GetCustomProperty("BitString"))

---@type APIReplicatorTree
local TREE_HELPER = require(script:GetCustomProperty("APITreeHelper"))

---@type APIReplicator
local API = require(script:GetCustomProperty("APIReplicator"))

---@type APIActiveCoreObjects
local API_ACTIVE = require(script:GetCustomProperty("APIActiveCoreObjects"))

---@type APIStringChunk
local API_STRING_CHUNK = require(script:GetCustomProperty("APIStringChunk"))

---@type CoreObject
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

-- Objects spawned by the replicator will use this parent
local DEFAULT_PARENT = COMPONENT_ROOT:GetCustomProperty("Parent"):WaitForObject() or World.GetRootObject()

-- For networking
local USE_NETWORKED_OBJECT = COMPONENT_ROOT:GetCustomProperty("UseNetworkedObject")

local DOWNSTREAM = nil
if USE_NETWORKED_OBJECT then
    DOWNSTREAM = COMPONENT_ROOT:GetCustomProperty("Downstream"):WaitForObject()
end
local MAX_BITSTRING_LENGTH = COMPONENT_ROOT:GetCustomProperty("MaxBitStringLength")

---@type APIUserFunctions
local UserFunctions = require(COMPONENT_ROOT:GetCustomProperty("UserFunctions"))

---@type string
local REPLICATOR_ID = API.FindReplicatorIdentifier(COMPONENT_ROOT)

-- using an array here because order matters to reduce the amount of network traffic when sending downstream
---@type instance[]
local instances = {}

---@type table<integer, CoreObject>
local existingCoreObjects = {}

-- used to assign a new Id to instances
local uniqueId = 0

-- When set true, in the tick the replicator will update its string which clients will recieve
local downStreamNeedsUpdating = true

-- stores the entire instance array in text form for when the replicator is disabled
local serverBuffer = ""

-- stores the entire instance array in text form from when the replicator was first loaded in the game (the contents in the editor)
local initialServerBuffer = ""

---When a player activates or deactives via broadcast
---@type table<string, boolean>
local playerActivation = {}

-- if this is false, the replicator is disabled for everyone
local isActive = true

-- optional table the user functions API can write data to
local userSettings = {}

-- If this is true, the replicator cannot be modified
local isLocked = false

---Returns a set of instances
---@return table<instance, boolean>
function GetInstances()
    local set = {}
    for _, instance in ipairs(instances) do
        set[instance] = true
    end
    return set
end

--- Returns a key value table where the keys are ID and the values are instances
---@return table<string, instance>
function GetIdInstancesMap()
    local map = {}
    for _, instance in ipairs(instances) do
        map[instance.id] = instance
    end
    return map
end

---Shallow copy all the keys and values from one table to another
---@param copyFrom table
---@param copyTo table
function CopyKeyValues(copyFrom, copyTo)
    for key, value in pairs(copyFrom) do
        copyTo[key] = value
    end
end

---Finds an instance by id
---@param id number
---@return instance
function GetInstanceById(id)
    for _, instance in ipairs(instances) do
        if instance.id == id then
            return instance
        end
    end
end

--- Generates a new ID
function GenerateUniqueID()
    uniqueId = uniqueId + 1
    return uniqueId
end

--- Makes a new uniqueId by finding the largest
function UpdateUniqueIndex()
    uniqueId = 0
    for index, serverInstance in pairs(instances) do
        uniqueId = math.max(uniqueId, serverInstance.id)
    end
end

-- Updates all the instances to have 'children' and 'parent'
function UpdateInstanceChildrenAndParent()
    TREE_HELPER.UpdateInstanceChildrenAndParent(GetInstances())
end

-- Encodes and Decodes the instance to ensure the data on client and instance will match
function StrictifyInstance(instance)
    local writer = BitString.Writer.New()

    UserFunctions.WriteInstance(userSettings, writer, instance)
    local reader = writer:GetBitStringReader()

    -- Make a new instance by decoding what we would have sent to the server
    local parsedInstance = UserFunctions.ReadInstance(userSettings, reader)

    -- Apply the compressed version but keep using the same instance
    CopyKeyValues(parsedInstance, instance)

    -- Make our instance bit string use the writer stream
    instance._bitString = writer:GetString()
end

---Deletes an instance from the instances array by swapping the last element
---@param instance instance
function _DeleteInstanceInternal(instance)
    local index = instance.index
    assert(instances[index] == instance)

    instance.isDestroyed = true

    -- Removes the instance via swapping
    local lastInstance = instances[#instances]
    if lastInstance == instance then
        instances[index] = nil
    else
        lastInstance.index = index
        instances[index] = lastInstance
        instances[#instances] = nil
    end
end

---Recursively destroys an instance and all its children (if the instance has children)
---@param instance instance
function _RecursiveDelete(instance)
    -- delete children first
    if instance.children then
        for child in pairs(instance.children) do
            _RecursiveDelete(child)
        end
    end
    _DeleteInstanceInternal(instance)
    Events.Broadcast(API.Events.InstanceDestroyed, COMPONENT_ROOT, instance)
end

--[[
    Commands that are broadcast from a client
]]


--Recieved with a client broadcasts to server
---@param player Player
---@param replicatorId string
---@param bitString string
function OnPlayerAddInstance(player, replicatorId, bitString)
    if replicatorId ~= REPLICATOR_ID then
        return -- not indented for this replicator
    end

    if not isActive or isLocked then
        return
    end

   -- should check for id clashes, currently not a problem because we create the id on the server
    local reader = BitString.Reader.New(bitString)
    local instance = UserFunctions.ReadInstance(userSettings, reader)
    instance.replicatorId = replicatorId
    local serverId = GenerateUniqueID()

    if instance.id ~= serverId then
        warn ("An instance added to the replicator had a different id on the server")
        instance.id = serverId
    end

    if instance.parentId and instance.parentId > 0 then
        if GetInstanceById(instance.parentId) == nil then
            instance.parentId = 0 -- parent couldnt be found... maybe print a warning
        end
    end

    table.insert(instances, instance)
    instance.index = #instances

    -- Encode instance
    instance._bitString = EncodeInstance(instance)

    UpdateInstanceChildrenAndParent()

    Events.Broadcast(API.Events.InstanceAdded, COMPONENT_ROOT, instance, true)

    downStreamNeedsUpdating = true
end

function ForceEncodeAllInstances()
    for _, instance in ipairs(instances) do
        instance._bitString = EncodeInstance(instance)
    end
end

---Recieved with a client broadcasts to server
---@param player Player
---@param replicatorId string
---@param bitString APIBitString
function OnPlayerModifyInstance(player, replicatorId, bitString)
    if replicatorId ~= REPLICATOR_ID then
        return -- not indented for this replicator
    end

    if not isActive or isLocked then
        return
    end

    local reader = BitString.Reader.New(bitString)
    local parsedInstance = UserFunctions.ReadInstance(userSettings, reader)
    local id = parsedInstance.id

    UpdateInstanceChildrenAndParent()
    local instance = GetInstanceById(id)

    -- If instance wasnt found the modification wont work
    if instance then
        CopyKeyValues(parsedInstance, instance)

        -- Update the encoding of the instance
        instance._bitString = EncodeInstance(instance)

        Events.Broadcast(API.Events.InstanceModified, COMPONENT_ROOT, instance)
        UpdateDownstream()
    end
end

---Recieved with a client broadcasts to server
---@param player Player
---@param replicatorId string
---@param id integer
function OnPlayerDestroyInstance(player, replicatorId, id)
    if replicatorId ~= REPLICATOR_ID then
        return -- not indented for this replicator
    end

    if not isActive or isLocked then
        return
    end

    UpdateInstanceChildrenAndParent()

    local instance = GetInstanceById(id)

    -- If instance wasnt found, then the delete couldnt happen
    if instance then
        _RecursiveDelete(instance)
        UpdateDownstream()
    end

    UpdateUniqueIndex()
end

---Recieved with a client broadcasts to server
---@param player Player
---@param replicatorId string
function OnPlayerActivateReplicator(player, replicatorId)
    if replicatorId ~= REPLICATOR_ID then
        return -- not indented for this replicator
    end
    playerActivation[player.id] = true
    UpdateDownstream()
end

---Recieved with a client broadcasts to server
---@param player Player
---@param replicatorId string
function OnPlayerDeactivateReplicator(player, replicatorId)
    if replicatorId ~= REPLICATOR_ID then
        return -- not indented for this replicator
    end
    playerActivation[player.id] = false
    ClearDownstreamPlayerPrivateNetworkedData(player)
end

---Recieved with a client broadcasts to server
---@param player Player
---@param replicatorId string
function OnPlayerDestroyAllInstances(player, replicatorId)
    if replicatorId ~= REPLICATOR_ID then
        return -- not indented for this replicator
    end
    DestroyAllInstances(replicatorId)
    UpdateDownstream()
end

---Recieved with a client broadcasts to server
---@param player Player
---@param replicatorId string
function OnPlayerLockReplicator(player, replicatorId)
    if replicatorId ~= REPLICATOR_ID then
        return -- not indented for this replicator
    end

    isLocked = true

    UpdateDownstream()
end

---Recieved with a client broadcasts to server
---@param player Player
---@param replicatorId string
function OnPlayerUnlockReplicator(player, replicatorId)
    if replicatorId ~= REPLICATOR_ID then
        return -- not indented for this replicator
    end

    isLocked = false

    UpdateDownstream()
end

---------------------------------

---Turns an instance into a string
---@param instance instance
---@return string
function EncodeInstance(instance)
    local writer = BitString.Writer.New()
    UserFunctions.WriteInstance(userSettings, writer, instance)
    return writer:GetString()
end

---Creates a string representation of all the instances combined
---@return string
function CreateBufferString(forceEncode)
    if forceEncode then
        local buffer = {}
        for _, instance in ipairs(instances) do
            table.insert(buffer, EncodeInstance(instance))
        end
        return table.concat(buffer)
    else
        local buffer = {}
        for _, instance in ipairs(instances) do
            assert(instance._bitString)
            table.insert(buffer, instance._bitString)
        end
        return table.concat(buffer)
    end
end

--- Makes the replicator syncronize all the server instances as a string
function UpdateDownstream()
    local buffer = CreateBufferString()

    if USE_NETWORKED_OBJECT then
        UpdateDownstreamCustomProperty(buffer)
    else
        for _, player in ipairs(Game.GetPlayers()) do
            if playerActivation[player.id] == nil or playerActivation[player.id] == true then
                UpdateDownstreamPlayerPrivateNetworkedData(player, buffer)
            end
        end
    end
end

---Transfers the information to the player via PlayerPrivateNetworkedData
---@param player Player
---@param buffer string
function UpdateDownstreamPlayerPrivateNetworkedData(player, buffer)
    local key = API.GetPlayerPrivateNetworkKey(REPLICATOR_ID)
    if MAX_BITSTRING_LENGTH then
        API_STRING_CHUNK.SetPlayerPrivateNetworkedDataString(player, key, buffer, MAX_BITSTRING_LENGTH)
    else
        player:SetPrivateNetworkedData(key, nil)
        player:SetPrivateNetworkedData(key, buffer)
    end
end

---Clear the PlayerPrivateNetworkedData of a player
---@param player Player
function ClearDownstreamPlayerPrivateNetworkedData(player)
    local key = API.GetPlayerPrivateNetworkKey(REPLICATOR_ID)
    if MAX_BITSTRING_LENGTH then
        API_STRING_CHUNK.SetPlayerPrivateNetworkedDataString(player, key, "", MAX_BITSTRING_LENGTH)
    else
        player:SetPrivateNetworkedData(key, "")
    end
end

---Transfers the information to all players via a networked custom property
---@param buffer any
function UpdateDownstreamCustomProperty(buffer)
    DOWNSTREAM:SetCustomProperty("Buffer", buffer)
end

---Reads a string and creates a new table of data
---@param buffer string
---@return table<integer, instance>
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

--- Loops over the core objects existing inside the 'replicated core objects' and creates instances
--- Used when the server/client start
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
            API.AddInstance(instance)
            existingCoreObjects[instance.id] = coreObject
        end
    end

    initialServerBuffer = GetBufferString()

    UpdateDownstream()
end



function LoadFromBuffer(buffer)
    local newInstances = ParseStringBuffer(buffer)
    local serverInstances = GetIdInstancesMap()

    -----------------
    local broadcasts = {}
    broadcasts.destroyedInstances = {}
    broadcasts.addedInstances = {}
    broadcasts.modifiedInstances = {}

    -- Look existing instances, find out if any have been destroyed
    for id, instance in pairs(serverInstances) do
        if not newInstances[id] then
            broadcasts.destroyedInstances[instance] = true
            serverInstances[id] = nil
            instance.isDestroyed = true
        end
    end

    -- Loop new instances, and find out if they are new or modify existing instances
    for id, serverInstance in pairs(newInstances) do
        local existingServerInstance = serverInstances[id]
        if existingServerInstance then
            if UserFunctions.CompareInstanceProperties(userSettings, serverInstance, existingServerInstance) == false then
                CopyKeyValues(serverInstance, existingServerInstance)
                broadcasts.modifiedInstances[existingServerInstance] = true
            end
        else
            serverInstances[id] = serverInstance
            broadcasts.addedInstances[serverInstance] = true
        end
    end


    -- Replace all the instances with the ones we have in the set
    -- It might be worth changing this to preserve order etc
    instances = {}
    for index, serverInstance in pairs(serverInstances) do
        table.insert(instances, serverInstance)
        serverInstance.index = #instances
    end

    UpdateUniqueIndex()

    -- Update our instances parent and children
    UpdateInstanceChildrenAndParent()

    -- Sort so parents are first, turning the set into an array
    broadcasts.addedInstances = TREE_HELPER.SortParentsFirst(broadcasts.addedInstances)
    broadcasts.modifiedInstances = TREE_HELPER.SortParentsFirst(broadcasts.modifiedInstances)

    if not isActive and #instances > 0 then
        serverBuffer = buffer
    end

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

    UpdateDownstream()
end


-- Local events


-- Local event: AddInstance
function AddInstance(replicator, instance)
    if replicator ~= COMPONENT_ROOT then
        return -- not for us
    end

    if isLocked then
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
    StrictifyInstance(instance)

    -- Add the instance to our table of instances (todo. check it doesnt already exist)
    table.insert(instances, instance)
    instance.index = #instances

    -- todo. expensive to update all of them
    UpdateInstanceChildrenAndParent()

    local instantSpawn = instance.existingCoreObject == nil

    -- client broadcast
    Events.Broadcast(API.Events.InstanceAdded, COMPONENT_ROOT, instance, instantSpawn)

    downStreamNeedsUpdating = true
end

-- Local event: DestroyInstance
function DestroyInstance(replicator, instance)
    if replicator ~= COMPONENT_ROOT then
        return -- not for us
    end

    if isLocked then
        return
    end

    -- Will recursively delete any children
    _RecursiveDelete(instance)

    -- Update the instances and the tree
    UpdateInstanceChildrenAndParent()

    UpdateUniqueIndex()

    downStreamNeedsUpdating = true
end

---Destroys all the instances
---@param replicator CoreObject
function DestroyAllInstances(replicator)
    if replicator ~= COMPONENT_ROOT then
        return -- not for us
    end

    if isLocked then
        return
    end

    ---@type instance[]
    local instancesToKeep = {}

    ---@param instance instance
    for _, instance in pairs(instances) do
        if instance.keepWhenInactive then
            table.insert(instancesToKeep,  instance)
        else
            instance.isDestroyed = true
        end
    end

    instances = instancesToKeep

    UpdateUniqueIndex()

    Events.Broadcast(API.Events.AllInstancesDestroyed, COMPONENT_ROOT)
end

-----------------

function ActivateReplicator(replicator)
    if replicator ~= COMPONENT_ROOT then
        return -- not for us
    end
    if isActive == true then
        return
    end
    isActive = true
    API_ACTIVE.SetActive(DEFAULT_PARENT, true)
    LoadFromBuffer(serverBuffer)
    UpdateDownstream()
end

function DeactivateReplicator(replicator)
    if replicator ~= COMPONENT_ROOT then
        return -- not for us
    end
    if isActive == false then
        return
    end
    isActive = false
    serverBuffer = CreateBufferString()
    API_ACTIVE.SetActive(DEFAULT_PARENT, false)
    DestroyAllInstances(COMPONENT_ROOT)
    UpdateDownstream()
end

function ActiveReplicatorForPlayer(replicatorId, playerId)
    if replicatorId ~= REPLICATOR_ID then
        return -- not indented for this replicator
    end
    playerActivation[playerId] = true
    UpdateDownstream()
end

function DeactivateReplicatorForPlayer(replicatorId, playerId)
    if replicatorId ~= REPLICATOR_ID then
        return -- not indented for this replicator
    end
    playerActivation[playerId] = false
    if not USE_NETWORKED_OBJECT then
        local player = Game.FindPlayer(playerId)
        if player then
            ClearDownstreamPlayerPrivateNetworkedData(player)
        end
    end
end

function LockReplicator(replicator)
    if replicator ~= COMPONENT_ROOT then
        return
    end
    if isActive == false or isLocked then
        return
    end

    isLocked = true

    UpdateDownstream()
end

function UnlockReplicator(replicator)
    if replicator ~= COMPONENT_ROOT then
        return
    end
    if isActive == false or isLocked == false then
        return
    end
    
    isLocked = false

    UpdateDownstream()
end

------------------

-- Local event: ModifyInstance
function ModifyInstance(replicator, instance)
    if replicator ~= COMPONENT_ROOT then
        return -- not for us
    end

    if isLocked then
        return
    end

    StrictifyInstance(instance)

    -- Client broadcast
    Events.Broadcast(API.Events.InstanceModified, COMPONENT_ROOT, instance)

    downStreamNeedsUpdating = true
end

function OnPlayerJoined(player)
    Task.Wait()
    ForceEncodeAllInstances()
	UpdateDownstream()
end

function OnPlayerLeft(player)
    -- Remove them from this list
    playerActivation[player.id] = nil
end

-- Used by API to get the buffer string
function GetBufferString(forceEncode)
    return CreateBufferString(forceEncode)
end

function GetInitialBufferString()
    return initialServerBuffer
end

function GetInstancesArray()
    local result ={}
    for _, instance in ipairs(instances) do
        table.insert(result, instance)
    end
    return result
end

function GetUserSettings()
    return userSettings
end

function GetIsLocked()
    return isLocked
end

function Tick()
    if downStreamNeedsUpdating then
        downStreamNeedsUpdating = false
        UpdateDownstream()
    end
    Task.Wait(0.2)
end

-- Initialize
Events.ConnectForPlayer(API.Events.UserAdd, OnPlayerAddInstance)
Events.ConnectForPlayer(API.Events.UserDestroy, OnPlayerDestroyInstance)
Events.ConnectForPlayer(API.Events.UserModify, OnPlayerModifyInstance)
Events.ConnectForPlayer(API.Events.UserActivate, OnPlayerActivateReplicator)
Events.ConnectForPlayer(API.Events.UserDeactivate, OnPlayerDeactivateReplicator)
Events.ConnectForPlayer(API.Events.UserDestroyAll, OnPlayerDestroyAllInstances)
Events.ConnectForPlayer(API.Events.UserLock, OnPlayerLockReplicator)
Events.ConnectForPlayer(API.Events.UserUnlock, OnPlayerUnlockReplicator)

Events.Connect(API.Events.AddInstance, AddInstance)
Events.Connect(API.Events.DestroyInstance, DestroyInstance)
Events.Connect(API.Events.ModifyInstance, ModifyInstance)
Events.Connect(API.Events.DestroyAllInstances, DestroyAllInstances)
Events.Connect(API.Events.ActivateReplicator, ActivateReplicator)
Events.Connect(API.Events.DeactivateReplicator, DeactivateReplicator)
Events.Connect(API.Events.ActivateReplicatorForPlayer, ActiveReplicatorForPlayer)
Events.Connect(API.Events.DeactivateReplicatorForPlayer, DeactivateReplicatorForPlayer)
Events.Connect(API.Events.LockReplicator, LockReplicator)
Events.Connect(API.Events.UnlockReplicator, UnlockReplicator)

local functionTable = {}
functionTable.LoadFromBuffer = LoadFromBuffer
functionTable.GetBufferString = GetBufferString
functionTable.GetInitialBufferString = GetInitialBufferString
functionTable.GetInstances = GetInstancesArray
functionTable.GetUserSettings = GetUserSettings
functionTable.GetIsLocked = GetIsLocked
functionTable.ForceEncodeAllInstances = ForceEncodeAllInstances
functionTable.id = REPLICATOR_ID
functionTable.root = COMPONENT_ROOT
functionTable.spawnParent = DEFAULT_PARENT
functionTable.userFunctions = require(COMPONENT_ROOT:GetCustomProperty("UserFunctions"))


API.RegisterReplicator(REPLICATOR_ID, functionTable)

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)

Task.Wait() -- Wait for the Spawners to be registered

if UserFunctions.InitializeSettings then
    userSettings = UserFunctions.InitializeSettings(COMPONENT_ROOT)
end

ConvertExistingCoreObjectsToInstances()

function OnActivationChanged(coreObject, isActive)
    if isActive then
        API.ActivateReplicator(REPLICATOR_ID)
    else
        API.DeactivateReplicator(REPLICATOR_ID)
    end
end

OnActivationChanged(COMPONENT_ROOT, API_ACTIVE.IsActive(COMPONENT_ROOT))
API_ACTIVE.ConnectToActivationChange(COMPONENT_ROOT, OnActivationChanged)