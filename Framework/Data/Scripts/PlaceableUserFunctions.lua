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
    This script contains a set of user defined functions that the Core Hierarchy Replicator will use when dealing with
    Placeables.
--]]

---@type APIRealTime
local API_REALTIME = require(script:GetCustomProperty("APIRealTime"))
---@type APIDatabase
local DATABASE = require(script:GetCustomProperty("APIDatabase"))
---@type APISerializer
local SERIALIZER = require(script:GetCustomProperty("APISerializer"))

local PLACEABLE_BASIC_TEMPLATE = script:GetCustomProperty("PlaceableBasic")
local PRODUCER_BASE_TEMPLATE = script:GetCustomProperty("ProducerBase")
local INVENTORY_BASE_TEMPLATE = script:GetCustomProperty("InventoryBase")
local EMPTY_GROUP_TEMPLATE = script:GetCustomProperty("EmptyGroup")

function GetParentTemplate(instance)
    local placeableData = GetPlaceableData(instance)
    if placeableData == nil then
        return
    end
    if placeableData.IsProducerBase then
        return PRODUCER_BASE_TEMPLATE
    elseif placeableData.IsInventory then
        return INVENTORY_BASE_TEMPLATE
    end
    return PLACEABLE_BASIC_TEMPLATE
end


local API = {}

function API.InitializeSettings(replicatorRoot)
    return {}
end

-- This function isnt part of the framework, you can declare this however you want
function API.CreateInstance(settings, params)
    local instance = {}
    instance.id = 0
    instance.placeableId = params.placeableId
    instance.state = params.state or ""
    instance.position = params.position or Vector3.ZERO
    instance.rotation = params.rotation or Rotation.ZERO
    instance.serverTime = API_REALTIME.GetRealTime()
    return instance
end

function API.CompareInstanceProperties(settings, a, b)
    if a.position == b.position and a.state == b.state then
        return true
    else
        return false
    end
end

---Sets and returns instance state from the provided BitStringReader.
---@param settings table
---@param reader BitStringReader
---@return table
function API.ReadInstance(settings, reader)
    local instance = {}
    instance.id = reader:ReadUInt18()
    instance.placeableId = GetPlaceableIdFromUniqueStorageId(reader:ReadUInt12())
    instance.position = reader:ReadVector3()
    instance.rotation = reader:ReadRotation()
    instance.state = reader:ReadString()

    if settings.Use24BitTime then
        instance.serverTime = reader:ReadUInt24()
    else
        instance.serverTime = reader:ReadUInt36()
    end

    if instance.serverTime > 0 then
        instance.serverTime = API_REALTIME.ExpandTime(instance.serverTime)
    end

    return instance
end

---Writes instance state to a BitStringWriter
---@param settings table
---@param writer BitStringWriter
---@param instance table
function API.WriteInstance(settings, writer, instance)
    local uniqueStorageId = GetUniqueStorageIdFromPlaceableId(instance.placeableId)
    writer:WriteUInt18(instance.id)
    writer:WriteUInt12(uniqueStorageId)
    writer:WriteVector3(instance.position)
    writer:WriteRotation(instance.rotation)
    writer:WriteString(instance.state)

    if instance.serverTime == 0 then
        writer:WriteUInt36(0)
    else
        writer:WriteUInt36(API_REALTIME.CompactTime(math.floor(instance.serverTime)))
    end
end

function GetStaticTemplate(instance)
    local placeableData = GetPlaceableData(instance)
    if placeableData == nil then
        return nil
    end
    local staticTemplate = placeableData.Static
    if staticTemplate == nil or staticTemplate == "" then
        staticTemplate = EMPTY_GROUP_TEMPLATE
    end
    return staticTemplate
end

-- Callback for spawning a static object
function API.StaticSpawn(settings, instance, parent)
    local staticTemplate = GetStaticTemplate(instance)
    if staticTemplate == nil then
        return
    end
    instance.staticTemplate = staticTemplate
    return World.SpawnAsset(staticTemplate, {position = instance.position, rotation = instance.rotation, scale = instance.scale, parent = parent})
end

-- Callback for spawning a client object
function API.ClientSpawn(settings, instance, parent)
    local clientParentTemplate = GetParentTemplate(instance)
    if clientParentTemplate == nil then
        return
    end

    local coreObject = World.SpawnAsset(clientParentTemplate, {position = instance.position, rotation = instance.rotation, scale = instance.scale, parent = parent})
  
    local clientTemplate = GetPlaceableData(instance).Client
    if clientTemplate then
        local childCoreObject = World.SpawnAsset(clientTemplate, {parent = coreObject})
    end
    instance.clientTemplate = clientTemplate
    instance.clientParentTemplate = clientParentTemplate
    return coreObject
end

-- Callback for spawning a server context object
function API.ServerSpawn(settings, instance, parent)
    local serverParentTemplate = GetParentTemplate(instance)
    if serverParentTemplate == nil then
        return
    end

    local coreObject = World.SpawnAsset(serverParentTemplate, {position = instance.position, rotation = instance.rotation, scale = instance.scale, parent = parent})
    local serverTemplate = GetPlaceableData(instance).Server
    if serverTemplate then
        local childCoreObject = World.SpawnAsset(serverTemplate, {parent = coreObject})
    end
    instance.serverTemplate = serverTemplate
    instance.serverParentTemplate = serverParentTemplate
    return coreObject
end

-- Apply instance data onto the client object
function API.ModifyClient(settings, coreObject, instance, parent)
    local clientParentTemplate = GetParentTemplate(instance)
    local clientTemplate = GetPlaceableData(instance).Client

    -- Returning true tells the system we need to spawn a new object
    if clientParentTemplate ~= instance.clientParentTemplate or
        clientTemplate ~= instance.clientTemplate then
        return true
    end

    local newPosition = instance.position
    local newRotation = instance.rotation

    if coreObject.parent ~= parent then
        coreObject.parent = parent
    end

    if coreObject:GetPosition() ~= newPosition then
        coreObject:SetPosition(newPosition)
    end

    if coreObject:GetRotation() ~= newRotation then
        coreObject:SetRotation(newRotation)
    end
end

function API.ModifyServer(settings, coreObject, instance, parent)
    local serverParentTemplate = GetParentTemplate(instance)
    local serverTemplate = GetPlaceableData(instance).Server

    -- Returning true tells the system we need to spawn a new object
    if serverParentTemplate ~= instance.serverParentTemplate or
        serverTemplate ~= instance.serverTemplate then
        return true
    end

    local newPosition = instance.position
    local newRotation = instance.rotation

    if coreObject.parent ~= parent then
        coreObject.parent = parent
    end

    if coreObject:GetPosition() ~= newPosition then
        coreObject:SetPosition(newPosition)
    end

    if coreObject:GetRotation() ~= newRotation then
        coreObject:SetRotation(newRotation)
    end
end

function API.ModifyStatic(settings, coreObject, instance, parent)
    local staticTemplate = GetStaticTemplate(instance)

    -- Returning true tells the system we need to spawn a new object
    if staticTemplate ~= instance.staticTemplate then
        return true
    end

    local newPosition = instance.position
    local newRotation = instance.rotation

    -- If the position is slightly different return true so its respawned
    if (newPosition - coreObject:GetPosition()).sizeSquared > 1 then
        return true
    end

    -- If the rotation is slightly different return true so its respawned
    local deltaRotation = (newRotation - coreObject:GetRotation())
    if Vector3.New(deltaRotation.x, deltaRotation.y, deltaRotation.z).sizeSquared > 1 then
        return true
    end
end

function API.ConvertCoreObjectToInstance(settings, coreObject)
    local placeableId = coreObject:GetCustomProperty("PlaceableId")
    if placeableId and DATABASE.Placeables[placeableId] then
        local placeableData = DATABASE.Placeables[placeableId]
        local params = {
            placeableId = placeableId,
            position = coreObject:GetPosition(),
            rotation = coreObject:GetRotation()
        }
        local instance = API.CreateInstance(settings, params)
        return instance, true
    end
    return nil
end

function GetPlaceableData(instance)
    if instance.placeableId == nil then return nil end
    return DATABASE.Placeables[instance.placeableId]
end

function GetPlaceableIdFromUniqueStorageId(uniqueStorageId)
    for placeableId, placeableData in pairs(DATABASE.Placeables) do
        if placeableData.UniqueStorageId == uniqueStorageId then
            return placeableId
        end
    end
end

function GetUniqueStorageIdFromPlaceableId(placeableId)
    return (DATABASE.Placeables[placeableId] or {}).UniqueStorageId or 0
end


--- Validate the database data
Task.Spawn(function()
    if Environment.IsServer() then
        return
    end
    if DATABASE.Placeables == nil then
        error("You need to have placeables defined in the database")
    end
    local usedStorageIds = {}
    for placeableId, placeableData in pairs(DATABASE.Placeables) do
        local uniqueStorageId = placeableData.UniqueStorageId
        if uniqueStorageId == nil then
            error (placeableId .. " is missing a UniqueStorageId custom property in the database")
        end
        if usedStorageIds[uniqueStorageId] then
            error ("Both '" .. placeableId .. "' and '" .. usedStorageIds[uniqueStorageId]
            .. "' are using the same storage id of: " .. tostring(uniqueStorageId)  )
        end
        usedStorageIds[uniqueStorageId] = placeableId
    end
end)



return API