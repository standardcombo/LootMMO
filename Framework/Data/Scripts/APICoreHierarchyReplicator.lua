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

--[[
    This API allows you to communicate with a Core Hierarchy Replicator

    Simply require this into your script.
]]

---@class APIReplicator
local API = {}

---@type table<string, table>
local replicators = {}

---@type instance
local currentInstance = nil

---@type table
local spawners = {}

---@class instance
---@field isDestroyed boolean
---@field replicatorId string
---@field parentId integer
---@field id integer
---@field children instance[] @unordered list of children
---@field keepWhenInactive boolean|nil @If true, the instance and its core object will not be destroyed

local REP_TAG = "REP_"

API.Events = {
    UserAdd = REP_TAG .. "+",
    UserDestroy = REP_TAG .. "-",
    UserModify = REP_TAG .. "m",
    UserActivate = REP_TAG .. "a",
    UserDeactivate = REP_TAG .. "d",
    UserDestroyAll = REP_TAG .. "da",
    UserLock = REP_TAG .. "l",
    UserUnlock = REP_TAG .. "u",
    AddInstance = REP_TAG .. "AddInstance",
    DestroyInstance = REP_TAG .. "DestroyInstance",
    ModifyInstance = REP_TAG .. "ModifyInstance",
    DestroyAllInstances = REP_TAG .. "DestroyAllInstances",
    ActivateReplicator = REP_TAG .. "ActivateReplicator",
    DeactivateReplicator = REP_TAG .. "DeactivateReplicator",
    ActivateReplicatorForPlayer = REP_TAG .. "ActivateReplicatorForPlayer",
    DeactivateReplicatorForPlayer = REP_TAG .. "DeactivateReplicatorForPlayer",
    LockReplicator = REP_TAG .. "LockReplicator",
    UnlockReplicator = REP_TAG .. "UnlockReplicator",
    InstanceDestroyed = REP_TAG .. "InstanceDestroyed",
    InstanceAdded = REP_TAG .. "InstanceAdded",
    InstanceModified = REP_TAG .. "InstanceModified",
    AllInstancesDestroyed = REP_TAG .. "AllInstancesDestroyed"
}

---Called by the Spawners
---@param spawnerRoot CoreObject
function API.RegisterSpawners(spawnerRoot)
    if Environment.IsServer() then
        ---@type Script
        spawners.server = spawnerRoot:GetCustomProperty("Server"):WaitForObject()
        ---@type Script
        spawners.static = spawnerRoot:GetCustomProperty("Static"):WaitForObject()
    elseif Environment.IsClient() then
        ---@type Script
        spawners.client = spawnerRoot:GetCustomProperty("Client"):WaitForObject()
        ---@type Script
        spawners.static = spawnerRoot:GetCustomProperty("Static"):WaitForObject()
    end
end

---Returns true if spawners have been registered.
---@return boolean
function API.IsReady()
    return spawners.static ~= nil
end

---Gets a table of all the replicators currently registered
---@return string[]
function API.GetReplicators()
    local result = {}
    for id in pairs(replicators) do
        table.insert(result, id)
    end
    return result
end

--- Is the id registered
function API.IsReplicatorId(id)
    return replicators[id] ~= nil
end

---Returns the core object that instances are spawned in
---@param replicatorId string
---@return CoreObject
function API.GetReplicatorSpawnParent(replicatorId)
    local replicator = replicators[replicatorId]
    return replicator.spawnParent
end

---Counts the number of static instances pending to be spawned on the local machine for a specific replicator
---@param replicatorId string
---@return number
function API.CountPendingStaticInstancesToSpawn(replicatorId)
    return spawners.static.context.CountPendingInstancesToSpawn(replicatorId)
end

---Counts the number of client instances pending to be spawned on the local machine for a specific replicator
---@param replicatorId string
---@return number
function API.CountPendingClientInstancesToSpawn(replicatorId)
    if Environment.IsClient() then
        return spawners.client.context.CountPendingInstancesToSpawn(replicatorId)
    else
        error ("Cant call this from server context")
    end
end

---Counts the number of server instances pending to be spawned on the local machine for a specific replicator
---@param replicatorId string
---@return number
function API.CountPendingServerInstancesToSpawn(replicatorId)
    if Environment.IsServer() then
        return spawners.server.context.CountPendingInstancesToSpawn(replicatorId)
    else
        error ("Cant call this from client context")
    end
end

--- Spawners call this function before spawning an object so the object can find which instance it is easily
---comment
---@param instance instance
function API.SetCurrentInstance(instance)
    currentInstance = instance
end

--- Called after an instance is spawned to ensure you cant accidentally get a nil instance
function API.ClearCurrentInstance()
    currentInstance = nil
end

--- If called during the spawning of an instance, will return the instance, else nil
function API.GetCurrentInstance()
    return currentInstance
end

--- Returns a table of per-replicator settings that may have been initialized by the UserFunctions
---@param replicatorId string
---@return table
function API.GetUserSettings(replicatorId)
    return replicators[replicatorId].GetUserSettings()
end

---Searches through self and parents for a replicator
---@param coreObject CoreObject
---@return string
function API.FindReplicatorIdByAncestors(coreObject)
    while Object.IsValid(coreObject) do
        local id = API.FindReplicatorIdentifier(coreObject)
        if API.IsReplicatorId(id) then
            return id
        end
        coreObject = coreObject.parent
    end
end

---Gets the id of a core object as would be used by the replicator system
---@param coreObject CoreObject
---@return string
function API.FindReplicatorIdentifier(coreObject)
    local replicatorId = ({CoreString.Split(coreObject.id, ":")})[1]
    return replicatorId
end

---Registers a replicator to the API
---@param replicatorId string
---@param functionTable table
function API.RegisterReplicator(replicatorId, functionTable)
	if replicators[replicatorId] then
		warn(string.format("Registering replicator with id: %s twice", replicatorId))
	end

    replicators[replicatorId] = functionTable
end

---Clears a replicator and loads all the instances encoded in the string. Server only
---@param replicatorId string
---@param bufferString string
function API.LoadFromBuffer(replicatorId, bufferString)
    if Environment.IsServer() then
        local replicator = replicators[replicatorId]
        replicator.LoadFromBuffer(bufferString)
    else
        error("Cannot call LoadFromBuffer from client")
    end
end

---Gives you a string of all the instances in the buffer. Server only
---@param replicatorId string the .id of a replicator root
---@param forceEncode boolean if true it converts all the instances into bitstring
---@return string @Non human readable bit string
function API.GetBufferString(replicatorId, forceEncode)
    if Environment.IsServer() then
        local replicator = replicators[replicatorId]
        return replicator.GetBufferString(forceEncode)
    else
        error("Cannot access the buffer string from client")
    end
end

---Gives you a string of all the instances in the buffer after initialization. Server only
---@param replicatorId string @the .id of a replicator root
---@return string @Non human readable bit string
function API.GetInitialBufferString(replicatorId)
    if Environment.IsServer() then
        local replicator = replicators[replicatorId]
        return replicator.GetInitialBufferString()
    else
        error("Cannot access the buffer string from client")
    end
end



---Creates a new instance table but doesnt register it. See API.AddInstance
---@param replicatorId string
---@return instance
function API.CreateInstance(replicatorId, ...)
    local replicator = replicators[replicatorId]
    assert(replicator)
    local instance = replicator.userFunctions.CreateInstance(replicator.GetUserSettings(), ...)
    instance.replicatorId = replicatorId
    return instance
end

---Manually adds a core object to an instance, associating it with the spawner
---@param coreObject table
---@param instance any
function API.AddCoreObjectToSpawner(coreObject, instance)
    if coreObject.isStatic then
        spawners.static.context.RegisterInstance(instance, coreObject)
    elseif coreObject.isClientOnly then
        spawners.client.context.RegisterInstance(instance, coreObject)
    elseif coreObject.isServerOnly then
        spawners.server.context.RegisterInstance(instance, coreObject)
    end
end

---Adds an instance into the replicator, it will be automatically syncronized and core objects will be spawned
---@param instance instance
function API.AddInstance(instance, localOnly)
    assert(instance.replicatorId)
    local replicatorId = instance.replicatorId
    local replicator = replicators[replicatorId]
    assert(replicator)
    Events.Broadcast(API.Events.AddInstance, replicator.root, instance, localOnly)
end

---Modifies an instance. It will be re-serialized to ensure client and server match
---@param instance instance
function API.ModifyInstance(instance, localOnly)
    assert(instance.replicatorId)
    local replicatorId = instance.replicatorId
    local replicator = replicators[replicatorId]
    assert(replicator)
    Events.Broadcast(API.Events.ModifyInstance, replicator.root, instance, localOnly)
end

---Destroys an instance
---@param instance instance
---@param localOnly boolean|nil @if true, we wont broadcast to the server
function API.DestroyInstance(instance, localOnly)
    assert(instance.replicatorId)
    local replicatorId = instance.replicatorId
    local replicator = replicators[replicatorId]
    assert(replicator)
    Events.Broadcast(API.Events.DestroyInstance, replicator.root, instance, localOnly)
end

---Destroys all the instances in the replicator
---@param replicatorId string
---@param localOnly boolean|nil @if true, we wont broadcast to the server
function API.DestroyAllInstances(replicatorId, localOnly)
    local replicator = replicators[replicatorId]
    assert(replicator)
    Events.Broadcast(API.Events.DestroyAllInstances, replicator.root, localOnly)
end

---Returns an array of all the instances for this replicator
---@param replicatorId string
---@return instance[]
function API.GetInstances(replicatorId)
    local replicator = replicators[replicatorId]
    assert(replicator)
    return replicator.GetInstances()
end

---Finds the spawned static core object for an instance
---@param instance instance
---@return CoreObject
function API.GetStaticCoreObject(instance)
    if instance == nil then return nil end
    return spawners.static.context.GetCoreObject(instance)
end

---Finds the client spawned core object for an instance
---@param instance instance
---@return CoreObject
function API.GetClientCoreObject(instance)
    if instance == nil then return nil end
    return spawners.client.context.GetCoreObject(instance)
end

---Finds the server spawned core object for an instance
---@param instance instance
---@return CoreObject
function API.GetServerCoreObject(instance)
    if instance == nil then return nil end
    return spawners.server.context.GetCoreObject(instance)
end

---Finds the networked spawned core object for an instance
---@param instance instance
---@return CoreObject
function API.GetNetworkedCoreObject(instance)
    if instance == nil then return nil end
    return spawners.networked.context.GetCoreObject(instance)
end

---comment
---comment
---@param replicatorId string
---@return table
function API.GetUserFunctions(replicatorId)
    local replicator = replicators[replicatorId]
    return replicator.userFunctions
end

---Waits for the instance for a core object
---@param coreObject CoreObject
---@param timeOut float|nil
---@return instance
function API.WaitForInstance(coreObject, timeOut)
    local instance = API.GetInstance(coreObject)
    if instance then
        return instance
    end

    local startTime = time()
    while timeOut == nil or time() < startTime + timeOut do
        Task.Wait()
        instance = API.GetInstance(coreObject)
        if instance then
            return instance
        end
    end
end

---Finds the instance associated with this core object
---@param coreObject CoreObject
---@return instance
function API.GetInstance(coreObject)
    if not Object.IsValid(coreObject) then
        return nil
    end

    while not API.IsReady() do
        Task.Wait()
    end

    if coreObject.isStatic then
        if Environment.IsClient() and Environment.IsLocalGame() and not Environment.IsMultiplayerPreview() then
            local serverInstance = spawners.static.context.GetInstance(coreObject)
            if serverInstance ~= nil then
                local instance = spawners.client.context.GetInstanceById(serverInstance.id, serverInstance.replicatorId)
                if instance then
                    return instance
                end
            end
        else
            local instance = spawners.static.context.GetInstance(coreObject)
            if instance then
                return instance
            end
        end
    elseif coreObject.isClientOnly then
        local instance = spawners.client.context.GetInstance(coreObject)
        if instance then
            return instance
        end
    elseif coreObject.isServerOnly then
        local instance = spawners.server.context.GetInstance(coreObject)
        if instance then
            return instance
        end
    elseif coreObject.isNetworked then
        if spawners.networked then
            local instance = spawners.networked.context.GetInstance(coreObject)
            if instance then
                return instance
            end
        end
    end
    -- Unable to find anything to return
    return nil
end

---Gets the private network key used for a replicator
---@param replicatorId string
---@return string
function API.GetPlayerPrivateNetworkKey(replicatorId)
    return REP_TAG .. replicatorId
end

---Check if a key is one of the keys used for a replicator when using PlayerPrivateNetworkData
---@param replicatorId string|nil
---@param key string
---@return boolean
function API.IsPlayerPrivateNetworkKey(replicatorId, key)
    if replicatorId then
        local start = REP_TAG .. replicatorId
        if string.sub(key, 1, string.len(start)) == start then
            return true
        end
    else
        return string.find(key, "^" .. REP_TAG) ~= nil
    end
end

---On the server, this activates the replicator for all players who want to recieve from it
---On the client, its will activate the replicator as long as the replicator is active on the server
---@param replicatorId string
---@param localOnly boolean|nil @if true, we wont broadcast to the server that we activated our replicator
function API.ActivateReplicator(replicatorId, localOnly)
    local replicator = replicators[replicatorId]
    Events.Broadcast(API.Events.ActivateReplicator, replicator.root, localOnly)
end

---On the server, this will deactivate a replicator and all players will have their instances removed
---@param replicatorId string
---@param localOnly boolean|nil @if true, we wont broadcast to the server that we deactivated our replicator
function API.DeactivateReplicator(replicatorId, localOnly)
    local replicator = replicators[replicatorId]
    Events.Broadcast(API.Events.DeactivateReplicator, replicator.root, localOnly)
end

---On the server, this marks that a player wishes to recieve replicated data
---@param replicatorId string
---@param playerId string
function API.ActivateReplicatorForPlayer(replicatorId, playerId)
    local replicator = replicators[replicatorId]
    Events.Broadcast(API.Events.ActivateReplicatorForPlayer, replicator.root, playerId)
end

---On the server, this marks that a player doesnt wish to recieve replicated data
---@param replicatorId string
---@param playerId string
function API.DeactivateReplicatorForPlayer(replicatorId, playerId)
    local replicator = replicators[replicatorId]
    Events.Broadcast(API.Events.DeactivateReplicatorForPlayer, replicator.root, playerId)
end

function API.LockReplicator(replicatorId, localOnly)
    local replicator = replicators[replicatorId]
    Events.Broadcast(API.Events.LockReplicator, replicator.root, localOnly)
end

function API.UnlockReplicator(replicatorId, localOnly)
    local replicator = replicators[replicatorId]
    Events.Broadcast(API.Events.UnlockReplicator, replicator.root, localOnly)
end

function API.IsReplicatorLocked(replicatorId)
    local replicator = replicators[replicatorId]
    return replicator.GetIsLocked()
end

return API