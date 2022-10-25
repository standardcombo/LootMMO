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

---@type APIReplicator
local API = require(script:GetCustomProperty("APIReplicator"))

---@type APIEventHelper
local EVENT = require(script:GetCustomProperty("APIEventHelper"))

local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

---@type table<instance, CoreObject>
local instanceToCoreObject = {}

---@type table<CoreObject, instance>
local coreObjectToInstance = {}

---@type table<instance, boolean>
local pendingInstancesToSpawn = {}


function RegisterInstance(instance, coreObject)
    instanceToCoreObject[instance] = coreObject
    coreObjectToInstance[coreObject] = instance
end

function UnregisterInstance(instance)
    local coreObject = instanceToCoreObject[instance]
    instanceToCoreObject[instance] = nil
    if coreObject then -- core object may already be destroyed, dont use IsValid
        coreObjectToInstance[coreObject] = nil
    end
end

function AddPendingInstance(instance)
    pendingInstancesToSpawn[instance] = true
end

function CountPendingInstancesToSpawn(replicatorId)
    local count = 0
    for instance in pairs(pendingInstancesToSpawn) do
        if instance.replicatorId == replicatorId then
            count = count+1
        end
    end
    return count
end

--- Finds the API Spawn function from the replicator used by the instance
function GetSpawnUserFunction(instance)
    local replicatorId = instance.replicatorId
    assert(replicatorId)
    local userFunctions = API.GetUserFunctions(replicatorId)
    assert(userFunctions)
    if script.isStatic then
        return userFunctions.StaticSpawn
    elseif script.isClientOnly then
        return userFunctions.ClientSpawn
    elseif script.isServerOnly then
        return userFunctions.ServerSpawn
    end
end

function GetModifyUserFunction(instance)
    local replicatorId = instance.replicatorId
    assert(replicatorId)
    local userFunctions = API.GetUserFunctions(replicatorId)
    assert(userFunctions)
    if script.isStatic then
        return userFunctions.ModifyStatic
    elseif script.isClientOnly then
        return userFunctions.ModifyClient
    elseif script.isServerOnly then
        return userFunctions.ModifyServer
    end
end


function GetInstanceParentCoreObject(instance)
    local replicatorId = instance.replicatorId
    assert(replicatorId)
    local parent = API.GetReplicatorSpawnParent(replicatorId)
    if instance.parent then
        parent = instanceToCoreObject[instance.parent]
        assert(parent)
    end
    return parent
end

function RecursiveSpawnChildren(instance)
    AddPendingInstance(instance)

    for child in pairs(instance.children) do
        RecursiveSpawnChildren(child)
    end
end

function Tick()
    _G.IsReplicatorSpawning=false
    for instance in pairs(pendingInstancesToSpawn) do
        _G.IsReplicatorSpawning=true
        local canSpawn = true
        if instance.parent then
            if instanceToCoreObject[instance.parent] == nil then
                canSpawn = false
            end
        end
        if canSpawn then
            SpawnInstance(instance)
            return
        end
    end
end

function SpawnInstance(instance)
    pendingInstancesToSpawn[instance] = nil

    -- We already have a core object for this instance so no need to spawn one
    if Object.IsValid(instanceToCoreObject[instance]) then
        return
    end

    local parent = GetInstanceParentCoreObject(instance)
    API.SetCurrentInstance(instance)
    local userSpawnFunction = GetSpawnUserFunction(instance)
    if not userSpawnFunction then
        return
    end

    local settings = API.GetUserSettings(instance.replicatorId)
    local coreObject = userSpawnFunction(settings, instance, parent)

    API.ClearCurrentInstance(instance)
    if coreObject then
        RegisterInstance(instance, coreObject)
    end
end

-- Callback
function OnInstanceAdded(replicator, instance, instantSpawn)
    if instance.modifiedEvent == nil then
        instance.modifiedEvent = EVENT.New()
    end
    if instantSpawn then
        SpawnInstance(instance)
    else
        AddPendingInstance(instance)
    end
end

-- Callback
function OnInstanceModified(replicator, instance)
    local coreObject = instanceToCoreObject[instance]
    local settings = API.GetUserSettings(instance.replicatorId)

    local userModifyFunction = GetModifyUserFunction(instance)
    local respawn = true
    if Object.IsValid(coreObject) then
        local parent = GetInstanceParentCoreObject(instance)
        if userModifyFunction then
            respawn = userModifyFunction(settings, coreObject, instance, parent)
        end
    end

    if respawn then
        -- We cannot move a static object, so we must destroy it and create a new one
        local coreObject = instanceToCoreObject[instance]
        if Object.IsValid(coreObject) then
            coreObject:Destroy()
        end
        UnregisterInstance(instance)
        -- We need to spawn this object AND all its children
        RecursiveSpawnChildren(instance)
    else
        instance.modifiedEvent:Run()
    end
end

-- Callback
function OnInstanceDestroyed(replicator, instance)
    local coreObject = instanceToCoreObject[instance]
    if coreObject then
        if Object.IsValid(coreObject) then
            coreObject:Destroy()
        end
    end
    UnregisterInstance(instance)

    -- If it was pended to spawn, remove it
    pendingInstancesToSpawn[instance] = nil
end

function OnAllInstancesDestroyed(replicator)
    local replicatorId = API.FindReplicatorIdentifier(replicator)

    -- Remove any instances already spawned and destroy them
    for instance, coreObject in pairs(instanceToCoreObject) do
        if instance.replicatorId == replicatorId then
            if not instance.keepWhenInactive then
                if Object.IsValid(coreObject) then
                    coreObject:Destroy()
                end
                UnregisterInstance(instance)
            end
        end
    end

    -- Remove any instances pending to spawn for this replicator
    for instance in pairs(pendingInstancesToSpawn) do
        if instance.replicatorId == replicatorId then
            pendingInstancesToSpawn[instance] = nil
        end
    end

end

function GetCoreObject(instance)
    return instanceToCoreObject[instance]
end

function GetInstance(coreObject)
    return coreObjectToInstance[coreObject]
end

function GetInstanceById(id, replicatorId)
    for instance in pairs(instanceToCoreObject) do
        if instance.id == id and instance.replicatorId == replicatorId then
            return instance
        end
    end
end

-- Task for cleaning up leaks
Task.Spawn(function()
    local i = 1
    for instance, coreObject in pairs(instanceToCoreObject) do
        if not Object.IsValid(coreObject) then
            print ("There was a destroyed core object in the instanceToCoreObject")
            instanceToCoreObject[instance] = nil
        end
    end
    for coreObject, instance in pairs(coreObjectToInstance) do
        if not Object.IsValid(coreObject) then
            print ("There was a destroyed core object in the coreObjectToInstance")
            coreObjectToInstance[coreObject] = nil
        end
    end
    Task.Wait(1)
end).repeatCount = -1

if script.isServerOnly or script.isClientOnly then
    API.RegisterSpawners(COMPONENT_ROOT)
end

Events.Connect(API.Events.InstanceAdded, OnInstanceAdded)
Events.Connect(API.Events.InstanceModified, OnInstanceModified)
Events.Connect(API.Events.InstanceDestroyed, OnInstanceDestroyed)
Events.Connect(API.Events.AllInstancesDestroyed, OnAllInstancesDestroyed)