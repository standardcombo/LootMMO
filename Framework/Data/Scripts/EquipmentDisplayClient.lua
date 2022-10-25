--[[
Copyright 2019 Manticore Games, Inc. 

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

-- Internal custom properties --
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local CANVAS = script:GetCustomProperty("Canvas"):WaitForObject()
local ICON = script:GetCustomProperty("Icon"):WaitForObject()
local COUNTDOWN_TEXT = script:GetCustomProperty("CountdownText"):WaitForObject()
local BINDING_TEXT = script:GetCustomProperty("BindingText"):WaitForObject()
local NAME_TEXT = script:GetCustomProperty("NameText"):WaitForObject()
local PROGRESS_INDICATOR = script:GetCustomProperty("ProgressIndicator"):WaitForObject()
local RIGHT_SHADOW = script:GetCustomProperty("RightShadow"):WaitForObject()
local LEFT_SHADOW = script:GetCustomProperty("LeftShadow"):WaitForObject()
local ROTATION_INSTRUCTIONS_TEXT = script:GetCustomProperty("RotationInstructionsText"):WaitForObject()

-- Required APIs
---@type APIEquipment
local EQUIPMENT = require(script:GetCustomProperty("APIEquipment"))
---@type APIIconManager
local ICON_MANAGER = require(script:GetCustomProperty("APIIconManager"))
---@type APIDatabase
local DATABASE = require(script:GetCustomProperty("APIDatabase"))

-- User Exposed Properties
local ICON_CAMERA_ID = COMPONENT_ROOT:GetCustomProperty("IconCameraId")
local ICON_ASSET = COMPONENT_ROOT:GetCustomProperty("IconAsset")
local IS_2D_ICON = COMPONENT_ROOT:GetCustomProperty("IsKitbashed2DIcon")
local IS_3D_ICON = COMPONENT_ROOT:GetCustomProperty("Is3DIcon")
local IS_IMAGE_ICON = COMPONENT_ROOT:GetCustomProperty("IsImageIcon")
local BINDING = COMPONENT_ROOT:GetCustomProperty("Binding")
local BINDING_HINT = COMPONENT_ROOT:GetCustomProperty("BindingHint")
local SHOW_ABILITY_NAME = COMPONENT_ROOT:GetCustomProperty("ShowAbilityName")
local HIDE_WHEN_DISABLED = COMPONENT_ROOT:GetCustomProperty("HideWhenDisabled")
local SHOW_ROTATION_UI = COMPONENT_ROOT:GetCustomProperty("ShowRotationUI")
local ROTATION_INSTRUCTIONS = COMPONENT_ROOT:GetCustomProperty("RotationInstructions")

-- Constants
local LOCAL_PLAYER = Game.GetLocalPlayer()
local ICON_COLOR = ICON:GetColor()

-- Private Variables
local castListener = nil
local executeListener = nil
local currentAbility = nil
local currentEquipment = nil
local executeTime
local actionDuration = 0.0
local executeDuration = 0.0
local recoveryDuration = 0.0
local cooldownDuration = 0.0

-- <Ability> GetLocalPlayerAbilityWithBinding()
-- Finds the first ability that matches the given binding
function GetLocalPlayerAbilityWithBinding()
    local abilities = LOCAL_PLAYER:GetAbilities()
    local potentialAbilities = {}
    for _, ability in pairs(abilities) do
        if ability.actionBinding == BINDING then
            if ability == EQUIPMENT.GetDefaultTool(LOCAL_PLAYER) then
                table.insert(potentialAbilities, ability)
            else
                table.insert(potentialAbilities, 1, ability)
            end
        end
    end

    if #potentialAbilities > 0 then
        return potentialAbilities[1]
    end

    return nil
end

-- nil UpdateCurrentAbility(Ability)
-- Updates the state when the ability matching the given binding changes
function UpdateCurrentAbility()
    local newAbility = GetLocalPlayerAbilityWithBinding()

    if not Object.IsValid(newAbility) or currentAbility == newAbility then
        return
    end

    currentAbility = newAbility

    if castListener then
        castListener:Disconnect()
    end

    if executeListener then
        executeListener:Disconnect()
    end

    if currentAbility then
        Task.Wait()

        if not Object.IsValid(currentAbility) then return end

        currentEquipment = currentAbility:FindAncestorByType("Equipment")
        if not Object.IsValid(currentEquipment) then
            return
        end

        local equipmentId = currentEquipment:GetCustomProperty("EquipmentId")
        if equipmentId and DATABASE.Equipment and DATABASE.Equipment[equipmentId] then
            local equipmentData = DATABASE.Equipment[equipmentId]
            actionDuration = equipmentData.ActionSeconds or 0
        else
            actionDuration = currentEquipment:GetCustomProperty("ActionSeconds") or 0
        end

        castListener = currentAbility.castEvent:Connect(OnCast)
        executeListener = currentAbility.executeEvent:Connect(OnExecute)

        CANVAS.visibility = Visibility.INHERIT

        if IS_2D_ICON then
            ICON:SetImage(nil)
            ICON:SetColor(Color.New(0, 0, 0, 0))
            World.SpawnAsset(ICON_ASSET, { parent = ICON })
        elseif IS_3D_ICON then
            ICON_MANAGER.SetIcon(ICON, ICON_CAMERA_ID, ICON_ASSET, CameraCaptureResolution.SMALL)
        elseif IS_IMAGE_ICON then
            ICON:SetImage(ICON_ASSET)
        else
            ICON.visibility = Visibility.FORCE_OFF
        end

        NAME_TEXT.text = currentAbility.name
        executeDuration = currentAbility.executePhaseSettings.duration
        recoveryDuration = currentAbility.recoveryPhaseSettings.duration
        cooldownDuration = currentAbility.cooldownPhaseSettings.duration
    else
        CANVAS.visibility = Visibility.FORCE_OFF
    end
end

function UpdateRotationUI()
    if SHOW_ROTATION_UI then
        if Object.IsValid(currentEquipment) then
            local placeableId = currentEquipment:GetCustomProperty("ItemId")
            if DATABASE.Placeables and placeableId and placeableId ~= "" then
                local placeableData = DATABASE.Placeables[placeableId]
                if placeableData and placeableData.CanRotate then
                    ROTATION_INSTRUCTIONS_TEXT.visibility = Visibility.INHERIT
                else
                    ROTATION_INSTRUCTIONS_TEXT.visibility = Visibility.FORCE_OFF
                end
            end
        else
            ROTATION_INSTRUCTIONS_TEXT.visibility = Visibility.FORCE_OFF
        end
    end
end

-- nil Tick(float)
-- Checks for changes to the players abiltiies, or icons on those abilities
function Tick(deltaTime)
    UpdateCurrentAbility()

    if Object.IsValid(currentAbility) then
        UpdateRotationUI()

        local currentPhase = currentAbility:GetCurrentPhase()
        local phaseTime = currentAbility:GetPhaseTimeRemaining()

        if HIDE_WHEN_DISABLED then
            if currentAbility.isEnabled then
                CANVAS.visibility = Visibility.INHERIT
            else
                CANVAS.visibility = Visibility.FORCE_OFF
            end
        else
            if currentAbility.isEnabled then
                ICON:SetColor(ICON_COLOR)
            else
                local newIconColor = Color.New(ICON_COLOR)
                newIconColor.a = newIconColor.a / 5.0
                ICON:SetColor(newIconColor)
            end
        end

        if currentPhase == AbilityPhase.READY then
            COUNTDOWN_TEXT.visibility = Visibility.FORCE_OFF
            PROGRESS_INDICATOR.visibility = Visibility.FORCE_OFF

            executeTime = nil
        else
            COUNTDOWN_TEXT.visibility = Visibility.INHERIT
            PROGRESS_INDICATOR.visibility = Visibility.INHERIT

            -- For a player, recovery, cooldown and execute phases all constitute an ability's cooldown
            local playerCooldownRemaining = phaseTime
            local totalPlayerCooldown

            if executeTime and actionDuration > 0 then
                playerCooldownRemaining = (executeTime + actionDuration) - time()
                totalPlayerCooldown = actionDuration
            else
                if currentPhase ~= AbilityPhase.COOLDOWN then   -- Execute or recovery
                    playerCooldownRemaining = playerCooldownRemaining + cooldownDuration
                end

                if currentPhase == AbilityPhase.EXECUTE then
                    playerCooldownRemaining = playerCooldownRemaining + recoveryDuration
                end

                totalPlayerCooldown = executeDuration + recoveryDuration + cooldownDuration
            end

            COUNTDOWN_TEXT.text = string.format("%.1f", playerCooldownRemaining)

            -- Update the shadow
            if totalPlayerCooldown > 0.3 then
                local shadowAngle = CoreMath.Clamp(1.0 - playerCooldownRemaining / totalPlayerCooldown, 0.0, 1.0) * 360.0

                if shadowAngle <= 180.0 then
                    LEFT_SHADOW.rotationAngle = 0.0
                    RIGHT_SHADOW.visibility = Visibility.INHERIT
                    RIGHT_SHADOW.rotationAngle = shadowAngle
                else
                    LEFT_SHADOW.rotationAngle = shadowAngle - 180.0
                    RIGHT_SHADOW.visibility = Visibility.FORCE_OFF
                end
            end
        end
    end
end

function OnCast(ability)
    executeTime = executeTime or time()
end

function OnExecute(ability)
    if not executeTime or time() - (executeTime + actionDuration) < 0 then
        return
    end
    executeTime = nil
end

-- Initialize
if not SHOW_ABILITY_NAME then
    NAME_TEXT.visibility = Visibility.FORCE_OFF
end

CANVAS.visibility = Visibility.FORCE_OFF
BINDING_TEXT.text = BINDING_HINT

ROTATION_INSTRUCTIONS_TEXT.visibility = Visibility.FORCE_OFF
ROTATION_INSTRUCTIONS_TEXT.text = ROTATION_INSTRUCTIONS

script.destroyEvent:Connect(function()
    if castListener then
        castListener:Disconnect()
        castListener = nil
    end
    if executeListener then
        executeListener:Disconnect()
        executeListener = nil
    end
end)