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
    This script handles all client and server Producer interactions. Each Producer should register with this API on the client
    and the server to ensure state and interaction can occur in either context.
--]]

---@type APIDatabase
local DATABASE = require(script:GetCustomProperty("APIDatabase"))
---@type APIInventory
local INVENTORY = require(script:GetCustomProperty("APIInventory"))
---@type APICurrency
local CURRENCY = require(script:GetCustomProperty("APICurrency"))
---@type APIDrops
local DROPS = require(script:GetCustomProperty("APIDrops"))
---@type APIItemPickups
local ITEM_PICKUPS = require(script:GetCustomProperty("APIItemPickups"))
---@type APIBuffs
local BUFFS = require(script:GetCustomProperty("APIBuffs"))
---@type APIModifyDrops
local MODIFY_DROPS = require(script:GetCustomProperty("APIModifyDrops"))
---@type APIRealTime
local REALTIME = require(script:GetCustomProperty("APIRealTime"))

---@class PlaceableData
---@field InitialProducerId string
---@field ValidToolTypes string
---@field ProducerBaseType string
---@field AllowExpiry boolean
---@field BuildRate number
---@field ReceiveableBuffs string
---@field ResetExpiryBuffs string
---@field ActiveBuffsWhileEmpty string
---@field ActiveBuffsWhilePlaced string
---@field ActiveBuffsWhileBuilding string
---@field ActiveBuffsWhileReady string
---@field ActiveBuffsWhileExpired string

---@class ProducerData
---@field UniqueStorageId integer
---@field NumberOfSeeds integer
---@field ValidProducerBaseTypes string
---@field BuildSeconds number
---@field NumberOfCollects integer
---@field RebuildSeconds number
---@field AutoBuild boolean
---@field AutoCollect boolean
---@field ReplaceProducerOnFinalCollect boolean
---@field ReplacementProducerId string
---@field CanExpire boolean
---@field ExpireSeconds number
---@field CanExpireInPlacedState boolean
---@field CanExpireInBuldingState boolean
---@field CanExpireInReadyState boolean
---@field ValidPlaceToolTypes string
---@field ValidBuildToolTypes string
---@field ValidDestroyToolTypes string
---@field ValidCollectToolTypes string
---@field PlaceEffects string
---@field CollectEffects string
---@field PlaceEffectsOffset Vector3
---@field CollectEffectsOffset Vector3
---@field DropOnCollect boolean
---@field DropTimeoutSeconds number
---@field DropItemPickupTemplate string
---@field DropMaxDistance number
---@field MaxPickupsPerDrop integer
---@field DropMinDistance number
---@field SinglePlayerDrops boolean
---@field DropForAllPlayers boolean

-- Private Variables
local producerBases = {}

-- Constants
local PRODUCER_BASES_TAG = "PRD_"

---@class APIProducers
local API = {}

API.Events = {
    ProducerPlaced = PRODUCER_BASES_TAG .. "Placed",
    ProducerStartedBuilding = PRODUCER_BASES_TAG .. "StartedBuilding",
    ProducerReadyForCollect = PRODUCER_BASES_TAG .. "Ready",
    ProducerCollected = PRODUCER_BASES_TAG .. "Collected",
    ProducerRemoved = PRODUCER_BASES_TAG .. "Removed",
    ProducerExpired = PRODUCER_BASES_TAG .. "Expired",
}

---Registers a Producer so that interactions on it can occur.
---@param producerBaseId string
---@param functionTable table
function API.RegisterProducerBase(producerBaseId, functionTable)
    producerBases[producerBaseId] = functionTable
end

---Unregisters a Producer and stops any further interactions from being allowed. This should be called when the Producer is destroyed.
---@param producerBaseId string
function API.UnregisterProducerBase(producerBaseId)
    producerBases[producerBaseId] = nil
end

---Returns true if the producer id has been registered.
---@param producerBaseId string
---@return boolean
function API.IsProducerBaseRegistered(producerBaseId)
    return producerBases[producerBaseId] ~= nil
end

---Finds a producer base
---@param target CoreObject
---@return any
function API.FindProducerBaseIdByAncestors(target)
    while Object.IsValid(target) do
        if API.IsProducerBaseRegistered(target.id) then
            return target.id
        end
        target = target.parent
    end
    return nil
end

---Returns the current state for a Producer.
---@param producerBaseId string
---@return ProducerBaseState
function API.GetProducerBaseState(producerBaseId)
	local producerBase = producerBases[producerBaseId]
    if producerBase then
        return producerBase.GetState()
    end
	return nil
end

---Returns a Producer Id based on the passed in Equipment settings.
---@param producerBaseId string
---@param toolType string
---@param equipmentSettings table
---@return string
function API.FindProducerIdFromEquipment(producerBaseId, toolType, equipmentSettings)
    local producerBase = producerBases[producerBaseId]
    if producerBase then
        return producerBase.FindProducerIdFromEquipment(toolType, equipmentSettings)
    end
end

---Returns true if the given Tool type can Place a Producer in this base.
---@param producerBaseId string
---@param producerId string
---@param toolType string
---@return boolean
function API.CanPlaceProducer(producerBaseId, producerId, toolType, equipmentSettings)
    local producerBase = producerBases[producerBaseId]
    if producerBase then
        return producerBase.CanPlaceProducer(producerId, toolType, equipmentSettings)
    end
end

---Places a producer on a producer base.
---@param producerBaseId string
---@param producerId string
function API.PlaceProducer(producerBaseId, producerId)
    local producerBase = producerBases[producerBaseId]
    if producerBase then
        producerBase.PlaceProducer(producerId)
    end
end

---Removes a producer from a prooducer base.
---@param producerBaseId string
function API.RemoveProducer(producerBaseId)
    local producerBase = producerBases[producerBaseId]
    if producerBase then
        producerBase.RemoveProducer()
    end
end

---Collects a Producer.
---@param player Player|nil
---@param producerBaseId string
function API.Collect(player, producerBaseId)
    local producerBase = producerBases[producerBaseId]
    if producerBase then
        API.HandleProducerDrops(player, producerBaseId)
        producerBase.Collect()
    end
end

function API.CollectDropResults(player, producerBaseId, dropResults)
    local producerBase = producerBases[producerBaseId]
    if producerBase then
        dropResults = dropResults or producerBase.GetDropResults(player)
        HandleCollectDrops(player, producerBaseId, dropResults)
    end
end

function API.HandleProducerDrops(player, producerBaseId)
    local producerBase = producerBases[producerBaseId]

    if producerBase then
        local dropResults = producerBase.GetDropResults(player)
        local state = API.GetProducerBaseState(producerBaseId)
        local producerId = state.producerId
        if producerId then
            local producerData = DATABASE.Producers[producerId]
            if producerData then
                local dropType = ""
                if state.hasExpired then
                    dropType = "ExpiredDrops"
                elseif state.isReadyForCollect then
                    dropType = "Drops"
                elseif not state.hasStartedBuilding then
                    dropType = "PlacedDrops"
                elseif state.isRebuilding then
                    dropType = "RebuildingDrops"
                else
                    dropType = "BuildingDrops"
                end

                local function GetModifiedDrops(data, appendDrops, dropModifiers)
                    local buffTargetId = producerBase.GetState().buffTargetId
                    for _, buffId in pairs(BUFFS.GetBuffs(buffTargetId)) do
                        local inputBuffData = data[buffId]
                        if inputBuffData then
                            local modifyBuffs = inputBuffData[dropType]
                            if modifyBuffs then
                                for dropName, dropData in pairs(modifyBuffs) do
                                    if dropData.ItemId or dropData.CurrencyId then
                                        appendDrops[dropName] = dropData
                                    else
                                        table.insert(dropModifiers, {
                                            Data = dropData,
                                            Stacks = math.ceil(BUFFS.GetBuffRemainingAmount(buffTargetId, buffId, REALTIME.GetRealTime()))
                                        })
                                    end
                                end
                            end
                        end
                    end
                end

                local drops = producerData[dropType]
                drops = drops or {}

                local placeableData = DATABASE.Placeables[state.placeableId]
                local dropModifiers = {}
                local appendDrops = {}

                GetModifiedDrops(placeableData.InputBuffs or {}, appendDrops, dropModifiers)
                GetModifiedDrops(producerData.InputBuffs or {}, appendDrops, dropModifiers)

                if #appendDrops > 0 or #dropModifiers > 0 then
                    drops = MODIFY_DROPS.ApplyDropModifiers(drops, appendDrops, dropModifiers)
                end

                HandleDrops(player, producerBaseId, drops, dropResults)
            end
        end
    end
end

---Tells a Producer to start building regardless of if it can
---@param producerBaseId string
function API.StartBuildingProducer(producerBaseId)
    local producerBase = producerBases[producerBaseId]
    if producerBase then
        producerBase.StartBuildingProducer()
    end
end

---Returns Product data based on a producerId.
---@param producerId string
---@return ProducerData
function API.GetProducerData(producerId)
    return DATABASE.Producers[producerId]
end

---comment
---@param placeableId string
---@return PlaceableData
function API.GetPlaceableData(placeableId)
    return DATABASE.Placeables[placeableId]
end

function API.CheckHasAllBuffs(producerBaseId, buffs)
    local producerBase = producerBases[producerBaseId]
    if producerBase then
        producerBase.CheckHasAllBuffs(buffs)
    end
end

function API.CheckHasAnyBuffs(producerBaseId, buffs)
    local producerBase = producerBases[producerBaseId]
    if producerBase then
        producerBase.CheckHasAnyBuffs(buffs)
    end
end

function HandleDrops(player, producerBaseId, dropTable, dropResults)
    if dropTable == nil then
        return
    end

    local producerBaseState = API.GetProducerBaseState(producerBaseId)
    local producerId = producerBaseState.producerId
    local producerData = DATABASE.Producers[producerId]

    if producerData then
        dropResults = DROPS.CalculateDrops(dropTable,1, dropResults)
        dropResults.producerData = producerData
    end
end

function HandleCollectDrops(player, producerBaseId, dropResults)
    local drops = dropResults
    if drops == nil then
        return
    end

    local producerBaseState = API.GetProducerBaseState(producerBaseId)
    local producerData = dropResults.producerData

    if producerData then
        -- If Player is nil we have to drop the item in world
        if producerData.DropOnCollect or not player then
            ITEM_PICKUPS.CreateItemPickupsForDrops(
                player,
                drops,
                producerData.DropItemPickupTemplate,
                producerBaseState.position,
                producerData.DropMinDistance,
                producerData.DropMaxDistance,
                producerData.DropForAllPlayers,
                producerData.SinglePlayerDrops,
                producerData.DropTimeoutSeconds,
                producerData.MaxPickupsPerDrop
            )
        else
            for itemId, amount in pairs(drops.Items) do
                INVENTORY.AddToInventory(player, nil, INVENTORY.ItemType.Item, itemId, amount, 0, false)
            end

            for currencyId, amount in pairs(drops.Currencies) do
                CURRENCY.AddCurrencyAmount(player, currencyId, amount)
            end
        end

        if producerData.CollectEffects and producerData.CollectEffects ~= "" then
            local params = { position = producerBaseState.position + producerData.CollectEffectsOffset }
            local effects = World.SpawnAsset(producerData.CollectEffects, params)

            -- Ensure these don't stack up
            if effects.lifeSpan == 0 then
                effects.lifeSpan = 5
            end
        end
    end
end

--- Validate the database data
Task.Spawn(function()
    if Environment.IsServer() or DATABASE.Producers == nil then
        return
    end

    local usedStorageIds = {}
    for producerId, producerData in pairs(DATABASE.Producers) do
        if string.sub(producerId, 1, 2) ~= "--" then
            local uniqueStorageId = producerData.UniqueStorageId
            if uniqueStorageId == nil then
                error (producerId .. " is missing a UniqueStorageId custom property in the database")
            end
            if usedStorageIds[uniqueStorageId] then
                error ("Both '" .. producerId .. "' and '" .. usedStorageIds[uniqueStorageId]
                .. "' are using the same storage id of: " .. tostring(uniqueStorageId)  )
            end
            usedStorageIds[uniqueStorageId] = producerId
        end
    end
end)


return API