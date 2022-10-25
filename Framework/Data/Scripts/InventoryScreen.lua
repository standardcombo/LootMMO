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
    A simple Inventory Screen that displays an Inventory in a grid layout. It also handles updating the Inventory Slots
    as Inventory is added and removed.
--]]

-- Internal Variables
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
---@type APIInventory
local INVENTORY = require(script:GetCustomProperty("APIInventory"))

local ICON_CAMERA_ID = COMPONENT_ROOT:GetCustomProperty("IconCameraId")
local TITLE = COMPONENT_ROOT:GetCustomProperty("Title"):WaitForObject()
local CLOSE_BUTTON = COMPONENT_ROOT:GetCustomProperty("CloseButton"):WaitForObject()
local SLOT_CONTAINER = COMPONENT_ROOT:GetCustomProperty("SlotContainer"):WaitForObject()
local SLOT_TEMPLATE = COMPONENT_ROOT:GetCustomProperty("SlotTemplate")
local INVENTORY_ID = COMPONENT_ROOT:GetCustomProperty("InventoryId")
local COLUMNS = COMPONENT_ROOT:GetCustomProperty("Columns")
local PADDING = COMPONENT_ROOT:GetCustomProperty("Padding")
local USE_NUMERIC_SHORTCUTS = COMPONENT_ROOT:GetCustomProperty("UseNumericShortcuts")
local SHORTCUT_ACTS_AS_BINDING = COMPONENT_ROOT:GetCustomProperty("ShortcutActsAsBinding")

-- Constants
local SHORTCUT_BINDINGS = {
    ["ability_extra_1"] = 1,
    ["ability_extra_2"] = 2,
    ["ability_extra_3"] = 3,
    ["ability_extra_4"] = 4,
    ["ability_extra_5"] = 5,
    ["ability_extra_6"] = 6,
    ["ability_extra_7"] = 7,
    ["ability_extra_8"] = 8,
    ["ability_extra_9"] = 9,
    ["ability_extra_0"] = 10
}

-- Private Variables
local inventoryId
local listeners = {}
local slots = {}
local totalHeight = 0
local setupTask

function Initialize(id)
    if not id then return end

    inventoryId = id

    COMPONENT_ROOT.destroyEvent:Connect(Cleanup)

    if CLOSE_BUTTON then
        CLOSE_BUTTON.clickedEvent:Connect(Close)
    end

    while not INVENTORY.IsInventoryLoaded(Game.GetLocalPlayer(), inventoryId) do
        Task.Wait()
    end

    if TITLE then
        TITLE.text = INVENTORY.GetSetting(inventoryId, INVENTORY.Setting.Name)
    end

    setupTask = Task.Spawn(function()
        SetupSlots()
    end)

    table.insert(listeners, Events.Connect(INVENTORY.Events.InventoryAdded, HandleInventoryChanged))
    table.insert(listeners, Events.Connect(INVENTORY.Events.InventoryRemoved, HandleInventoryChanged))
    table.insert(listeners, Events.Connect(INVENTORY.Events.InventoryTransferred, HandleInventoryTransferred))
    table.insert(listeners, Events.Connect(INVENTORY.Events.InventoryCleared, HandleInventoryCleared))

    table.insert(listeners, Game.GetLocalPlayer().privateNetworkedDataChangedEvent:Connect(OnPrivateNetworkedDataChanged))
end

function Cleanup()
    for _, listener in ipairs(listeners) do
        listener:Disconnect()
    end

    if setupTask then
        setupTask:Cancel()
        setupTask = nil
    end

    listeners = {}
end

function Close()
    if Object.IsValid(COMPONENT_ROOT) then
        COMPONENT_ROOT:Destroy()
    end
end

function SetupSlots()
    local totalSlots = INVENTORY.GetSetting(inventoryId, INVENTORY.Setting.TotalSlots)
    local index = 1
    if totalSlots > 0 then
        local contents = INVENTORY.GetInventory(Game.GetLocalPlayer(), inventoryId)
        for slotIndex = 1, totalSlots, 1 do
            CreateSlot(slotIndex, contents[slotIndex])

            if index % COLUMNS == 0 then
                Task.Wait()
            end

            index = index + 1
        end
    end
end

function CreateSlot(slotIndex, slotContent)
    local slot = World.SpawnAsset(SLOT_TEMPLATE, { parent = SLOT_CONTAINER })

    slot.x = ((slotIndex - 1) % COLUMNS) * (slot.width + PADDING)
    slot.y = math.floor((slotIndex - 1) / COLUMNS) * (slot.height + PADDING)

    local slotHeight = slot.y + slot.height + PADDING
    if slotHeight > totalHeight then
        totalHeight = slotHeight
        SLOT_CONTAINER.height = totalHeight
    end

    local controllerRef = slot:GetCustomProperty("Controller")
    local controller
    if controllerRef and controllerRef.isAssigned then
        controller = controllerRef:WaitForObject().context
        if controller then
            controller.Initialize(inventoryId, slotIndex, slotContent, ICON_CAMERA_ID, GetShortcutForSlotIndex(slotIndex), SHORTCUT_ACTS_AS_BINDING)
        end
    end

    slots[slotIndex] = controller
end

function CreateOrUpdateSlots(data)
    local contents = INVENTORY.GetInventory(Game.GetLocalPlayer(), inventoryId)
    for slotIndex, _ in pairs(data) do
        if slots[slotIndex] then
            slots[slotIndex].Update(contents[slotIndex])
        else
            CreateSlot(slotIndex, contents[slotIndex])
        end
    end
end

function HandleInventoryChanged(player, id, itemType, itemId, amountData)
    if id == inventoryId then
        CreateOrUpdateSlots(amountData)
    end
end

function HandleInventoryTransferred(player, sourceInventoryId, sourceSlotIndex, targetInventoryId, targetSlotIndex)
    if sourceInventoryId == inventoryId then
        local contents = INVENTORY.GetInventory(Game.GetLocalPlayer(), sourceInventoryId)
        if slots[sourceSlotIndex] then
            slots[sourceSlotIndex].Update(contents[sourceSlotIndex])
        else
            CreateSlot(sourceSlotIndex, contents[sourceSlotIndex])
        end
    end

    if targetInventoryId == inventoryId then
        local contents = INVENTORY.GetInventory(Game.GetLocalPlayer(), targetInventoryId)
        if slots[targetSlotIndex] then
            slots[targetSlotIndex].Update(contents[targetSlotIndex])
        else
            CreateSlot(targetSlotIndex, contents[targetSlotIndex])
        end
    end
end

function HandleInventoryCleared(player, id)
    if id == inventoryId then
        for _, controller in ipairs(slots) do
            if controller then
                controller.Clear()
            end
        end
    end
end

function OnPrivateNetworkedDataChanged(player, key)
    if INVENTORY.IsInventoryKey(key) then
        if INVENTORY.GetInventoryIdFromKey(key) == inventoryId then
            local contents = INVENTORY.GetInventory(Game.GetLocalPlayer(), inventoryId)
            local totalSlots = INVENTORY.GetSetting(inventoryId, INVENTORY.Setting.TotalSlots)
            if totalSlots > 0 then
                for slotIndex = 1, totalSlots, 1 do
                    if slots[slotIndex] then
                        slots[slotIndex].Update(contents[slotIndex])
                    else
                        CreateSlot(slotIndex, contents[slotIndex])
                    end
                end
            end
        end
    end
end

function GetShortcutForSlotIndex(slotIndex)
    if USE_NUMERIC_SHORTCUTS then
        for binding, bindingSlotIndex in pairs(SHORTCUT_BINDINGS) do
            if bindingSlotIndex == slotIndex then
                return binding
            end
        end
    end
    return nil
end

if INVENTORY_ID ~= "" then
    Initialize(INVENTORY_ID)
end