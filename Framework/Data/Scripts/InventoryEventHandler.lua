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
    This script listens for Inventory events and runs the appropriate commands on the Inventory API.
--]]

---@type APIInventory
local INVENTORY = require(script:GetCustomProperty("APIInventory"))
---@type APIEquipment
local EQUIPMENT = require(script:GetCustomProperty("APIEquipment"))
---@type APIDatabase
local DATABASE = require(script:GetCustomProperty("APIDatabase"))
---@type APIItemPickups
local ITEM_PICKUPS = require(script:GetCustomProperty("APIItemPickups"))
---@type APIReliableEvents
local RELIABLE_EVENTS = require(script:GetCustomProperty("APIReliableEvents"))

-- Constants
local INVENTORY_TAG = "INV_"

local DROP_TARGET_TRASH = INVENTORY_TAG .. "trash"

-- Called when an Inventory slot is dragged and dropped
function HandleSlotDropped(player, sourceInventoryId, sourceSlotIndex, dropTargetId, targetInventoryId, targetSlotIndex)
    if targetInventoryId and targetSlotIndex then
        -- Transfer to target
        INVENTORY.TransferToInventory(player, sourceInventoryId, sourceSlotIndex, targetInventoryId, targetSlotIndex)

        -- Handle equipped Items
        for _, equipmentData in ipairs(EQUIPMENT.GetAllEquipment(player)) do
            local equipment = equipmentData.Equipment
            local equippedInventoryId = equipment:GetCustomProperty("InventoryId") or ""
            local equippedSlotIndex = equipment:GetCustomProperty("SlotIndex") or 0
            local equippedItemId = equipment:GetCustomProperty("ItemId") or ""

            if equippedInventoryId == targetInventoryId and equippedSlotIndex == targetSlotIndex then
                EQUIPMENT.Unequip(player, equippedItemId)
                Events.Broadcast(INVENTORY.Events.SlotUnequipped, targetInventoryId, targetSlotIndex)
            elseif equippedInventoryId == sourceInventoryId and equippedSlotIndex == sourceSlotIndex then

            end
        end
    else
        if not dropTargetId or dropTargetId == "" then
            -- Drop from source if possible
            if INVENTORY.GetSetting(sourceInventoryId, INVENTORY.Setting.CanDrop) then
                local slotContent = INVENTORY.GetSlot(player, sourceInventoryId, sourceSlotIndex)
                if slotContent then
                    local itemType = slotContent[INVENTORY.Keys.ItemType]
                    local itemId = slotContent[INVENTORY.Keys.ItemId]
                    local amount = slotContent[INVENTORY.Keys.Amount]
                    local itemData = DATABASE.Items[itemId]

                    -- Check if the item itself can be dropped
                    if itemData and itemData.CanDrop then
                        INVENTORY.RemoveFromInventory(player, sourceInventoryId, itemType, itemId, amount, sourceSlotIndex)

                        -- Spawn an Item Pickup
                        local dropForAllPlayers = INVENTORY.GetSetting(sourceInventoryId, INVENTORY.Setting.DropForAllPlayers)
                        local dropTimeoutSeconds = INVENTORY.GetSetting(sourceInventoryId, INVENTORY.Setting.DropTimeoutSeconds)
                        local pickupTemplate = INVENTORY.GetSetting(sourceInventoryId, INVENTORY.Setting.ItemPickupTemplate)
                        local rayStart = player:GetWorldPosition()
                        local rayEnd = rayStart + Vector3.New(0, 0, -1000)
                        local hitResult = World.Raycast(rayStart, rayEnd, { ignorePlayers = true })
                        local finalPosition = rayStart

                        if hitResult then
                            finalPosition = hitResult:GetImpactPosition()
                        end

                        -- Inventory drops are only single pickup to stop item duplication
                        ITEM_PICKUPS.CreateItemPickup(player, pickupTemplate, player:GetWorldPosition(), finalPosition, ITEM_PICKUPS.PickupType.Item, itemType, itemId, amount, dropForAllPlayers, true, dropTimeoutSeconds)
                    end
                end
            end
        elseif dropTargetId == DROP_TARGET_TRASH then
            local slotContent = INVENTORY.GetSlot(player, sourceInventoryId, sourceSlotIndex)
            if slotContent then
                local itemType = slotContent[INVENTORY.Keys.ItemType]
                local itemId = slotContent[INVENTORY.Keys.ItemId]
                local amount = slotContent[INVENTORY.Keys.Amount]

                INVENTORY.RemoveFromInventory(player, sourceInventoryId, itemType, itemId, amount, sourceSlotIndex, true)
            end
        end
    end
end

-- Called when am Inventory Slot is clicked
function HandleItemClicked(player, inventoryId, slotIndex)
    if Environment.IsServer() then
        -- Equip if possible
        if INVENTORY.GetSetting(inventoryId, INVENTORY.Setting.CanEquip) then
            local slotContent = INVENTORY.GetSlot(player, inventoryId, slotIndex)
            if slotContent then
                local itemType = slotContent[INVENTORY.Keys.ItemType]
                local itemId = slotContent[INVENTORY.Keys.ItemId]
                local baseItemId = INVENTORY.GetContainerItemId(itemId)
                local itemData = DATABASE.Items[baseItemId]

                -- Check if the item itself can be equipped
                if itemData and itemData.CanEquip then
                    local equipment

                    if EQUIPMENT.IsEquipped(player, itemId) then
                        equipment = EQUIPMENT.GetEquipment(player, itemId)

                        local equippedSlotIndex = equipment:GetCustomProperty("SlotIndex") or 0
                        if DoesEquipmentToggle(equipment) and equippedSlotIndex == slotIndex then
                            EQUIPMENT.Unequip(player, itemId)
                            equipment = nil
                        end
                    else
                        equipment = EQUIPMENT.Equip(player, itemId, itemData.EquipmentTemplate)
                    end

                    if equipment then
                        RELIABLE_EVENTS.BroadcastToPlayer(player, INVENTORY.Events.SlotEquipped, inventoryId, slotIndex)

                        -- Containers need state for their unique id
                        local state
                        if itemData.IsInventory then
                            state = itemId
                        end

                        SetNetworkedProperties(equipment, inventoryId, itemType, baseItemId, slotIndex, state)
                    else
                        RELIABLE_EVENTS.BroadcastToPlayer(player, INVENTORY.Events.SlotUnequipped, inventoryId, slotIndex)
                    end
                end
            else
                -- Toggle equipped equipment if possible
                for _, equipmentData in ipairs(EQUIPMENT.GetAllEquipment(player)) do
                    local equipment = equipmentData.Equipment
                    local equippedInventoryId = equipment:GetCustomProperty("InventoryId") or ""
                    local equippedSlotIndex = equipment:GetCustomProperty("SlotIndex") or 0
                    local equippedItemId = equipment:GetCustomProperty("ItemId") or ""

                    if DoesEquipmentToggle(equipment) and equippedInventoryId ~= "" and equippedSlotIndex > 0 then
                        EQUIPMENT.Unequip(player, equippedItemId)
                        RELIABLE_EVENTS.BroadcastToPlayer(player, INVENTORY.Events.SlotUnequipped, equippedInventoryId, equippedSlotIndex)
                    end
                end
            end
        end
    else
        -- Relay to the server
        RELIABLE_EVENTS.BroadcastToServer(INVENTORY.Events.SlotClicked, inventoryId, slotIndex)
    end
end

-- Called when anything gets removed from a Players Inventory
function HandleInventoryRemoved(player, inventoryId, itemType, itemId, amountData)
    local baseItemId = INVENTORY.GetContainerItemId(itemId)
    local itemData = DATABASE.Items[baseItemId]
    if itemData and itemData.CanEquip and EQUIPMENT.IsEquipped(player, itemId) then
        for slotIndex, _ in pairs(amountData) do
            if INVENTORY.GetAmountInInventory(player, inventoryId, itemType, itemId, slotIndex, false) == 0 then
                if Environment.IsServer() then
                    EQUIPMENT.Unequip(player, itemId)
                end
                Events.Broadcast(INVENTORY.Events.SlotUnequipped, inventoryId, slotIndex)
                return
            end
        end
    end
end

-- Called when an item is transferred from one Inventory slot to another.
function HandleInventoryTransferred(player, sourceInventoryId, sourceSlotIndex, targetInventoryId, targetSlotIndex)
    if Environment.IsServer() then
        if INVENTORY.GetSetting(targetInventoryId, INVENTORY.Setting.CanEquip) then
            local slotContent = INVENTORY.GetSlot(player, targetInventoryId, targetSlotIndex)
            if slotContent then
                local itemType = slotContent[INVENTORY.Keys.ItemType]
                local itemId = slotContent[INVENTORY.Keys.ItemId]
                local baseItemId = INVENTORY.GetContainerItemId(itemId)
                local itemData = DATABASE.Items[baseItemId]

                -- Check if the item itself can be equipped
                if itemData and itemData.CanEquip then
                    -- Check if the source slot is currently equipped
                    for _, equipmentData in ipairs(EQUIPMENT.GetAllEquipment(player)) do
                        local equipment = equipmentData.Equipment
                        local equippedInventoryId = equipment:GetCustomProperty("InventoryId") or ""
                        local equippedSlotIndex = equipment:GetCustomProperty("SlotIndex") or 0

                        if equippedInventoryId == sourceInventoryId and equippedSlotIndex == sourceSlotIndex then
                            -- Containers need state for their unique id
                            local state
                            if itemData.IsInventory then
                                state = itemId
                            end

                            SetNetworkedProperties(equipment, targetInventoryId, itemType, baseItemId, targetSlotIndex, state)
                            return
                        end
                    end
                end
            end
        end
    end
end

-- Called when an Equipment interacts with an object through APIEquipment
function HandleEquipmentInteraction(success, interactionError, player, target, toolType, equipmentSettings)
    if success then
        if equipmentSettings.InventoryId and equipmentSettings.InventoryId ~= "" and equipmentSettings.SlotIndex and equipmentSettings.SlotIndex > 0 then
            local slotContent = INVENTORY.GetSlot(player, equipmentSettings.InventoryId, equipmentSettings.SlotIndex)
            if slotContent then
                local itemData = DATABASE.Items[slotContent[INVENTORY.Keys.ItemId]]
                if itemData and itemData.IsConsumableEquipment then
                    INVENTORY.RemoveFromInventory(player, equipmentSettings.InventoryId, slotContent[INVENTORY.Keys.ItemType], slotContent[INVENTORY.Keys.ItemId], 1, equipmentSettings.SlotIndex, false)
                end
            end
        end
    end
end

-- Server only. Called when an Equipment is equipped from the world instead of an Inventory.
function HandleEquippedFromWorld(player, equipmentId, equipment)
    -- Add equipment to Inventory if it was equipped from a pickup trigger in world
    if equipment.sourceTemplateId and INVENTORY.IsAnyInventoryRegistered(false) then
        if equipmentId then
            -- Find the highest priority Inventory that supports equipment
            local inventoryId = INVENTORY.GetPriorityInventoryId(player, INVENTORY.ItemType.Item, equipmentId, 1, 0, true, function(inventoryId)
                return INVENTORY.GetSetting(inventoryId, INVENTORY.Setting.CanEquip) == true
            end, false)

            if inventoryId then
                INVENTORY.AddToInventory(player, inventoryId, INVENTORY.ItemType.Item, equipmentId, 1, 0, false)

                local slotIndex = INVENTORY.GetSlotIndexForItem(player, inventoryId, INVENTORY.ItemType.Item, equipmentId)
                local baseItemId = INVENTORY.GetContainerItemId(equipmentId)

                SetNetworkedProperties(equipment, inventoryId, INVENTORY.ItemType.Item, baseItemId, slotIndex, nil)

                RELIABLE_EVENTS.BroadcastToPlayer(player, INVENTORY.Events.SlotEquipped, inventoryId, slotIndex)
            end
        end
    end
end

function SetNetworkedProperties(equipment, inventoryId, itemType, itemId, slotIndex, state)
    -- Set specific data for inventory items
    if equipment:GetCustomProperty("InventoryId") ~= nil then
        equipment:SetCustomProperty("InventoryId", inventoryId)
    end

    if equipment:GetCustomProperty("SlotIndex") ~= nil then
        equipment:SetCustomProperty("SlotIndex", slotIndex)
    end

    if equipment:GetCustomProperty("ItemType") ~= nil then
        equipment:SetCustomProperty("ItemType", itemType)
    end

    if equipment:GetCustomProperty("ItemId") ~= nil then
        equipment:SetCustomProperty("ItemId", itemId)
    end

    if state then
        if equipment:GetCustomProperty("State") ~= nil then
            equipment:SetCustomProperty("State", state)
        end
    end
end

---Returns true if the Equipment is set to toggle.
---@param equipment Equipment
---@return boolean
function DoesEquipmentToggle(equipment)
    local equipmentId = equipment:GetCustomProperty("EquipmentId")
    if equipmentId and equipmentId ~= "" then
        if DATABASE.Equipment then
            local equipmentData = DATABASE.Equipment[equipmentId]
            return equipmentData and equipmentData.DoesToggle
        end
    else
        return equipment:GetCustomProperty("DoesToggle") or false
    end
end

---Compares two Template ids using only the info before the colon.
---@param id1 string
---@param id2 string
---@return boolean
function DoesTemplateIdMatch(id1, id2)
    -- Strip everything after the first part of the ids
    id1 = CoreString.Split(id1, ":")
    id2 = CoreString.Split(id2, ":")

    return id1 == id2
end

if Environment.IsServer() then
    Events.ConnectForPlayer(INVENTORY.Events.SlotDropped, HandleSlotDropped)
    Events.ConnectForPlayer(INVENTORY.Events.SlotClicked, HandleItemClicked)
    Events.Connect(INVENTORY.Events.InventoryRemoved, HandleInventoryRemoved)
    Events.Connect(EQUIPMENT.Events.EquippedItemFromWorld, HandleEquippedFromWorld)
    Events.Connect(INVENTORY.Events.InventoryTransferred, HandleInventoryTransferred)
else
    Events.Connect(INVENTORY.Events.SlotDropped, function(...)
        HandleSlotDropped(Game.GetLocalPlayer(), ...)
    end)
    Events.Connect(INVENTORY.Events.SlotClicked, function(...)
        HandleItemClicked(Game.GetLocalPlayer(), ...)
    end)
    Events.Connect(INVENTORY.Events.InventoryRemoved, HandleInventoryRemoved)
    Events.Connect(EQUIPMENT.Events.Interact, HandleEquipmentInteraction)
end