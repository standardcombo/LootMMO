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

    This script also allows Equipment to place and remove Placeables.
--]]

-- Internal Variables
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

---@type APIEquipment
local EQUIPMENT = require(script:GetCustomProperty("APIEquipment"))
---@type APIDatabase
local DATABASE = require(script:GetCustomProperty("APIDatabase"))

local ADVANCED_MODULE = nil
if script:GetCustomProperty("EquipmentModule") then
    ADVANCED_MODULE = require(script:GetCustomProperty("EquipmentModule")).New()
end

local ABILITY = script:GetCustomProperty("Ability"):WaitForObject()
local SELECTED_OUTLINE = script:GetCustomProperty("OutlineObject"):WaitForObject()
local EMPTY_CORE_OBJECT_REFERENCE = script:GetCustomProperty("EmptyCoreObjectReference")

-- Support both Database and embedded data setup
local TOOL_TYPE
local ACTION_SECONDS
local AUTO_REPEAT
local INTERACTION_MODULE

local EQUIPMENT_ID = COMPONENT_ROOT:GetCustomProperty("EquipmentId")
if EQUIPMENT_ID and EQUIPMENT_ID ~= "" then
    if DATABASE.Equipment then
        local equipmentData = DATABASE.Equipment[EQUIPMENT_ID]
        if equipmentData then
            TOOL_TYPE = equipmentData.ToolType
            ACTION_SECONDS = equipmentData.ActionSeconds or 0
            AUTO_REPEAT = equipmentData.AutoRepeat or true
            if equipmentData.APIInteractionModule and equipmentData.APIInteractionModule ~= "" then
                INTERACTION_MODULE = require(equipmentData.APIInteractionModule)
            else
                warn(string.format("\"APIInteractionModule\" is required for Equipment id: %s. Please assign \"APILookInteractionModule\" or \"APIPointerInteractionModule\"", EQUIPMENT_ID))
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
    ACTION_SECONDS = COMPONENT_ROOT:GetCustomProperty("ActionSeconds") or 0
    AUTO_REPEAT = COMPONENT_ROOT:GetCustomProperty("AutoRepeat") or true
    local interactionModule = COMPONENT_ROOT:GetCustomProperty("APIInteractionModule")
    if interactionModule and interactionModule ~= "" then
        INTERACTION_MODULE = require(interactionModule)
    else
        warn(string.format("\"APIInteractionModule\" is required for Equipment id: %s. Please assign \"APILookInteractionModule\" or \"APIPointerInteractionModule\"", EQUIPMENT_ID))
        return
    end
end

-- Constants
local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Private Variables
local currentEquipmentTarget
local interactionError
local equipmentSettings = {}
local visual
local executeTime
local bindingReleasedListener
local lastOutlinedObject
local outlineChannel = 1

function OnExecute(ability)
    if ability.owner ~= LOCAL_PLAYER then
        return
    end

    executeTime = executeTime or time()

    if time() - (executeTime + ACTION_SECONDS) < 0 then
        return
    end

    local success
    if currentEquipmentTarget and EQUIPMENT.CanEquipmentInteract(LOCAL_PLAYER, currentEquipmentTarget, TOOL_TYPE, equipmentSettings) then
        success, interactionError = EQUIPMENT.EquipmentInteract(LOCAL_PLAYER, currentEquipmentTarget, TOOL_TYPE, equipmentSettings)
    else
        if ADVANCED_MODULE then
            success, interactionError = ADVANCED_MODULE.Execute()
        end
    end

    if not success and interactionError then
        Events.Broadcast("Error", interactionError)
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

    local targetStatic
    currentEquipmentTarget, targetStatic, interactionError = EQUIPMENT.GetInteractionTarget(LOCAL_PLAYER, INTERACTION_MODULE, TOOL_TYPE, equipmentSettings)

    if not currentEquipmentTarget or #currentEquipmentTarget:FindDescendantsByType("StaticMesh") > 0 then
        SetSelectionOutline(currentEquipmentTarget)
    else
        SetSelectionOutline(targetStatic)
    end

    if currentPhase == AbilityPhase.CAST then
        return
    end

    if AUTO_REPEAT then
        if LOCAL_PLAYER:IsBindingPressed(ABILITY.actionBinding) then
            if currentPhase == AbilityPhase.READY then
                ABILITY:Activate()
            end
        end
    end
end

function UpdateState()
    equipmentSettings = EQUIPMENT.GetEquipmentSettings(COMPONENT_ROOT, equipmentSettings)

    if ADVANCED_MODULE then
        ADVANCED_MODULE.UpdateState()
    end

    SpawnVisual()
end

function SpawnVisual()
    if Object.IsValid(visual) then
        visual:Destroy()
    end

    local itemData = DATABASE.Items[equipmentSettings.ItemId]
    if itemData and itemData.EquipmentVisualTemplate then
        visual = World.SpawnAsset(itemData.EquipmentVisualTemplate, { parent = script.parent })
    end
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

function OnNetworkedPropertyChanged(coreObject, propertyName)
    if coreObject == COMPONENT_ROOT then
        UpdateState()
    end
end

function OnDestroyed()
    if bindingReleasedListener then
        bindingReleasedListener:Disconnect()
        bindingReleasedListener = nil
    end
    ADVANCED_MODULE.OnDestroy()
end

function OnBindingReleased(player, binding)
    if player == LOCAL_PLAYER then
        if Object.IsValid(ABILITY) and binding == ABILITY.actionBinding then
            executeTime = nil
        end
        if ADVANCED_MODULE then
            ADVANCED_MODULE.OnBindingReleased(player, binding)
        end
    end
end

Task.Wait()

ABILITY.executeEvent:Connect(OnExecute)
COMPONENT_ROOT.customPropertyChangedEvent:Connect(OnNetworkedPropertyChanged)
COMPONENT_ROOT.destroyEvent:Connect(OnDestroyed)
bindingReleasedListener = LOCAL_PLAYER.bindingReleasedEvent:Connect(OnBindingReleased)

if ADVANCED_MODULE then
    ADVANCED_MODULE.Setup(COMPONENT_ROOT, equipmentSettings)
    ADVANCED_MODULE.Activate()
end

UpdateState()