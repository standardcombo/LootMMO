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

if not Environment.IsServer() then
    return
end

-- Internal custom properties
local COMPONENT_ROOT = script:FindAncestorByType('Equipment')
if not COMPONENT_ROOT:IsA('Equipment') then
    error(script.name .. " should be part of Equipment object hierarchy.")
end

---@type APIDatabase
local DATABASE = require(script:GetCustomProperty("APIDatabase"))
---@type APIInventory
local INVENTORY = require(script:GetCustomProperty("APIInventory"))
---@type APIEquipment
local EQUIPMENT = require(script:GetCustomProperty("APIEquipment"))

-- User Exposed Variables
local EQUIPMENT_STANCE = COMPONENT_ROOT:GetCustomProperty("EquipmentStance")

-- Internal variables
local originalStance = "unarmed_stance"

function Initialize()
    if COMPONENT_ROOT.sourceTemplateId and INVENTORY.IsAnyInventoryRegistered(false) then
        -- Find the Item data associated with this equipment
        local itemId
        local itemDatas = DATABASE.Items:Find(function(id, data)
            for key, value in pairs(data) do
                if key == "EquipmentTemplate" and DoesTemplateIdMatch(COMPONENT_ROOT.sourceTemplateId, value) then
                    return true
                end
            end
            return false
        end)

        for id, _ in pairs(itemDatas) do
            itemId = id
            break
        end

        -- Add this Tool to the Database if needed
        if not itemId then
            itemId = COMPONENT_ROOT.name
            local data = {
                Items = {
                    [itemId] = {
                        Name = COMPONENT_ROOT.name,
                        Description = nil,
                        IsInventory = false,
                        CanDrop = true,
                        DropTemplate = COMPONENT_ROOT.sourceTemplateId,
                        IconCameraId = "",
                        IconAsset = "",
                        IsKitbashed2DIcon = false,
                        Is3DIcon = false,
                        IsImageIcon = false,
                        CanEquip = true,
                        IsConsumableEquipment = false,
                        EquipmentTemplate = COMPONENT_ROOT.sourceTemplateId,
                        EquipmentVisualTemplate = ""
                    }
                }
            }

            DATABASE.AppendData(data)
            warn(string.format("Automatically added %s to the Items database. It is recommended to add an Item Data to the Database for this item to have access to more settings for it.", COMPONENT_ROOT.name))
        end
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

---Sets the Player stance and checks to see if this has been equipped from the world.
---@param equipment Equipment
---@param player Player
function OnEquipped(equipment, player)
    if EQUIPMENT_STANCE and EQUIPMENT_STANCE ~= "" then
        player.animationStance = EQUIPMENT_STANCE
    end

    -- Allow property to be set
    Task.Wait()

    if Object.IsValid(COMPONENT_ROOT) then
        local inventoryId = COMPONENT_ROOT:GetCustomProperty("InventoryId")
        local itemId = COMPONENT_ROOT:GetCustomProperty("ItemId")
        if not inventoryId or inventoryId == "" then
            if equipment.sourceTemplateId then
                Events.Broadcast(EQUIPMENT.Events.EquippedItemFromWorld, player, itemId, equipment)
            end
        end
    end
end

---Resets the Player stance and checks to see if this has been unequipped into the world.
---@param equipment table
---@param player table
function OnUnequipped(equipment, player)
    player.animationStance = originalStance

    local inventoryId = COMPONENT_ROOT:GetCustomProperty("InventoryId")
    if not inventoryId or inventoryId == "" then
        if equipment.sourceTemplateId then
            Events.Broadcast(EQUIPMENT.Events.UnequippedItemIntoWorld, player, equipment)
        end
    end
end

-- Initialize
COMPONENT_ROOT.equippedEvent:Connect(OnEquipped)
COMPONENT_ROOT.unequippedEvent:Connect(OnUnequipped)

-- Wait for registration / data
Task.Wait()
Task.Wait()

Initialize()