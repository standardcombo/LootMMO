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
    This allows Inventory setup and configuration in the hierarchy for container Inventories (Chests). The Inventory API
    will use default settings for anything not configured here aside from the InventoryId. InventoryIds must be unique
    across a project.
--]]

-- Internal Variables
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
---@type APIInventory
local INVENTORY = require(script:GetCustomProperty("APIInventory"))
---@type APIDatabase
local DATABASE = require(script:GetCustomProperty("APIDatabase"))

local INVENTORY_ID = COMPONENT_ROOT:GetCustomProperty("InventoryId")
local INVENTORY_NAME = COMPONENT_ROOT:GetCustomProperty("InventoryName")
local DEFAULT_ICON = COMPONENT_ROOT:GetCustomProperty("DefaultIcon")
local STARTING_ITEMS = COMPONENT_ROOT:GetCustomProperty("StartingItems"):WaitForObject()
local STORAGE_KEY = COMPONENT_ROOT:GetCustomProperty("StorageKey")
local TOTAL_SLOTS = COMPONENT_ROOT:GetCustomProperty("TotalSlots")
local SLOT_CAPACITY = COMPONENT_ROOT:GetCustomProperty("SlotCapacity")
local ALLOW_NON_EMPTY_CONTAINERS = COMPONENT_ROOT:GetCustomProperty("AllowNonEmptyContainers")
local USE_STACKS = COMPONENT_ROOT:GetCustomProperty("UseStacks")
local CAN_EQUIP = COMPONENT_ROOT:GetCustomProperty("CanEquip")
local CAN_DROP = COMPONENT_ROOT:GetCustomProperty("CanDrop")
local DROP_FOR_ALL_PLAYERS = COMPONENT_ROOT:GetCustomProperty("DropForAllPlayers")
local DROP_TIMEOUT_SECONDS = COMPONENT_ROOT:GetCustomProperty("DropTimeoutSeconds")
local ITEM_PICKUP_TEMPLATE = COMPONENT_ROOT:GetCustomProperty("ItemPickupTemplate")
local SCREEN_TEMPLATE = COMPONENT_ROOT:GetCustomProperty("ScreenTemplate")
local VERBOSE_LOGS = COMPONENT_ROOT:GetCustomProperty("VerboseLogs")

if INVENTORY_ID == "" then
    error("InventoryId must be set")
    return
end

if TOTAL_SLOTS <= 0 then
    TOTAL_SLOTS = 10
end

if SLOT_CAPACITY < 0 then
    SLOT_CAPACITY = 99
end

if DROP_TIMEOUT_SECONDS < 0 then
    DROP_TIMEOUT_SECONDS = 0
end

if not DATABASE.Screens or not DATABASE.Screens[INVENTORY_ID] then
    -- Add the screen data to the Database
    local screenData = {
        Screens = {
            [INVENTORY_ID] = {
                ScreenTemplate = SCREEN_TEMPLATE,
                OpenBinding = "",
                CloseBinding = "",
                OpenScreenParams = {},
                ShowCursor = true
            }
        }
    }

    DATABASE.AppendData(screenData)
end

if not DATABASE.Inventories or not DATABASE.Inventories[INVENTORY_ID] then
    -- Add Inventory data to the Database
    local startingItemsData = {}
    if STARTING_ITEMS then
        startingItemsData = DATABASE.ParseCoreObject(STARTING_ITEMS, false, false)
    end

    local inventoryData = {
        Inventories = {
            [INVENTORY_ID] = {
                [INVENTORY.Setting.Name] = INVENTORY_NAME,
                [INVENTORY.Setting.DefaultIcon] = DEFAULT_ICON,
                [INVENTORY.Setting.StorageKey] = STORAGE_KEY,
                [INVENTORY.Setting.TotalSlots] = TOTAL_SLOTS,
                [INVENTORY.Setting.SlotCapacity] = SLOT_CAPACITY,
                [INVENTORY.Setting.AllowNonEmptyContainers] = ALLOW_NON_EMPTY_CONTAINERS,
                [INVENTORY.Setting.UseStacks] = USE_STACKS,
                [INVENTORY.Setting.CanEquip] = CAN_EQUIP,
                [INVENTORY.Setting.CanDrop] = CAN_DROP,
                [INVENTORY.Setting.DropForAllPlayers] = DROP_FOR_ALL_PLAYERS,
                [INVENTORY.Setting.DropTimeoutSeconds] = DROP_TIMEOUT_SECONDS,
                [INVENTORY.Setting.ItemPickupTemplate] = ITEM_PICKUP_TEMPLATE,
                [INVENTORY.Setting.StartingItems] = startingItemsData,
                [INVENTORY.Setting.OverflowInventoryIds] = {},
                [INVENTORY.Setting.VerboseLogs] = VERBOSE_LOGS
            }
        }
    }

    DATABASE.AppendData(inventoryData)
end