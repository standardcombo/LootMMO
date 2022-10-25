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
    This script handles all client and server placeable interactions. Each Plot should register with this API on the
    client and the server to ensure state and interaction can occur in either context.
--]]

---@type APIDatabase
local DATABASE = require(script:GetCustomProperty("APIDatabase"))
---@type APIInventory
local INVENTORY = require(script:GetCustomProperty("APIInventory"))
---@type APIItemPickups
local ITEM_PICKUPS = require(script:GetCustomProperty("APIItemPickups"))
---@type APIBuffs
local BUFFS = require(script:GetCustomProperty("APIBuffs"))
---@type APISerializer
local SERIALIZER = require(script:GetCustomProperty("APISerializer"))

-- Constants
local PLACEABLES_TAG = "PBL_"

-- Private Variables
local placeables = {}

---@class APIPlaceables
local API = {}

API.Events = {
    PlaceablePlaced = PLACEABLES_TAG .. "Placed",
    PlaceableRemoved = PLACEABLES_TAG .. "Removed",
}

---Registers a Placeable so that interactions on it can occur.
---@param placeableId string
---@param functionTable table
function API.RegisterPlaceable(placeableId, functionTable)
    placeables[placeableId] = functionTable
end

---Unregisters a Placeable and stops any further interactions from being allowed. This should be called when the
---Placeable is destroyed.
---@param placeableId string
function API.UnregisterPlaceable(placeableId)
    placeables[placeableId] = nil
end

---Returns true if the placeable id has been registered.
---@param placeableId string
---@return boolean
function API.IsPlaceableRegistered(placeableId)
    return placeables[placeableId] ~= nil and placeables[placeableId] ~= nil
end

---Finds a Placeable Id by searching upward through the hierarchy.
---@param target CoreObject
---@return string
function API.FindPlaceableIdByAncestors(target)
    while Object.IsValid(target) do
        if API.IsPlaceableRegistered(target.id) then
            return target.id
        end
        target = target.parent
    end
    return nil
end

---Returns the current state for a Placeable.
---@param placeableId string
---@return PlaceableState
function API.GetPlaceableState(placeableId)
	local placeable = placeables[placeableId]
    if placeable then
        return placeable.GetState()
    end
	return nil
end

---Returns true if drops are successful.
---@param instance table
---@param position Vector3
---@param player Player
---@return boolean
function API.HandlePlaceableDrops(instance, position, player)
    local placeableId = instance.placeableId
    local success = true

    if placeableId then
        local placeableData = DATABASE.Placeables[placeableId]
        local itemData = DATABASE.Items[placeableId]
        if placeableData and itemData then
            local itemId = placeableId
            local itemType = INVENTORY.ItemType.Item
            if itemData.IsInventory then
                local inventoryId, _ = SERIALIZER.ReadString(instance.state)
                itemId = inventoryId
                itemType = INVENTORY.ItemType.Inventory
            end

            if placeableData.DropsOnRemove then
                ITEM_PICKUPS.CreateItemPickup(player,
                placeableData.DropItemPickupTemplate,
                position,
                position,
                ITEM_PICKUPS.PickupType.Item,
                itemType,
                itemId,
                1,
                placeableData.DropsForAllPlayers,
                true,
                placeableData.DropTimeoutSeconds
            )
            else
                if INVENTORY.CanAddToInventory(player, nil, itemType, itemId, 1, 0, false) then
                    INVENTORY.AddToInventory(player, nil, itemType, itemId, 1, 0, false)
                else
                    success = false
                end
            end
        end
    end
    return success
end

function OnBuffAdded(targetId, buffId)
    local placeable = placeables[targetId]
    if placeable then
        placeable.OnBuffAdded(buffId)
    end
end

function OnBuffRemoved(targetId, buffId)
    local placeable = placeables[targetId]
    if placeable then
        placeable.OnBuffRemoved(buffId)
    end
end

function OnBuffRelinked(targetId, buffId)
    local placeable = placeables[targetId]
    if placeable then
        placeable.OnBuffRelinked(buffId)
    end
end

function OnHandleBuffs()
    for produerBaseId, placeable in pairs(placeables) do
        placeable.OnHandleBuffs()
    end
end

Events.Connect(BUFFS.Events.BuffAdded, OnBuffAdded)
Events.Connect(BUFFS.Events.BuffRemoved, OnBuffRemoved)
Events.Connect(BUFFS.Events.BuffRelinked, OnBuffRelinked)
Events.Connect(BUFFS.Events.HandleBuffs, OnHandleBuffs)

return API