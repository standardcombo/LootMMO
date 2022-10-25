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
    This script can be added to any Equipment to make that Equipment work with targets that have been registered to
    APIEquipment. These targets can be interacted with in ways specific to their needs without this script needing to
    know anything about them.
--]]

-- Internal Variables
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

if not COMPONENT_ROOT:IsA("Equipment") then
    warn(string.format("%s must be an Equipment", COMPONENT_ROOT.name))
    return
end

---@type APIEquipment
local EQUIPMENT = require(script:GetCustomProperty("APIEquipment"))
---@type APIDatabase
local DATABASE = require(script:GetCustomProperty("APIDatabase"))
---@type APIInventory
local INVENTORY = require(script:GetCustomProperty("APIInventory"))

local ABILITY = script:GetCustomProperty("Ability"):WaitForObject()
local SELECTED_OUTLINE = script:GetCustomProperty("OutlineObject"):WaitForObject()
local EMPTY_CORE_OBJECT_REFERENCE = script:GetCustomProperty("EmptyCoreObjectReference")

local TOOL_TYPE
local ACTION_SECONDS
local AUTO_REPEAT
local INTERACTION_MODULE
local INTERACTION_DISTANCE

local EQUIPMENT_ID = COMPONENT_ROOT:GetCustomProperty("EquipmentId")
if EQUIPMENT_ID and EQUIPMENT_ID ~= "" then
    if DATABASE.Equipment then
        local equipmentData = DATABASE.Equipment[EQUIPMENT_ID]
        if equipmentData then
            TOOL_TYPE = equipmentData.ToolType
            ACTION_SECONDS = equipmentData.ActionSeconds
            AUTO_REPEAT = equipmentData.AutoRepeat
            INTERACTION_DISTANCE = equipmentData.InteractionDistance

            if equipmentData.APIInteractionModule and equipmentData.APIInteractionModule ~= "" then
                INTERACTION_MODULE = require(equipmentData.APIInteractionModule)
            else
                warn(string.format("\"APIInteractionModule\" is required for Equipment id: %s. Please assign \"APILookInteractionModule\", \"APICameraDirectionInteractionModule\" or \"APIPointerInteractionModule\"", EQUIPMENT_ID))
                return
            end
        else
            warn(string.format("Could not find data in Database for Equipment id: %s. \"Database/Equipment/%s\" is missing", EQUIPMENT_ID, EQUIPMENT_ID))
            return
        end
    else
        warn(string.format("Could not find data in Database for Equipment id: %s. \"Database/Equipment\" is missing", EQUIPMENT_ID))
        return
    end
else
    TOOL_TYPE = COMPONENT_ROOT:GetCustomProperty("ToolType")
    ACTION_SECONDS = COMPONENT_ROOT:GetCustomProperty("ActionSeconds")
    AUTO_REPEAT = COMPONENT_ROOT:GetCustomProperty("AutoRepeat")
    INTERACTION_DISTANCE = COMPONENT_ROOT:GetCustomProperty("InteractionDistance")

    local interactionModule = COMPONENT_ROOT:GetCustomProperty("APIInteractionModule")
    if interactionModule and interactionModule ~= "" then
        INTERACTION_MODULE = require(interactionModule)
    else
        warn(string.format("\"APIInteractionModule\" is required for Equipment id: %s. Please assign \"APILookInteractionModule\", \"APICameraDirectionInteractionModule\" or \"APIPointerInteractionModule\"", EQUIPMENT_ID))
        return
    end
end

-- Constants
local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Private Variables
local currentEquipmentTarget
local equipmentSettings = {}
local visual
local executeTime
local bindingReleasedListener
local lastOutlinedObject
local outlineChannel = 1

function Initialize()
    if COMPONENT_ROOT.sourceTemplateId and INVENTORY.IsAnyInventoryRegistered(false) then
        -- Find the Item data associated with this equipment
        if DATABASE.Items then
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
                            IconAsset = nil,
                            IsKitbashed2DIcon = false,
                            Is3DIcon = false,
                            IsImageIcon = false,
                            CanEquip = true,
                            IsConsumableEquipment = false,
                            EquipmentTemplate = COMPONENT_ROOT.sourceTemplateId,
                            EquipmentVisualTemplate = nil
                        }
                    }
                }

                DATABASE.AppendData(data)
            end
        end
    end

    UpdateState()
end

function OnExecute(ability)
    if ability.owner ~= LOCAL_PLAYER then
        return
    end

    if not executeTime or time() - (executeTime + ACTION_SECONDS) < 0 then
        return
    end

    if currentEquipmentTarget then
        EQUIPMENT.EquipmentInteract(LOCAL_PLAYER, currentEquipmentTarget, TOOL_TYPE, equipmentSettings)
    end

    executeTime = nil
end

function Tick(deltaTime)
    if ABILITY.owner ~= LOCAL_PLAYER then
        return
    end

    local currentPhase = ABILITY:GetCurrentPhase()
    if executeTime and currentPhase == AbilityPhase.CAST and ACTION_SECONDS > 0 then
        if time() - (executeTime + ACTION_SECONDS) >= 0 then
            ABILITY:AdvancePhase()
        end
        return
    end

    currentEquipmentTarget, _ = EQUIPMENT.GetInteractionTarget(LOCAL_PLAYER, INTERACTION_MODULE, TOOL_TYPE, equipmentSettings)
    SetSelectionOutline(currentEquipmentTarget)

    if AUTO_REPEAT and currentEquipmentTarget then
        if LOCAL_PLAYER:IsBindingPressed(ABILITY.actionBinding) then
            if currentPhase == AbilityPhase.READY then
                ABILITY:Activate()
            end
        end
    end
end

function SpawnVisual()
    if Object.IsValid(visual) then
        visual:Destroy()
    end

    if DATABASE.Items then
        local itemData = DATABASE.Items[equipmentSettings.ItemId]
        if itemData and itemData.EquipmentVisualTemplate then
            visual = World.SpawnAsset(itemData.EquipmentVisualTemplate, { parent = script.parent })
        end
    end
end

function UpdateState()
    equipmentSettings = EQUIPMENT.GetEquipmentSettings(COMPONENT_ROOT, equipmentSettings)

    SpawnVisual()
end

function SetSelectionOutline(coreObject)
    if coreObject ~= lastOutlinedObject then
        lastOutlinedObject = coreObject
        SELECTED_OUTLINE:SetSmartProperty("Enabled", false)
        if Object.IsValid(coreObject) then
            SELECTED_OUTLINE:SetSmartProperty("Object To Outline", coreObject:GetReference())
            SELECTED_OUTLINE:SetSmartProperty("Outline Channel", outlineChannel)
            SELECTED_OUTLINE.visibility = Visibility.INHERIT

            outlineChannel = outlineChannel + 1
            if outlineChannel > 32 then
                outlineChannel = 1
            end
        else
            SELECTED_OUTLINE:SetSmartProperty("Object To Outline", EMPTY_CORE_OBJECT_REFERENCE)
            SELECTED_OUTLINE.visibility = Visibility.FORCE_OFF
        end
        SELECTED_OUTLINE:SetSmartProperty("Enabled", true)
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

function OnNetworkedPropertyChanged(coreObject, propertyName)
    if coreObject == COMPONENT_ROOT then
        UpdateState()
    end
end

function OnBindingReleased(player, binding)
    if player == LOCAL_PLAYER and Object.IsValid(ABILITY) and binding == ABILITY.actionBinding then
        ABILITY:Interrupt()
        executeTime = nil
    end
end

function OnDestroyed()
    if bindingReleasedListener then
        bindingReleasedListener:Disconnect()
        bindingReleasedListener = nil
    end
end

function OnCast()
    if not currentEquipmentTarget then
        ABILITY:Interrupt()
        executeTime = nil
    else
        executeTime = executeTime or time()
    end
end

ABILITY.castEvent:Connect(OnCast)
ABILITY.executeEvent:Connect(OnExecute)
COMPONENT_ROOT.customPropertyChangedEvent:Connect(OnNetworkedPropertyChanged)
COMPONENT_ROOT.destroyEvent:Connect(OnDestroyed)
bindingReleasedListener = LOCAL_PLAYER.bindingReleasedEvent:Connect(OnBindingReleased)

-- Wait for registration / data
Task.Wait()

Initialize()