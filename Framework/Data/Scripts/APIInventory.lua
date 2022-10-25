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
    This is the core of the Inventory system and handles most Inventory interactions. This API exists on both the client
    and server.
--]]

-- Internal Variables
local DEFAULT_ITEM_PICKUP_TEMPLATE = script:GetCustomProperty("DefaultItemPickupTemplate")
local DEFAULT_ICON = script:GetCustomProperty("DefaultIcon")

---@type APIDatabase
local DATABASE = require(script:GetCustomProperty("APIDatabase"))
---@type APIReliableEvents
local RELIABLE_EVENTS = require(script:GetCustomProperty("APIReliableEvents"))

-- Constants
local INVENTORY_TAG = "INV_"
local CONTAINER_TAG = "CON_"
local VERSION_TAG = "_V"
local INVENTORY_DATA_VERSION = 1

-- Private Variables
local inventories = {}
local containerIds = {}
local updateFlags = {}
local pendingActions = {}
local clientSyncTask
local uuidNum = 0

---@class APIInventory
local API = {}

-- These events can be accessed like: Events.Connect(APIInventory.Events.EventName, Handler)
API.Events = {
    -- Internal Events
    LoadInventories = INVENTORY_TAG .. "load",
    AddInventory = INVENTORY_TAG .. "add",
    RemoveInventory = INVENTORY_TAG .. "remove",
    TransferInventory = INVENTORY_TAG .. "transfer",
    ClearInventory = INVENTORY_TAG .. "clear",
    -- Public Events
    InventoryRegistered = INVENTORY_TAG .. "registered",
    InventoryUnregistered = INVENTORY_TAG .. "unregistered",
    InventoryLoaded = INVENTORY_TAG .. "loaded",
    InventorySaved = INVENTORY_TAG .. "saved",
    InventoryAdded = INVENTORY_TAG .. "added",
    InventoryRemoved = INVENTORY_TAG .. "removed",
    InventoryTransferred = INVENTORY_TAG .. "transferred",
    InventoryCleared = INVENTORY_TAG .. "cleared",
    SlotEquipped = INVENTORY_TAG .. "slotEquipped",
    SlotUnequipped = INVENTORY_TAG .. "slotUnequipped",
    SlotClicked = INVENTORY_TAG .. "slotClicked",
    SlotDropped = INVENTORY_TAG .. "slotDropped"
}

---@class InventorySetting
API.Setting = {
    Name = "Name",
    DefaultIcon = "DefaultIcon",
    StorageKey = "StorageKey",
    TotalSlots = "TotalSlots",
    SlotCapacity = "SlotCapacity",
    AllowNonEmptyContainers = "AllowNonEmptyContainers",
    UseStacks = "UseStacks",
    CanEquip = "CanEquip",
    CanDrop = "CanDrop",
    DropForAllPlayers = "DropForAllPlayers",
    DropTimeoutSeconds = "DropTimeoutSeconds",
    ItemPickupTemplate = "ItemPickupTemplate",
    Priority = "Priority",
    StartingItems = "StartingItems",
    OverflowInventoryIds = "OverflowInventoryIds",
    VerboseLogs = "VerboseLogs"
}

-- Item types are used to determine what kind of object is stored in the Inventory
API.ItemType = {
    Item = 1,
    Inventory = 2
}

-- These short form keys save storage space. 
-- They can be used like: local itemId = APIInventory.GetSlot(player, inventoryId, slotIndex)[APIInventory.Keys.ItemId]
API.Keys = {
    -- Internal keys
    UpdateFlag = "f",
    Actions = "o",
    Action = "u",
    ActionParams = "p",
    -- Public keys
    ItemType = "t",
    ItemId = "i",
    Amount = "a",
    Contents = "c",
    State = "s"
}

API.DefaultSettings = {
    [API.Setting.Name] = "Inventory",
    [API.Setting.DefaultIcon] = DEFAULT_ICON,
    [API.Setting.StorageKey] = nil,
    [API.Setting.TotalSlots] = 10,
    [API.Setting.SlotCapacity] = 99,
    [API.Setting.AllowNonEmptyContainers] = false,
    [API.Setting.UseStacks] = true,
    [API.Setting.CanEquip] = true,
    [API.Setting.CanDrop] = true,
    [API.Setting.DropForAllPlayers] = true,
    [API.Setting.ItemPickupTemplate] = DEFAULT_ITEM_PICKUP_TEMPLATE,
    [API.Setting.Priority] = 1,
    [API.Setting.StartingItems] = {},
    [API.Setting.OverflowInventoryIds] = {},
    [API.Setting.VerboseLogs] = false
}

---Server Only. Registers and loads an Inventory.
---@param inventoryId string
---@param isContainer boolean
function API.RegisterInventory(inventoryId, isContainer)
    if not Environment.IsServer() then 
        warn("RegisterInventory can only be called on the server")
        return
    end

    if API.IsInventoryRegistered(inventoryId) then
        return
    end

    --print(string.format("Registering Inventory id: %s", inventoryId))

    inventories[inventoryId] = {}

    if isContainer then
        containerIds[inventoryId] = true
    end

    Events.Broadcast(API.Events.InventoryRegistered, inventoryId)

    -- Send information related to this Inventory to all Players
    for _, player in ipairs(Game.GetPlayers()) do
        LoadInventory(player, inventoryId)
    end
end

---Server Only. Unregisters a Container Inventory.
---@param inventoryId string
function API.UnregisterInventory(inventoryId)
    if not Environment.IsServer() then 
        warn("UnregisterInventory can only be called on the server")
        return
    end

    --print(string.format("Unregistering Inventory id: %s", inventoryId))

    inventories[inventoryId] = nil
    containerIds[inventoryId] = nil

    Events.Broadcast(API.Events.InventoryUnregistered, inventoryId)
end

---Returns true if any Inventory has been registered.
---@param includeContainers boolean
---@return boolean
function API.IsAnyInventoryRegistered(includeContainers)
    for inventoryId, _ in pairs(inventories) do
        if includeContainers or not API.IsContainerInventory(inventoryId) then
            return true
        end
    end
    return false
end

---Returns true if the Inventory has been registered.
---@param inventoryId string
---@return boolean
function API.IsInventoryRegistered(inventoryId)
    return inventories[inventoryId] ~= nil
end

---Returns true if the Inventory has been loaded for a specific Player.
---@param player Player
---@param inventoryId string
---@return boolean
function API.IsInventoryLoaded(player, inventoryId)
    if not API.IsInventoryRegistered(inventoryId) then return false end
    return inventories[inventoryId][player] ~= nil
end

---Gets a setting for a specific Inventory.
---@param inventoryId string
---@param setting InventorySetting
---@return any
function API.GetSetting(inventoryId, setting)
    local baseInventoryId = inventoryId
    if not DATABASE.Inventories[baseInventoryId] then
        -- Derive base Inventory Id from containers
        baseInventoryId = API.GetBaseInventoryId(inventoryId)
    end

    if not DATABASE.Inventories[baseInventoryId] or DATABASE.Inventories[baseInventoryId][setting] == nil then
        return API.DefaultSettings[setting]
    end

    return DATABASE.Inventories[baseInventoryId][setting]
end

---Returns all registered Inventories.
---@return table
function API.GetInventories()
    return inventories
end

---Gets the Inventory contents for a specific Player.
---@param player Player
---@param inventoryId string
---@return table
function API.GetInventory(player, inventoryId)
    if not API.IsInventoryLoaded(player, inventoryId) then
        Warning(inventoryId, string.format("Could not get Inventory: %s, make sure it is loaded before you try to access it", inventoryId))
        return nil
    end

    return inventories[inventoryId][player]
end

---Returns true if the Player has the amount of an item in one or more Inventories. If slotIndex is used this will only check that slot.
---@param player Player
---@param inventoryId string|nil
---@param itemType integer
---@param itemId string
---@param amount integer
---@param slotIndex integer
---@param includeContainers boolean
---@return boolean
function API.HasAmountInInventory(player, inventoryId, itemType, itemId, amount, slotIndex, includeContainers)
    if amount <= 0 then 
        Warning(inventoryId, string.format("Amount must be greater than 0 to check Inventory: %s for Player: %s (%s)", inventoryId, player.name, player.id))
        return false
    end

    return API.GetAmountInInventory(player, inventoryId, itemType, itemId, slotIndex, includeContainers) >= amount
end

---Returns the amount of an item in one or more Inventories for a Player. If slotIndex is used this will only check that slot.
---@param player Player
---@param inventoryId string|nil
---@param itemType integer
---@param itemId string
---@param slotIndex integer
---@param includeContainers boolean
---@return integer
function API.GetAmountInInventory(player, inventoryId, itemType, itemId, slotIndex, includeContainers)
    local amount = 0
    if inventoryId then
        if slotIndex and slotIndex > 0 then
            -- Check only the supplied slot index
            local slotContent = API.GetSlot(player, inventoryId, slotIndex)
            if slotContent and DoesSlotMatch(slotContent, itemType, itemId) then
                return slotContent[API.Keys.Amount]
            end
        else
            -- Check all slots
            local inventoryContents = API.GetInventory(player, inventoryId)
            if inventoryContents then
                for _, slotContent in pairs(inventoryContents) do
                    if DoesSlotMatch(slotContent, itemType, itemId) then
                        amount = amount + slotContent[API.Keys.Amount]
                    end
                end
            end

            return amount
        end
    else
        -- No inventoryId means we check them all
        for inventoryId, _ in pairs(inventories) do
            if includeContainers or not API.IsContainerInventory(inventoryId) then
                amount = amount + API.GetAmountInInventory(player, inventoryId, itemType, itemId, slotIndex)
            end
        end
    end

    return amount
end

---Returns true if an amount of an item can be added to a specific Inventory for a Player. If slotIndex is used this will
---only check that slot, otherwise it will look for available slots.
---@param player Player
---@param inventoryId string
---@param itemType integer
---@param itemId string
---@param amount integer
---@param slotIndex integer
---@param includeContainers boolean
---@return boolean
---@return string
function API.CanAddToInventory(player, inventoryId, itemType, itemId, amount, slotIndex, includeContainers)
    if amount <= 0 then
        return false, "Invalid Amount"
    end

    local originalInventoryId = inventoryId
    if not inventoryId then
        inventoryId = API.GetPriorityInventoryId(player, itemType, itemId, amount, slotIndex, true, nil, includeContainers)
    end

    if not inventoryId then
        Warning(originalInventoryId, string.format("Inventory is full and no overflow Inventory has space in Inventory: %s for Player: %s (%s)", originalInventoryId, player.name, player.id))
        return false, "Inventory is full"
    end

    if not API.GetSetting(inventoryId, API.Setting.AllowNonEmptyContainers) and itemType == API.ItemType.Inventory then
        if not CanAddContainerInventory(player, itemId) then
            return false, "Can't add a non-empty container"
        end
    end

    local slotCapacity = API.GetSetting(inventoryId, API.Setting.SlotCapacity)
    local remaining = amount
    local currentSlotIndex = slotIndex

    if not currentSlotIndex or currentSlotIndex == 0 then
        currentSlotIndex = API.GetAvailableSlotIndex(player, inventoryId, itemType, itemId, remaining)
    end

    while remaining > 0 and currentSlotIndex > 0 do
        -- Create a stack
        local stackAmount = remaining

        -- Adjust stack amount if the slot already contains some, or move the existing slot contents if they are different
        local slotContent = API.GetSlot(player, inventoryId, currentSlotIndex)
        if slotContent then
            if stackAmount + slotContent[API.Keys.Amount] > slotCapacity then
                -- Add as much as we can to this slot
                stackAmount = slotCapacity - slotContent[API.Keys.Amount]
            end
        end

        remaining = remaining - stackAmount
        currentSlotIndex = API.GetAvailableSlotIndex(player, inventoryId, itemType, itemId, remaining)
    end

    local errorMessage
    if remaining > 0 then
        errorMessage = "Not enough room in Inventory"
    end

    return remaining <= 0, errorMessage
end

---Returns true if a set of Drops can fit in the inventory specified, or in any available Inventories.
---@param player Player
---@param inventoryId string|nil
---@param drops table Output from APIDrops.CalculateDrops()
---@param includeContainers boolean
---@return boolean
function API.CanAddToInventoryFromDrops(player, inventoryId,  drops, includeContainers)
    if not drops.Items then
        warn("Invalid Drops data. Drops must contain an Items table containing <itemId, amount> values")
        return false
    end
    return API.CanAddItemsToInventory(player, inventoryId,  drops.Items, includeContainers)
end

---Returns true if the list of Items can fit in the inventory specified, or in any available Inventories.
---@param player Player
---@param inventoryId string|nil
---@param items table<string, integer> table<itemId, amount>
---@param includeContainers boolean
---@return boolean
function API.CanAddItemsToInventory(player, inventoryId,  items, includeContainers)
    if inventoryId then
        local ignoreSlots = {}
        for itemId, amount in pairs(items) do
            local slotIndex = API.GetAvailableSlotIndex(player, inventoryId, API.ItemType.Item, itemId, amount, ignoreSlots)
            if slotIndex > 0 then
                ignoreSlots[slotIndex] = true
            else
                return false
            end
        end
    else
        local ignoreSlots = {}
        for itemId, amount in pairs(items) do
            local foundRoom = false
            for id, _ in pairs(inventories) do
                if includeContainers or not API.IsContainerInventory(id) then
                    if not ignoreSlots[id] then
                        ignoreSlots[id] = {}
                    end
                    local slotIndex = API.GetAvailableSlotIndex(player, id, API.ItemType.Item, itemId, amount, ignoreSlots[id])
                    if slotIndex > 0 then
                        ignoreSlots[id][slotIndex] = true
                        foundRoom = true
                        break
                    end
                end
            end

            if not foundRoom then
                return false
            end
        end
    end
    return true
end

---Adds an amount of an item to one or More Inventories for a Player. If slotIndex is used this will only use that
---slot, otherwise it will look for available slots.
---@param player Player
---@param inventoryId string|nil
---@param itemType integer
---@param itemId string
---@param amount integer
---@param slotIndex integer
---@param includeContainers boolean
---@param updateOtherContext boolean
---@return boolean
function API.AddToInventory(player, inventoryId, itemType, itemId, amount, slotIndex, includeContainers, updateOtherContext)
    --print(string.format("Adding %d itemId: %s to Inventory: %s in slot: %d on server: %s for Player: %s (%s)", amount, itemId, inventoryId, slotIndex or 0, Environment.IsServer(), player.name, player.id))

    -- Get an Inventory Id if needed
    if not inventoryId then
        inventoryId = API.GetPriorityInventoryId(player, itemType, itemId, amount, slotIndex, true, nil, includeContainers)
    end

    if amount <= 0 then
        Warning(inventoryId, string.format("Amount must be greater than 0 to add to Inventory: %s for Player: %s (%s)", inventoryId, player.name, player.id))
        return false
    end

    if not API.CanAddToInventory(player, inventoryId, itemType, itemId, amount, slotIndex, includeContainers) then
        Warning(inventoryId, string.format("No available room in Inventory: %s for Player: %s (%s)", inventoryId, player.name, player.id))
        return false
    end

    -- Ensure we have a slot
    if not slotIndex or slotIndex < 1 then
        slotIndex = API.GetAvailableSlotIndex(player, inventoryId, itemType, itemId, amount)
    end

    local totalSlots = API.GetSetting(inventoryId, API.Setting.TotalSlots)
    if totalSlots > 0 and slotIndex > totalSlots then
        Warning(inventoryId, string.format("Slot is invalid or out of bounds in Inventory: %s for Player: %s (%s)", inventoryId, player.name, player.id))
        return false
    end

    if slotIndex == 0 then
        -- Try to find an inventory that will fit this
        local overflowInventoryIds = API.GetSetting(inventoryId, API.Setting.OverflowInventoryIds)
        inventoryId = nil
        for _, id in ipairs(overflowInventoryIds) do
            if API.CanAddToInventory(player, id, itemType, itemId, amount) then
                inventoryId = id
                slotIndex = API.GetAvailableSlotIndex(player, inventoryId, itemType, itemId, amount)
                break
            end
        end
    end

    local originalInventoryId = inventoryId
    if not inventoryId or slotIndex == 0 then
        Warning(originalInventoryId, string.format("Inventory is full and no overflow Inventory has space in Inventory: %s for Player: %s (%s)", originalInventoryId, player.name, player.id))
        return false
    end

    if not API.GetSetting(inventoryId, API.Setting.AllowNonEmptyContainers) and itemType == API.ItemType.Inventory then
        if not CanAddContainerInventory(player, itemId) then
            Warning(inventoryId, string.format("Non Empty containers can not be stored in Inventory: %s for Player: %s (%s)", inventoryId, player.name, player.id))
            return false
        end
    end

    -- Add the content
    local amountData = {}
    if API.GetSetting(inventoryId, API.Setting.UseStacks) then
        -- Use as many slots as needed to add stacks
        local remaining = amount
        local currentSlotIndex = slotIndex

        while remaining > 0 do
            -- Add as much as this single slot has capacity for
            local stackAmount = CapAddedAmount(player, inventoryId, currentSlotIndex, remaining)
            AddToInventory(player, inventoryId, currentSlotIndex, itemType, itemId, stackAmount)

            amountData[currentSlotIndex] = stackAmount
            remaining = remaining - stackAmount

            if remaining > 0 then
                -- Find the next available slot for the remaining amount
                currentSlotIndex = API.GetAvailableSlotIndex(player, inventoryId, itemType, itemId, remaining)
                if currentSlotIndex == 0 then
                    break
                end
            end
        end
    else
        -- Add as much as this single slot has capacity for
        local stackAmount = CapAddedAmount(player, inventoryId, slotIndex, amount)
        AddToInventory(player, inventoryId, slotIndex, itemType, itemId, stackAmount)
        amountData[slotIndex] = stackAmount
    end

    -- Always send event in current context
    Events.Broadcast(API.Events.InventoryAdded, player, inventoryId, itemType, itemId, amountData)

    -- Default to always update the opposite context
    if updateOtherContext == nil then
        updateOtherContext = true
    end

    -- Handle client and server interactions to ensure the API is replicated on both sides
    if Environment.IsServer() then
        -- Save and update the client from the server
        if not SaveInventory(player, inventoryId) then
            return false
        end

        -- Send client information if needed
        if updateOtherContext then
            SyncInventoryWithClient(player, inventoryId, API.Events.AddInventory, inventoryId, itemType, itemId, amount, slotIndex, includeContainers)
        end
    elseif Environment.IsClient() then
        -- Handle adding inventory from the client
        if updateOtherContext then
            RELIABLE_EVENTS.BroadcastToServer(API.Events.AddInventory, inventoryId, itemType, itemId, amount, slotIndex, includeContainers)
        end
    end

    return true
end

---Returns true if an amount of an item can be removed from a specific Inventory for a Player. If slotIndex is used this will 
---only check that slot, otherwise it will check the entire Inventory.
---@param player Player
---@param inventoryId string|nil
---@param itemType integer
---@param itemId string
---@param amount integer
---@param slotIndex integer
---@param includeContainers boolean
---@return boolean
function API.CanRemoveFromInventory(player, inventoryId, itemType, itemId, amount, slotIndex, includeContainers)
    if amount <= 0 then
        return false
    end

    -- Get an Inventory Id if needed
    if not inventoryId then
        inventoryId = API.GetPriorityInventoryId(player, itemType, itemId, amount, slotIndex, false, nil, includeContainers)
    end

    return API.GetAmountInInventory(player, inventoryId, itemType, itemId, slotIndex, includeContainers) >= amount
end

---Removes an amount of an item from a specific Inventory for a Player. If slotIndex is used this will only check that slot, otherwise 
---it will check the entire Inventory.
---@param player Player
---@param inventoryId string
---@param itemType integer
---@param itemId string
---@param amount integer
---@param slotIndex integer
---@param includeContainers boolean
---@param updateOtherContext boolean
---@return boolean
function API.RemoveFromInventory(player, inventoryId, itemType, itemId, amount, slotIndex, includeContainers, updateOtherContext)
    --print(string.format("Removing %d itemId: %s from Inventory: %s from slot: %d on server: %s for Player: %s (%s)", amount, itemId, inventoryId, slotIndex or 0, Environment.IsServer(), player.name, player.id))

    -- Get an Inventory Id if needed
    if not inventoryId then
        inventoryId = API.GetPriorityInventoryId(player, itemType, itemId, amount, slotIndex, false, nil, includeContainers)
    end

    if amount <= 0 then 
        Warning(inventoryId, string.format("Amount must be greater than 0 to remove from Inventory: %s for Player: %s (%s)", inventoryId, player.name, player.id))
        return false
    end

    if not API.CanRemoveFromInventory(player, inventoryId, itemType, itemId, amount, slotIndex, includeContainers) then
        Warning(inventoryId, string.format("Not enough of item: %s in Inventory: %s to remove for Player: %s (%s)", itemId, inventoryId, player.name, player.id))
        return false
    end

    -- Ensure we have a slot
    if not slotIndex or slotIndex < 1 then
        slotIndex = API.GetSlotIndexForItem(player, inventoryId, itemType, itemId)
        if not slotIndex or slotIndex < 1 then
            Warning(inventoryId, string.format("Could not find itemId: %s to remove from Inventory: %s for Player: %s (%s)", itemId, inventoryId, player.name, player.id))
            return false
        end
    end

    -- Validate slot
    local slotContent = API.GetSlot(player, inventoryId, slotIndex)
    if not DoesSlotMatch(slotContent, itemType, itemId) then
        Warning(inventoryId, string.format("Slot is missing or does not contain itemId: %s in slotIndex: %d in Inventory: %s for Player: %s (%s)", itemId, slotIndex, inventoryId, player.name, player.id))
        return false
    end

    -- Remove the content
    local amountData = {}
    if API.GetSetting(inventoryId, API.Setting.UseStacks) then
        local remaining = amount
        -- Loop over slots until we have removed the full amount
        while remaining > 0 do
            local amountToRemove = remaining
            if amountToRemove > slotContent[API.Keys.Amount] then
                amountToRemove = slotContent[API.Keys.Amount]
            end

            RemoveFromInventory(player, inventoryId, slotIndex, amountToRemove)
            amountData[slotIndex] = amountToRemove
            remaining = remaining - amountToRemove

            if remaining > 0 then
                slotIndex = API.GetSlotIndexForItem(player, inventoryId, itemType, itemId)
                if slotIndex > 0 then
                    slotContent = API.GetSlot(player, inventoryId, slotIndex)
                else
                    break
                end
            end
        end
    else
        -- Check if slot has enough to remove
        if slotContent[API.Keys.Amount] < amount then
            Warning(inventoryId, string.format("Not enough itemId: %s to remove from Inventory: %s for Player: %s (%s)", itemId, inventoryId, player.name, player.id))
            return false
        end

        -- No stacking, so just remove full amount from slot
        RemoveFromInventory(player, inventoryId, slotIndex, amount)
        amountData[slotIndex] = amount
    end

    -- Always send event in current context
    Events.Broadcast(API.Events.InventoryRemoved, player, inventoryId, itemType, itemId, amountData)

    -- Default to always update opposite context
    if updateOtherContext == nil then
        updateOtherContext = true
    end

    -- Handle client and server interactions to ensure the API is replicated on both sides
    if Environment.IsServer() then
        -- Save and update the client from the server
        if not SaveInventory(player, inventoryId) then
            return false
        end

        -- Send client information if needed
        if updateOtherContext then
            SyncInventoryWithClient(player, inventoryId, API.Events.RemoveInventory, inventoryId, itemType, itemId, amount, slotIndex, includeContainers)
        end
    elseif Environment.IsClient() then
        if updateOtherContext then
            -- Handle removing inventory from the client
            RELIABLE_EVENTS.BroadcastToServer(API.Events.RemoveInventory, inventoryId, itemType, itemId, amount, slotIndex, includeContainers)
        end
    end

    return true
end

---Returns true if a slot can be moved from one Inventory to another, or to another slot in the same Inventory. If targetSlotIndex is not 
---defined a target slot will be found.
---@param player Player
---@param sourceInventoryId string
---@param sourceSlotIndex integer
---@param targetInventoryId string
---@param targetSlotIndex integer
---@return boolean
function API.CanTransferToInventory(player, sourceInventoryId, sourceSlotIndex, targetInventoryId, targetSlotIndex)
    local sourceSlotContent = API.GetSlot(player, sourceInventoryId, sourceSlotIndex)
    local targetSlotContent = API.GetSlot(player, targetInventoryId, targetSlotIndex)
    local totalTargetSlots = API.GetSetting(targetInventoryId, API.Setting.TotalSlots)
    local sourceSlotCapacity = API.GetSetting(sourceInventoryId, API.Setting.SlotCapacity)
    local targetSlotCapacity = API.GetSetting(targetInventoryId, API.Setting.SlotCapacity)

    local itemType = sourceSlotContent[API.Keys.ItemType]
    local itemId = sourceSlotContent[API.Keys.ItemId]
    local amount = sourceSlotContent[API.Keys.Amount]

    if not targetSlotIndex then
        -- Ensure we have a target slot index
        targetSlotIndex = API.GetAvailableSlotIndex(player, targetInventoryId, itemType, itemId, amount)
    else
        -- Ensure the target slot does not conflict with stacking restrictions across multiple slots
        if targetInventoryId ~= sourceInventoryId and not API.GetSetting(targetInventoryId, API.Setting.UseStacks) then
            local existingIndex = API.GetSlotIndexForItem(player, targetInventoryId, itemType, itemId)
            if existingIndex > 0 and existingIndex ~= targetSlotIndex then
                return false
            end
        end
    end

    -- Adjust amount if needed
    if targetSlotCapacity > 0 and amount > targetSlotCapacity then
        amount = targetSlotCapacity
    end

    if targetSlotIndex == 0 or (totalTargetSlots > 0 and targetSlotIndex > totalTargetSlots) then
        return false
    end

    if targetSlotContent then
        if DoesSlotMatch(targetSlotContent, itemType, itemId) then
            -- Adjust amount to fit stack
            if amount > targetSlotCapacity - targetSlotContent[API.Keys.Amount] then
                amount = targetSlotCapacity - targetSlotContent[API.Keys.Amount]
            end

            -- Check if the target slot is full
            if amount <= 0 then
                -- Verify the amount will fit
                if sourceSlotContent[API.Keys.Amount] > targetSlotCapacity or targetSlotContent[API.Keys.Amount] > sourceSlotCapacity then
                    return false
                end
            end
        else
            -- Verify the amount will fit
            if sourceSlotContent[API.Keys.Amount] > targetSlotCapacity or targetSlotContent[API.Keys.Amount] > sourceSlotCapacity then
                return false
            end
        end
    end

    return true
end

---Moves the contents of a slot from one Inventory to another, or within the same Inventory. If the target slot has content this will swap 
---it with the source slot. If targetSlotIndex is not defined a target slot will be found.
---@param player Player
---@param sourceInventoryId string
---@param sourceSlotIndex integer
---@param targetInventoryId string
---@param targetSlotIndex integer
---@param updateOtherContext boolean
---@return boolean
function API.TransferToInventory(player, sourceInventoryId, sourceSlotIndex, targetInventoryId, targetSlotIndex, updateOtherContext)
    --print(string.format("Transferring slot: %d from Inventory: %s to slot: %d in Inventory: %s on server: %s for Player: %s (%s)", sourceSlotIndex, sourceInventoryId, targetSlotIndex, targetInventoryId, Environment.IsServer(), player.name, player.id))

    if not sourceSlotIndex or sourceSlotIndex < 1 then
        Warning(sourceInventoryId, string.format("A source slot must be provided to transfer to Inventory: %s", sourceInventoryId))
        return false
    end

    local totalTargetSlots = API.GetSetting(targetInventoryId, API.Setting.TotalSlots)
    local targetSlotCapacity = API.GetSetting(targetInventoryId, API.Setting.SlotCapacity)
    local sourceSlotContent = API.GetSlot(player, sourceInventoryId, sourceSlotIndex)
    local sourceSlotCapacity = API.GetSetting(sourceInventoryId, API.Setting.SlotCapacity)

    local itemType = sourceSlotContent[API.Keys.ItemType]
    local itemId = sourceSlotContent[API.Keys.ItemId]
    local amount = sourceSlotContent[API.Keys.Amount]

    -- Ensure we have a target slot index
    if not targetSlotIndex then
        targetSlotIndex = API.GetAvailableSlotIndex(player, targetInventoryId, itemType, itemId, amount)
    end

    -- Adjust amount if needed
    if targetSlotCapacity > 0 and amount > targetSlotCapacity then
        amount = targetSlotCapacity
    end

    if targetSlotIndex == 0 or (totalTargetSlots > 0 and targetSlotIndex > totalTargetSlots) then
        Warning(targetInventoryId, string.format("Target Inventory full or target slot is invalid or out of bounds in Inventory: %s for Player: %s (%s)", targetInventoryId, player.name, player.id))
        return false
    end

    if not API.CanTransferToInventory(player, sourceInventoryId, sourceSlotIndex, targetInventoryId, targetSlotIndex) then
        Warning(sourceInventoryId, string.format("Cannot transfer from Inventory: %s to Inventory: %s for Player: %s (%s)", sourceInventoryId, targetInventoryId, player.name, player.id))
        return false
    end

    local targetSlotContent = API.GetSlot(player, targetInventoryId, targetSlotIndex)
    if targetSlotContent then
        if DoesSlotMatch(targetSlotContent, itemType, itemId) then
            -- Adjust amount to fit stack
            if amount > targetSlotCapacity - targetSlotContent[API.Keys.Amount] then
                amount = targetSlotCapacity - targetSlotContent[API.Keys.Amount]
            end

            -- Check if the target slot is full
            if amount <= 0 then
                -- Verify the amount will fit
                if sourceSlotContent[API.Keys.Amount] > targetSlotCapacity or targetSlotContent[API.Keys.Amount] > sourceSlotCapacity then
                    Warning(sourceInventoryId, string.format("Cannot fit amount in Inventory: %s for Player: %s (%s)", sourceInventoryId, player.name, player.id))
                    return false
                end

                -- Just swap the stacks
                SwapBetweenInventory(player, sourceInventoryId, sourceSlotIndex, targetInventoryId, targetSlotIndex)
            else
                TransferToInventory(player, sourceInventoryId, sourceSlotIndex, targetInventoryId, targetSlotIndex, itemType, itemId, amount)
            end
        else
            -- Verify the amount will fit
            if sourceSlotContent[API.Keys.Amount] > targetSlotCapacity or targetSlotContent[API.Keys.Amount] > sourceSlotCapacity then
                Warning(sourceInventoryId, string.format("Cannot fit amount in Inventory: %s for Player: %s (%s)", sourceInventoryId, player.name, player.id))
                return false
            end

            -- Target slot contains a different item, do a swap
            SwapBetweenInventory(player, sourceInventoryId, sourceSlotIndex, targetInventoryId, targetSlotIndex)
        end
    else
        -- Empty target slot
        TransferToInventory(player, sourceInventoryId, sourceSlotIndex, targetInventoryId, targetSlotIndex, itemType, itemId, amount)
    end

    -- Always send event in current context
    Events.Broadcast(API.Events.InventoryTransferred, player, sourceInventoryId, sourceSlotIndex, targetInventoryId, targetSlotIndex)

    -- Default to always update client
    if updateOtherContext == nil then
        updateOtherContext = true
    end

    -- Handle client and server interactions to ensure the API is replicated on both sides
    if Environment.IsServer() then
        -- Save and update the client from the server
        if not SaveInventory(player, sourceInventoryId) then
            return false
        end

        if sourceInventoryId ~= targetInventoryId then
            if not SaveInventory(player, targetInventoryId) then
                return false
            end
        end

        -- Send client information if needed
        if updateOtherContext then
            SyncInventoryWithClient(player, sourceInventoryId, API.Events.TransferInventory, sourceInventoryId, sourceSlotIndex, targetInventoryId, targetSlotIndex)
        end
    elseif Environment.IsClient() then
        if updateOtherContext then
            -- Handle removing inventory from the client
            RELIABLE_EVENTS.BroadcastToServer(API.Events.TransferInventory, sourceInventoryId, sourceSlotIndex, targetInventoryId, targetSlotIndex)
        end
    end

    return true
end

---Clears an Inventory for a Player.
---@param player Player
---@param inventoryId string
---@param resetToStartingItems boolean
---@param updateOtherContext boolean
---@return boolean
function API.ClearInventory(player, inventoryId, resetToStartingItems, updateOtherContext)
    --print(string.format("Clearing Inventory: %s on server: %s for Player: %s (%s)", inventoryId, Environment.IsServer(), player.name, player.id))

    if not API.IsInventoryRegistered(inventoryId) then
        Warning(inventoryId, string.format("Missing Inventory: %s", inventoryId))
        return false
    end

    -- Clear the content
    if resetToStartingItems then
        inventories[inventoryId][player] = CreateInventoryData(player, inventoryId)
    else
        inventories[inventoryId][player] = {}
    end

    -- Always send event in current context
    Events.Broadcast(API.Events.InventoryCleared, player, inventoryId, resetToStartingItems)

    -- Default to always update client
    if updateOtherContext == nil then
        updateOtherContext = true
    end

    -- Handle client and server interactions to ensure the API is replicated on both sides
    if Environment.IsServer() then
        -- Save and update the client from the server
        if not SaveInventory(player, inventoryId) then
            return false
        end

        -- Send client information if needed
        if updateOtherContext then
            SyncInventoryWithClient(player, inventoryId, API.Events.ClearInventory, inventoryId, resetToStartingItems)
        end
    elseif Environment.IsClient() then
        if updateOtherContext then
            -- Handle clearing inventory from the client
            RELIABLE_EVENTS.BroadcastToServer(API.Events.ClearInventory, inventoryId, resetToStartingItems)
        end
    end

    return true
end

---Returns the contents of a slot for a Player
---@param player Player
---@param inventoryId string
---@param slotIndex integer
---@return table
function API.GetSlot(player, inventoryId, slotIndex)
    local inventoryContents = API.GetInventory(player, inventoryId)
    if inventoryContents then
        return inventoryContents[slotIndex]
    end
    return nil
end

---Returns the index of a slot containing an item. This will return the first slot it finds, or 0 if none are found.
---@param player Player
---@param inventoryId string
---@param itemType integer
---@param itemId string
---@return integer
function API.GetSlotIndexForItem(player, inventoryId, itemType, itemId)
    local inventoryContents = API.GetInventory(player, inventoryId)
    if inventoryContents then
        if API.GetSetting(inventoryId, API.Setting.UseStacks) then
            -- Favor the stack with the smallest amount
            local smallestSlotIndex = 0
            local smallestAmount = math.huge
            for slotIndex, slotContent in pairs(inventoryContents) do
                if slotContent[API.Keys.ItemType] == itemType and slotContent[API.Keys.ItemId] == itemId then
                    if slotContent[API.Keys.Amount] < smallestAmount then
                        smallestSlotIndex = slotIndex
                        smallestAmount = slotContent[API.Keys.Amount]
                    end
                end
            end
            return smallestSlotIndex
        else
            -- Not using stacks so just find the first slot containing the item
            for slotIndex, slotContent in pairs(inventoryContents) do
                if slotContent[API.Keys.ItemType] == itemType and slotContent[API.Keys.ItemId] == itemId then
                    return slotIndex
                end
            end
        end
    end
    return 0
end

---Returns the index of the first empty slot. Will return 0 if no slot is available.
---@param player Player
---@param inventoryId string
---@return integer
function API.GetFirstEmptySlotIndex(player, inventoryId)
    local inventoryContents = API.GetInventory(player, inventoryId)
    if inventoryContents then
        local totalSlots = API.GetSetting(inventoryId, API.Setting.TotalSlots)
        for slotIndex = 1, totalSlots, 1 do
            if not inventoryContents[slotIndex] then
                return slotIndex
            end
        end
    end
    return 0
end

---Returns the amount of remaining capacity available in a specific slot of an Inventory for a Player.
---If the slot is empty, it will return the maximum slot capacity.
---@param player Player
---@param inventoryId string
---@param slotIndex integer
---@return integer
function API.GetRemainingSlotCapacity(player, inventoryId, slotIndex)
    local maxSlotCapacity = API.GetSetting(inventoryId, API.Setting.SlotCapacity)

    local slotContent = API.GetSlot(player, inventoryId, slotIndex)
    if slotContent then
        return maxSlotCapacity - slotContent[API.Keys.Amount]
    else
        return maxSlotCapacity
    end
end

---Returns the index of the first available slot for an amount of an item, or 0 if none are found.
---@param player Player
---@param inventoryId string
---@param itemType integer
---@param itemId string
---@param amount number
---@param ignoreSlots table|nil
---@return integer
function API.GetAvailableSlotIndex(player, inventoryId, itemType, itemId, amount, ignoreSlots)
    local inventoryContents = API.GetInventory(player, inventoryId)
    local totalSlots = API.GetSetting(inventoryId, API.Setting.TotalSlots)
    local slotCapacity = API.GetSetting(inventoryId, API.Setting.SlotCapacity)

    ignoreSlots = ignoreSlots or {}

    if API.GetSetting(inventoryId, API.Setting.UseStacks) then
        -- Find the first empty or matching slot that has space
        local emptySlotIndex = 0
        local slotIndex = 0
    
        while slotIndex < totalSlots do
            slotIndex = slotIndex + 1
            if not ignoreSlots[slotIndex] then
                if not inventoryContents[slotIndex] then
                    if emptySlotIndex == 0 then
                        emptySlotIndex = slotIndex
                    end
                elseif DoesSlotMatch(inventoryContents[slotIndex], itemType, itemId) then
                    if inventoryContents[slotIndex][API.Keys.Amount] < slotCapacity then
                        return slotIndex
                    end
                end
            end
        end

        return emptySlotIndex
    else
        -- Find if any existing slot has the itemType and is not at capacity
        local slotIndex = API.GetSlotIndexForItem(player, inventoryId, itemType, itemId)
        if slotIndex and slotIndex > 0 then
            if inventoryContents[slotIndex][API.Keys.Amount] < slotCapacity then
                return slotIndex
            else
                return 0
            end
        else
            -- Return the first empty slot found or 0
            for i = 1,totalSlots, 1 do
                if not ignoreSlots[i] then
                    if not inventoryContents[i] then
                        return i
                    end
                end
            end

            return 0
        end
    end
end

---Returns the highest priority Inventory id that can fit the supplied item. Does not include containers.
---@param itemType integer
---@param itemId string
---@param amount integer
---@param slotIndex integer
---@param adding boolean
---@param predicate function|nil
---@param includeContainers boolean
---@return string
function API.GetPriorityInventoryId(player, itemType, itemId, amount, slotIndex, adding, predicate, includeContainers)
    local highestPriority = 0
    local highestPriorityInventoryId

    predicate = predicate or function(inventoryId) return true end

    for inventoryId, _ in pairs(inventories) do
        if includeContainers or not API.IsContainerInventory(inventoryId) then
            if not highestPriorityInventoryId then
                highestPriorityInventoryId = inventoryId
            end

            if adding then
                if API.CanAddToInventory(player, inventoryId, itemType, itemId, amount, slotIndex, includeContainers) and predicate(inventoryId) then
                    local priority = API.GetSetting(inventoryId, API.Setting.Priority)
                    if highestPriority < priority then
                        highestPriorityInventoryId = inventoryId
                        highestPriority = priority
                    end
                end
            else
                if API.CanRemoveFromInventory(player, inventoryId, itemType, itemId, amount, slotIndex, includeContainers) and predicate(inventoryId) then
                    local priority = API.GetSetting(inventoryId, API.Setting.Priority)
                    if highestPriority < priority then
                        highestPriorityInventoryId = inventoryId
                        highestPriority = priority
                    end
                end
            end
        end
    end

    return highestPriorityInventoryId
end

---Returns the key used for storage and networking for an Inventory.
---@param inventoryId string
---@return string
function API.GetInventoryKey(inventoryId)
    return INVENTORY_TAG .. inventoryId
end

---Returns true if a string represents an Inventory key.
---@param key string
---@return boolean
function API.IsInventoryKey(key)
    return string.find(key, "^" .. INVENTORY_TAG) ~= nil
end

---Returns the Inventory id associated with an Inventory key.
---@param key string
---@return string
function API.GetInventoryIdFromKey(key)
    return string.sub(key, #INVENTORY_TAG + 1)
end

---Returns true if the Inventory Id is a generated container Id.
---@param inventoryId string
---@return boolean
function API.IsContainerInventoryId(inventoryId)
    return string.find(inventoryId, "^" .. CONTAINER_TAG) ~= nil
end

---Returns true of the Inventory is a container.
---@param itemId string
---@return boolean
function API.IsContainerInventory(itemId)
    return API.IsContainerInventoryId(itemId) or containerIds[itemId] == true
end

---Returns the base Inventory Id from a generated container Id.
---@param inventoryId string
---@return string
function API.GetBaseInventoryId(inventoryId)
    if API.IsContainerInventoryId(inventoryId) then
        local baseId, _, _ = CoreString.Split(inventoryId, "|", { removeEmptyResults = true })
        local baseInventoryId = string.sub(baseId, #CONTAINER_TAG + 1)
        return baseInventoryId
    end
    return inventoryId
end

---Returns the Item Id a container was generated from if a container if is provided.
---@param containerId string
---@return string
function API.GetContainerItemId(containerId)
    if API.IsContainerInventoryId(containerId) then
        local _, itemId, _ = CoreString.Split(containerId, "|", { removeEmptyResults = true })
        return itemId
    end
    return containerId
end

---Returns a unique(ish) container id.
---@param player Player
---@param itemId string|nil
---@param inventoryId string
---@return string
function API.GetUniqueContainerId(player, itemId, inventoryId)
    -- Id = CON_[inventoryId]|[itemId]|[UUID]
    return string.format("%s%s|%s|%s", CONTAINER_TAG, inventoryId, itemId or "", GenerateUUID(player))
end

---Server Only. Loads the Inventory for a player and sends an update to their client.
---@param player Player
---@param inventoryId string
---@return boolean
function LoadInventory(player, inventoryId)
    if not Environment.IsServer() then return false end

    --print(string.format("Loading Inventory: %s for Player: %s (%s)", inventoryId, player.name, player.id))

    local inventoryKey = API.GetInventoryKey(inventoryId)
    local storageKey = API.GetSetting(inventoryId, API.Setting.StorageKey)
    local playerData

    if storageKey and storageKey.isAssigned then
        playerData = Storage.GetSharedPlayerData(storageKey, player)
        if not playerData[inventoryKey] then
            playerData[inventoryKey] = CreateInventoryData(player, inventoryId)
            Storage.SetSharedPlayerData(storageKey, player, playerData)
        end
    else
        playerData = Storage.GetPlayerData(player)
        if not playerData[inventoryKey] then
            playerData[inventoryKey] = CreateInventoryData(player, inventoryId)
            Storage.SetPlayerData(player, playerData)
        end
    end

    SyncInventoryWithClient(player, inventoryId, API.Events.InventoryLoaded)

    inventories[inventoryId][player] = playerData[inventoryKey]

    Events.Broadcast(API.Events.InventoryLoaded, player, inventoryId)

    return true
end

---Creates a default Inventory contents table.
---@return table
function CreateInventoryData(player, inventoryId)
    local contents = {}
    local startingItems = API.GetSetting(inventoryId, API.Setting.StartingItems)
    for _, startingItemData in pairs(startingItems) do
        if type(startingItemData) == "table" then
            local itemData = DATABASE.Items[startingItemData.ItemId]
            if itemData and startingItemData.Amount > 0 then
                local itemType = API.ItemType.Item
                local itemId = startingItemData.ItemId

                -- Handle containers
                if itemData.IsInventory then
                    itemType = API.ItemType.Inventory
                    itemId = API.GetUniqueContainerId(player, itemId, itemData.InventoryId)
                end

                if startingItemData.SlotIndex > 0 and not contents[startingItemData.SlotIndex] then
                    -- Add to specific slot
                    contents[startingItemData.SlotIndex] = {
                        [API.Keys.ItemType] = itemType,
                        [API.Keys.ItemId] = itemId,
                        [API.Keys.Amount] = startingItemData.Amount
                    }
                else
                    -- Add to any slot
                    local added = false
                    for slotIndex = 1, API.GetSetting(inventoryId, API.Setting.TotalSlots), 1 do
                        if not contents[slotIndex] then
                            contents[slotIndex] = {
                                [API.Keys.ItemType] = itemType,
                                [API.Keys.ItemId] = itemId,
                                [API.Keys.Amount] = startingItemData.Amount
                            }

                            added = true
                            break
                        end
                    end

                    if not added then
                        Warning(inventoryId, string.format("Not enough room in Inventory: %s to add starting item: %s", inventoryId, startingItemData.ItemId))
                    end
                end
            else
                Warning(inventoryId, string.format("Invalid starting item: %s", startingItemData.ItemId))
            end
        end
    end
    return contents
end

---Server Only. Sends Inventory data to a client over the private network connection.
---@param player Player
---@param inventoryId string
---@param action string
function SyncInventoryWithClient(player, inventoryId, action, ...)
    if not Environment.IsServer() then return false end

    -- Setup the parameters to send for running the action on the client
    local actionParams
    if action then
        actionParams = { ... }
        table.insert(actionParams, false)
    end

    if not pendingActions[player] then
        pendingActions[player] = {}
    end

    if not pendingActions[player][inventoryId] then
        pendingActions[player][inventoryId] = {}
    end

    table.insert(pendingActions[player][inventoryId], {
        [API.Keys.Action] = action,
        [API.Keys.ActionParams] = actionParams
    })

    -- Send load actions immediately
    if action == API.Events.InventoryLoaded then
        if clientSyncTask then
            clientSyncTask:Cancel()
        end

        clientSyncTask = Task.Spawn(SyncWithClients)
    end
end

---Every second this will send any pending Inventory actions to the relevant clients.
function SyncWithClients()
    while true do
        local updatedInventoryIds = {}
        for player, inventoryIds in pairs(pendingActions) do
            updatedInventoryIds[player] = {}
            for inventoryId, actions in pairs(inventoryIds) do
                local inventoryKey = API.GetInventoryKey(inventoryId)

                if not updateFlags[player] then
                    updateFlags[player] = 0
                end

                -- Toggle the update flag to ensure data is sent
                updateFlags[player] = 1 - updateFlags[player]

                local inventoryData = {
                    [API.Keys.UpdateFlag] = updateFlags[player],
                    [API.Keys.Actions] = {}
                }

                for _, action in ipairs(actions) do
                    if action[API.Keys.Action] == API.Events.InventoryLoaded then
                        inventoryData[API.Keys.Contents] = API.GetInventory(player, inventoryId)
                    end

                    table.insert(inventoryData[API.Keys.Actions], action)
                end

                local result = player:SetPrivateNetworkedData(inventoryKey, inventoryData)
                if result ~= PrivateNetworkedDataResultCode.SUCCESS then
                    Warning(inventoryId, string.format("Could not send Inventory: %s data to client for Player: %s (%s) - Result: %s", inventoryId, player.name, player.id, result))
                end

                updatedInventoryIds[player][inventoryId] = true
            end
        end

        --[[
        TODO: Need to ACK from client to clear the key to be safer
        for _, player in ipairs(Game.GetPlayers()) do
            for inventoryId, _ in pairs(inventories) do
                if not updatedInventoryIds[player] or not updatedInventoryIds[player][inventoryId] then
                    local inventoryKey = API.GetInventoryKey(inventoryId)
                    local result = player:SetPrivateNetworkedData(inventoryKey, nil)
                    if result ~= PrivateNetworkedDataResultCode.SUCCESS then
                        Warning(inventoryId, string.format("Could not clear Inventory %s Key for Player: %s (%s) - Result: %s", inventoryId, player.name, player.id, result))
                    end
                end
            end
        end
        ]]--

        pendingActions = {}

        Task.Wait(1.0)
    end
end

---Called whenever client private networked data is changed. This syncs Inventory between the server and client.
---@param player Player
---@param key string
function HandlePrivateNetworkedDataChanged(player, key)
    if API.IsInventoryKey(key) then
        local inventoryId = API.GetInventoryIdFromKey(key)
        local inventoryData = player:GetPrivateNetworkedData(key)

        if inventoryData then
            local actions = inventoryData[API.Keys.Actions]

            for _, action in ipairs(actions) do
                if not action[API.Keys.Action] or action[API.Keys.Action] == API.Events.InventoryLoaded then
                    inventories[inventoryId] = {
                        [player] = inventoryData[API.Keys.Contents]
                    }

                    Events.Broadcast(API.Events.InventoryRegistered, inventoryId)
                    Events.Broadcast(API.Events.InventoryLoaded, player, inventoryId)
                elseif action[API.Keys.Action] == API.Events.AddInventory then
                    API.AddToInventory(player, table.unpack(action[API.Keys.ActionParams]))
                elseif action[API.Keys.Action] == API.Events.RemoveInventory then
                    API.RemoveFromInventory(player, table.unpack(action[API.Keys.ActionParams]))
                elseif action[API.Keys.Action] == API.Events.TransferInventory then
                    API.TransferToInventory(player, table.unpack(action[API.Keys.ActionParams]))
                elseif action[API.Keys.Action] == API.Events.ClearInventory then
                    API.ClearInventory(player, table.unpack(action[API.Keys.ActionParams]))
                end
            end
        end
    end
end

---Server Only. Saves Inventory content into Storage for a Player. Uses Local or Shared Storage depending on the
---Inventory settings.
---@param player Player
---@param inventoryId string
---@return boolean
function SaveInventory(player, inventoryId)
    if not Environment.IsServer() then return false end

    --print(string.format("Saving Inventory: %s for Player: %s (%s)", inventoryId, player.name, player.id))

    local inventoryKey = API.GetInventoryKey(inventoryId)
    local storageKey = API.GetSetting(inventoryId, API.Setting.StorageKey)

    if storageKey and storageKey.isAssigned then
        local playerData = Storage.GetSharedPlayerData(storageKey, player)
        playerData[inventoryKey] = API.GetInventory(player, inventoryId)
        playerData[inventoryKey .. VERSION_TAG] = INVENTORY_DATA_VERSION

        local result = Storage.SetSharedPlayerData(storageKey, player, playerData)
        if result ~= StorageResultCode.SUCCESS then
            Warning(inventoryId, string.format("Could not save Inventory: %s for Player: %s (%s) - Result: %s", inventoryId, player.name, player.id, result))
            return false
        end
    else
        local playerData = Storage.GetPlayerData(player)
        playerData[inventoryKey] = API.GetInventory(player, inventoryId)
        playerData[inventoryKey .. VERSION_TAG] = INVENTORY_DATA_VERSION

        local result = Storage.SetPlayerData(player, playerData)
        if result ~= StorageResultCode.SUCCESS then
            Warning(inventoryId, string.format("Could not save Inventory: %s for Player: %s (%s) - Result: %s", inventoryId, player.name, player.id, result))
            return false
        end
    end

    Events.Broadcast(API.Events.InventorySaved, player, inventoryId)

    return true
end

function CanAddContainerInventory(player, containerInventoryId)
    local containerContent
    if API.IsInventoryRegistered(containerInventoryId) then
        containerContent = API.GetInventory(player, containerInventoryId)
    end

    -- Load the content if needed
    if not containerContent then
        local inventoryKey = API.GetInventoryKey(containerInventoryId)
        local storageKey = API.GetSetting(containerInventoryId, API.Setting.StorageKey)

        if storageKey and storageKey.isAssigned then
            containerContent = Storage.GetSharedPlayerData(storageKey, player)[inventoryKey]
        else
            containerContent = Storage.GetPlayerData(player)[inventoryKey]
        end
    end

    if containerContent then
        for _, slotContent in pairs(containerContent) do
            if slotContent[API.Keys.Amount] > 0 then
                return false
            end
        end
    end
    return true
end

---Adds an amount of an item to a slot.
---@param player Player
---@param inventoryId string
---@param slotIndex integer
---@param itemType integer
---@param itemId string
---@param amount integer
function AddToInventory(player, inventoryId, slotIndex, itemType, itemId, amount)
    local inventoryContents = API.GetInventory(player, inventoryId)
    if inventoryContents then
        local slotContent = API.GetSlot(player, inventoryId, slotIndex)
        if slotContent then
            slotContent[API.Keys.Amount] = slotContent[API.Keys.Amount] + amount
        else
            inventoryContents[slotIndex] = {
                [API.Keys.ItemType] = itemType,
                [API.Keys.ItemId] = itemId,
                [API.Keys.Amount] = amount
            }
        end
    end
end

---Removes an amount of an item from a slot.
---@param player Player
---@param inventoryId string
---@param slotIndex integer
---@param amount integer
function RemoveFromInventory(player, inventoryId, slotIndex, amount)
    local inventoryContents = API.GetInventory(player, inventoryId)
    if inventoryContents then
        local slotContent = API.GetSlot(player, inventoryId, slotIndex)
        if slotContent then
            if slotContent[API.Keys.Amount] > amount then
                slotContent[API.Keys.Amount] = slotContent[API.Keys.Amount] - amount
            else
                inventoryContents[slotIndex] = nil
            end
        end
    end
end

---Swaps the contents of one slot with another.
---@param player Player
---@param sourceInventoryId string
---@param sourceSlotIndex integer
---@param targetInventoryId string
---@param targetSlotIndex integer
function SwapBetweenInventory(player, sourceInventoryId, sourceSlotIndex, targetInventoryId, targetSlotIndex)
    local sourceSlotContent = API.GetSlot(player, sourceInventoryId, sourceSlotIndex)
    local targetSlotContent = API.GetSlot(player, targetInventoryId, targetSlotIndex)

    local targetItemType = targetSlotContent[API.Keys.ItemType]
    local targetItemId = targetSlotContent[API.Keys.ItemId]
    local targetAmount = targetSlotContent[API.Keys.Amount]

    targetSlotContent[API.Keys.ItemType] = sourceSlotContent[API.Keys.ItemType]
    targetSlotContent[API.Keys.ItemId] = sourceSlotContent[API.Keys.ItemId]
    targetSlotContent[API.Keys.Amount] = sourceSlotContent[API.Keys.Amount]

    sourceSlotContent[API.Keys.ItemType] = targetItemType
    sourceSlotContent[API.Keys.ItemId] = targetItemId
    sourceSlotContent[API.Keys.Amount] = targetAmount
end

---Moves an amount fo an item from one slot to another. This can occur in a single Inventory or between multiple Inventories.
---@param player Player
---@param sourceInventoryId string
---@param sourceSlotIndex integer
---@param targetInventoryId string
---@param targetSlotIndex integer
---@param itemType integer
---@param itemId string
---@param amount integer
function TransferToInventory(player, sourceInventoryId, sourceSlotIndex, targetInventoryId, targetSlotIndex, itemType, itemId, amount)
    RemoveFromInventory(player, sourceInventoryId, sourceSlotIndex, amount)
    AddToInventory(player, targetInventoryId, targetSlotIndex, itemType, itemId, amount)
end

-- Returns the amount of items that can be added to the slot without exceeding the slot's capacity
---@param player Player
---@param inventoryId string
---@param slotIndex integer
---@param addedAmount integer
---@return integer
function CapAddedAmount(player, inventoryId, slotIndex, addedAmount)
    return CoreMath.Clamp(addedAmount, 0, API.GetRemainingSlotCapacity(player, inventoryId, slotIndex))
end

---Returns true if the item in a slot matches the provided item type and id.
---@param slotContent table
---@param itemType integer
---@param itemId string
---@return boolean
function DoesSlotMatch(slotContent, itemType, itemId)
    return slotContent and slotContent[API.Keys.ItemType] == itemType and slotContent[API.Keys.ItemId] == itemId
end

---Generates an id based on a mix of the Player id and the current uuid counter.
---@param player Player
---@return string
function GenerateUUID(player)
    -- Seed random with a mix of the player id and increment to avoid getting the same uuid if called multiple
    -- times on the same frame / second
    local idBytes = { "0" }
    if player then
        idBytes = { string.byte(player.id, 1, 6) }
    end

    uuidNum = uuidNum + 1
    math.randomseed(tonumber(table.concat(idBytes)) + uuidNum)

    local template ='xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
    return string.sub(string.gsub(template, '[xy]', function(c)
        local v = (c == 'x') and math.random(0, 0xf) or math.random(8, 0xb)
        return string.format('%x', v)
    end), 1, 8)
end

---Loads all registered inventories for a player.
---@param player Player
function HandleLoadInventories(player)
    if not Environment.IsServer() then return false end

    for inventoryId, _ in pairs(inventories) do
        if not API.IsInventoryLoaded(player, inventoryId) then
            LoadInventory(player, inventoryId)
        end
    end
end

---Server Only. Mirrors a client side add inventory call on the server to keep server and client synchronized.
---@param player Player
---@param inventoryId string
---@param itemType integer
---@param itemId string
---@param amount integer
---@param slotIndex integer
---@param includeContainers boolean
function HandleInventoryAddRequest(player, inventoryId, itemType, itemId, amount, slotIndex, includeContainers)
    if not Environment.IsServer() then return false end

    API.AddToInventory(player, inventoryId, itemType, itemId, amount, slotIndex, includeContainers, false)
end

---Server Only. Mirrors a client side remove inventory call on the server to keep server and client synchronized.
---@param player Player
---@param inventoryId string
---@param itemType integer
---@param itemId string
---@param amount integer
---@param slotIndex integer
---@param includeContainers boolean
function HandleInventoryRemoveRequest(player, inventoryId, itemType, itemId, amount, slotIndex, includeContainers)
    if not Environment.IsServer() then return false end

    API.RemoveFromInventory(player, inventoryId, itemType, itemId, amount, slotIndex, includeContainers, false)
end

---Server Only. Mirrors a client side transfer inventory call on the server to keep server and client synchronized.
---@param player Player
---@param sourceInventoryId string
---@param sourceSlotIndex integer
---@param targetInventoryId string
---@param targetSlotIndex integer
function HandleInventoryTransferRequest(player, sourceInventoryId, sourceSlotIndex, targetInventoryId, targetSlotIndex)
    if not Environment.IsServer() then return false end

    API.TransferToInventory(player, sourceInventoryId, sourceSlotIndex, targetInventoryId, targetSlotIndex, false)
end

---Server Only. Mirrors a client side clear inventory call on the server to keep server and client synchronized.
---@param player Player
---@param inventoryId string
function HandleInventoryClearRequest(player, inventoryId, resetToStartingItems)
    if not Environment.IsServer() then return false end

    API.ClearInventory(player, inventoryId, resetToStartingItems, false)
end

---Sets up the required listeners and loads all registered Inventories when a Player joins.
---@param player Player
function OnPlayerJoined(player)
    if Environment.IsClient() then
        if player ~= Game.GetLocalPlayer() then return end

        -- Listen for data coming from the server
        player.privateNetworkedDataChangedEvent:Connect(HandlePrivateNetworkedDataChanged)

        -- Check existing keys
        local keys = player:GetPrivateNetworkedDataKeys()
        for _, key in ipairs(keys) do
            HandlePrivateNetworkedDataChanged(player, key)
        end

        -- Load existing inventories
        RELIABLE_EVENTS.BroadcastToServer(API.Events.LoadInventories)
    end
end

---Unloads all registered Inventories for a Player when they leave.
---@param player Player
function OnPlayerLeft(player)
    for _, inventoryInfo in pairs(inventories) do
        inventoryInfo[player] = nil
    end

    updateFlags[player] = nil
end

---A wrapper around warn() to allow for toggling it with an Inventory setting "VerboseLogs".
---@param inventoryId string
---@param message string
function Warning(inventoryId, message)
    if inventories[inventoryId] and inventories[inventoryId] and API.GetSetting(inventoryId, API.Setting.VerboseLogs) then
        warn(string.format("%s\n%s", message, CoreDebug.GetStackTrace()))
    else
        warn(message)
    end
end

-- Handle client requests
if Environment.IsServer() then
    Events.ConnectForPlayer(API.Events.LoadInventories, HandleLoadInventories)
    Events.ConnectForPlayer(API.Events.AddInventory, HandleInventoryAddRequest)
    Events.ConnectForPlayer(API.Events.RemoveInventory, HandleInventoryRemoveRequest)
    Events.ConnectForPlayer(API.Events.TransferInventory, HandleInventoryTransferRequest)
    Events.ConnectForPlayer(API.Events.ClearInventory, HandleInventoryClearRequest)

    clientSyncTask = Task.Spawn(SyncWithClients)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)

return API