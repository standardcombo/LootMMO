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
    A simple Inventory Slot that displays an item along with its icon and amount. This version makes use of some input 
    system components to handle drag & drop and broadcasting events.
--]]

-- Internal Variables
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
---@type APIInventory
local INVENTORY = require(script:GetCustomProperty("APIInventory"))
---@type APIInteractionManager
local INPUT = require(script:GetCustomProperty("APIInteractionManager"))
local INPUT_MODULE = require(script:GetCustomProperty("APIInputModule"))
---@type APIIconManager
local ICON_MANAGER = require(script:GetCustomProperty("APIIconManager"))
---@type APIDatabase
local DATABASE = require(script:GetCustomProperty("APIDatabase"))
---@type APIEquipment
local EQUIPMENT = require(script:GetCustomProperty("APIEquipment"))

local TOGGLE_TOOLTIP_COMPONENT = script:GetCustomProperty("ToggleTooltipComponent"):WaitForObject()
local DROP_EVENT_COMPONENT = script:GetCustomProperty("DropEventComponent"):WaitForObject()
local CLICK_EVENT_COMPONENT = script:GetCustomProperty("ClickEventComponent"):WaitForObject()

local BACKGROUND = COMPONENT_ROOT:GetCustomProperty("Background"):WaitForObject()
local ICON = COMPONENT_ROOT:GetCustomProperty("Icon"):WaitForObject()
local AMOUNT = COMPONENT_ROOT:GetCustomProperty("Amount"):WaitForObject()
local BINDING = COMPONENT_ROOT:GetCustomProperty("Binding"):WaitForObject()
local DRAG_PROXY_TEMPLATE = COMPONENT_ROOT:GetCustomProperty("DragProxyTemplate")

-- Constants
local SELECTION_SET = "EquippedSlot"
local LOCAL_PLAYER = Game.GetLocalPlayer()
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
    ["ability_extra_0"] = 0
}

-- Private Variables
local inventoryId
local slotIndex
local slotContent
local iconCameraId
local shortcutBinding
local shortcutActsAsBinding
local listeners = {}
local itemData

function Initialize(id, index, content, cameraId, binding, actsAsBinding)
    inventoryId = id
    slotIndex = index
    slotContent = content
    iconCameraId = cameraId
    shortcutBinding = binding
    shortcutActsAsBinding = actsAsBinding

    -- Set data on the BroadcastEvent Components so they relay it when they fire.
    INPUT.SetData(COMPONENT_ROOT, DROP_EVENT_COMPONENT, inventoryId, slotIndex)
    INPUT.SetData(COMPONENT_ROOT, CLICK_EVENT_COMPONENT, inventoryId, slotIndex)

    if slotContent then
        local itemId = slotContent[INVENTORY.Keys.ItemId]
        if slotContent[INVENTORY.Keys.ItemType] == INVENTORY.ItemType.Inventory then
            itemData = DATABASE.Items[INVENTORY.GetContainerItemId(itemId)]
        else
            itemData = DATABASE.Items[itemId]
        end

        -- Set Tooltip data
        if itemData then
            INPUT.SetData(COMPONENT_ROOT, TOGGLE_TOOLTIP_COMPONENT, string.format("%s\n%s", itemData.Name, itemData.Description))

            -- Override icon if needed
            if itemData.IconCameraId ~= "" then
                iconCameraId = itemData.IconCameraId
            end
        end
    end

    -- Setup the DraggableObject Component so we can validate drags and spawn proxies instead of dragging the actual slots.
    -- The extra data inventoryId and slotIndex will be sent back down into IsValidDropTarget checks
    INPUT.SetDragData(COMPONENT_ROOT, IsValidDrag, GetDragProxy, inventoryId, slotIndex)

    -- Setup the DropTarget Component so we can validate drops.
    -- The extra data inventoryId and slotIndex will be sent through the Dropped callback on anything dropped on this slot.
    INPUT.SetDropTargetData(COMPONENT_ROOT, IsValidDropTarget, inventoryId, slotIndex)

    if shortcutBinding then
        table.insert(listeners, LOCAL_PLAYER.bindingPressedEvent:Connect(HandleBindingPressed))
        table.insert(listeners, LOCAL_PLAYER.bindingReleasedEvent:Connect(HandleBindingReleased))
    end

    table.insert(listeners, Events.Connect(INVENTORY.Events.InventoryTransferred, HandleInventoryTransferred))
    table.insert(listeners, Events.Connect(INVENTORY.Events.SlotEquipped, HandleSlotEquipped))
    table.insert(listeners, Events.Connect(INVENTORY.Events.SlotUnequipped, HandleSlotUnequipped))

    COMPONENT_ROOT.destroyEvent:Connect(Cleanup)

    Setup(true)
end

function Cleanup()
    for _, listener in ipairs(listeners) do
        listener:Disconnect()
    end

    listeners = {}
    inventoryId = nil
    slotIndex = nil
end

function Update(content)
    local refreshIcon = not slotContent or not content

    slotContent = content

    if slotContent then
        local newItemData
        local itemId = slotContent[INVENTORY.Keys.ItemId]
        if slotContent[INVENTORY.Keys.ItemType] == INVENTORY.ItemType.Inventory then
            newItemData = DATABASE.Items[INVENTORY.GetContainerItemId(itemId)]
        else
            newItemData = DATABASE.Items[itemId]
        end

        if newItemData then
            if newItemData ~= itemData then
                itemData = newItemData
                refreshIcon = true
            end

            INPUT.SetData(COMPONENT_ROOT, TOGGLE_TOOLTIP_COMPONENT, string.format("%s\n%s", itemData.Name, itemData.Description))

            if itemData.IconCameraId ~= "" then
                iconCameraId = itemData.IconCameraId
            end
        end
    else
        itemData = nil
        INPUT.SetData(COMPONENT_ROOT, TOGGLE_TOOLTIP_COMPONENT, nil)
    end

    Setup(refreshIcon)
end

function Clear()
    slotContent = nil

    INPUT.SetData(COMPONENT_ROOT, TOGGLE_TOOLTIP_COMPONENT, nil)

    Setup(false)
end

function Setup(refreshIcon)
    if slotContent then
        -- We have some item data so lets display it
        if DATABASE.Items then
            if refreshIcon and itemData then
                ICON.visibility = Visibility.INHERIT
                if itemData.IsKitbashed2DIcon then
                    ICON:SetImage(nil)
                    ICON:SetColor(Color.New(0, 0, 0, 0))
                    World.SpawnAsset(itemData.IconAsset, { parent = ICON })
                elseif itemData.Is3DIcon then
                    ICON_MANAGER.SetIcon(ICON, iconCameraId, itemData.IconAsset, CameraCaptureResolution.SMALL)
                elseif itemData.IsImageIcon then
                    ICON:SetImage(itemData.IconAsset)
                else
                    ICON:SetImage(INVENTORY.GetSetting(inventoryId, INVENTORY.Setting.DefaultIcon))
                end
            end
        else
            ICON.visibility = Visibility.FORCE_OFF
        end

        local amount = slotContent[INVENTORY.Keys.Amount]
        if amount > 1 then
            AMOUNT.text = string.format("x%d", amount)
        else
            AMOUNT.text = ""
        end
    else
        -- This slot is empty
        BACKGROUND.visibility = Visibility.FORCE_OFF
        ICON.visibility = Visibility.FORCE_OFF
        AMOUNT.text = ""
    end

    if shortcutBinding then
        BINDING.text = tostring(SHORTCUT_BINDINGS[shortcutBinding])
    else
        BINDING.text = ""
    end
end

function HandleBindingPressed(player, binding)
    if binding == shortcutBinding then
        INPUT.BeginPress(INPUT_MODULE.Module, COMPONENT_ROOT, shortcutActsAsBinding)
    end
end

function HandleBindingReleased(player, binding)
    if binding == shortcutBinding then
        INPUT.EndPress(INPUT_MODULE.Module, COMPONENT_ROOT, shortcutActsAsBinding)
    end
end

function HandleInventoryTransferred(player, sourceInventoryId, sourceSlotIndex, targetInventoryId, targetSlotIndex)
    if sourceInventoryId == inventoryId and sourceSlotIndex == slotIndex then
        HandleSlotUnequipped(sourceInventoryId, sourceSlotIndex)
    end

    if slotContent and targetInventoryId == inventoryId and targetSlotIndex == slotIndex then
        if itemData then
            local canTargetInventoryEquip = INVENTORY.GetSetting(targetInventoryId, INVENTORY.Setting.CanEquip)
            if itemData.CanEquip then
                local itemId = slotContent[INVENTORY.Keys.ItemId]
                if slotContent[INVENTORY.Keys.ItemType] == INVENTORY.ItemType.Inventory then
                    itemId = INVENTORY.GetContainerItemId(itemId)
                end

                if canTargetInventoryEquip then
                    if EQUIPMENT.IsEquipped(LOCAL_PLAYER, itemId) then
                        HandleSlotEquipped(targetInventoryId, targetSlotIndex)
                    end
                else
                    if EQUIPMENT.IsEquipped(LOCAL_PLAYER, itemId) then
                        EQUIPMENT.Unequip(LOCAL_PLAYER, itemId)
                    end
                end
            end
        end
    end
end

function HandleSlotEquipped(id, index)
    if id == inventoryId and index == slotIndex then
        INPUT.DeselectAll(INPUT_MODULE.Module, SELECTION_SET, LOCAL_PLAYER)
        INPUT.Select(INPUT_MODULE.Module, COMPONENT_ROOT, SELECTION_SET, LOCAL_PLAYER)
    end
end

function HandleSlotUnequipped(id, index)
    if id == inventoryId and index == slotIndex then
        INPUT.Deselect(INPUT_MODULE.Module, COMPONENT_ROOT, SELECTION_SET, LOCAL_PLAYER)
    end
end

-- Drags are valid if the slot has something in it
function IsValidDrag()
    return slotContent ~= nil
end

-- Spawn and return a copy of this slot
function GetDragProxy()
    local dragProxy = World.SpawnAsset(DRAG_PROXY_TEMPLATE)
    local controllerRef = dragProxy:GetCustomProperty("Controller")
    local controller

    if controllerRef and controllerRef.isAssigned then
        controller = controllerRef:WaitForObject().context
        if controller then
            local amount = 0
            if slotContent then
                amount = slotContent[INVENTORY.Keys.Amount]
            end

            controller.Initialize(inventoryId, itemData, amount, iconCameraId)
        end
    end

    return dragProxy
end

-- A drop is valid if it can successfully transfer. The drop target ids are checked prior to this being called.
function IsValidDropTarget(dropTargetIds, draggedInventoryId, draggedSlotIndex)
    if not INVENTORY.CanTransferToInventory(LOCAL_PLAYER, draggedInventoryId, draggedSlotIndex, inventoryId, slotIndex) then
        return false
    end
    return true
end