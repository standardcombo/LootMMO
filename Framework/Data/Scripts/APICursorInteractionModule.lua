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
    This Interaction Module handles mouse interactions on UI objects. Use APIPointerInteractionModule for world space
    objects.
--]]

if Environment.IsServer() then
    return
end

-- Internal Variables
---@type APIInteractionManager
local INTERACTION = require(script:GetCustomProperty("APIInteractionModule"))
---@type APIUILibrary
local UI_LIBRARY = require(script:GetCustomProperty("APIUILibrary"))

-- Private Variables
local targetLookup = {}
local overrideSettings

---@class APICursorInteractionModule
local API = {}

API.Module = script

---Registered targets will be checked each frame for cursor interactions.
---Targets will be unregistered automatically when they are destroyed.
---A target can be registered multiple times with different handlers to allow components to stack.
---The handlers can include any of the below callbacks:
--- - HoverBegin(position, normal)
--- - Hover(position, normal)
--- - HoverEnd(position, normal, wasDragging)
--- - PressBegin(binding, position, normal)
--- - PressEnd(binding, position, normal, wasDragging)
--- - DragOverBegin()
--- - DragOverEnd()
--- - DragBegin(position, normal)
--- - DragEnd(position, normal)
--- - Dropped(position, normal, ...)
--- - Selected()
--- - Deselected()
--- - SetData(component, ...)
---@param target CoreObject The object that owns the component being registered
---@param subTarget UIButton An optional alternate UIButton to use for interactions
---@param handler table A set of optional callbacks that will be run when specific input interactions occur
---@return boolean
function API.RegisterTarget(target, subTarget, handler)
    local button = ValidateAndGetButton(target, subTarget, handler)
    if button then
        if not targetLookup[target] then
            targetLookup[target] = {}
        end

        if not targetLookup[target][button] then
            local hoverBeginListener = button.hoveredEvent:Connect(HandleHoverBegin)
            local hoverEndListener = button.unhoveredEvent:Connect(HandleHoverEnd)
            local pressBeginListener = button.pressedEvent:Connect(HandlePressBegin)
            local pressEndListener = button.releasedEvent:Connect(HandlePressEnd)

            targetLookup[target][button] = {
                hoverBeginListener,
                hoverEndListener,
                pressBeginListener,
                pressEndListener
            }
        end

        return INTERACTION.RegisterTarget(API.Module, target, handler)
    end

    return false
end

---This will unregister a target and all of its input handlers.
---It can be called manually if needed but will normally be automatically called.
---@param target CoreObject The object that owns the component being registered
function API.UnregisterTarget(target)
    if targetLookup[target] then
        INTERACTION.UnregisterTarget(API.Module, target)

        for _, button in pairs(targetLookup[target]) do
            for _, listener in pairs(button) do
                listener:Disconnect()
            end
        end

        targetLookup[target] = nil
    end
end

---Registers a draggable target and handlers with this input module. The handlers can include any of the below callbacks:
--- - SetDragData(isValidDragFunction, getDragProxyFunction, ...)
--- - GetDragData()
--- - IsValidDrag()
--- - GetDragProxy()
---@param target CoreObject The object that owns the component being registered
---@param subTarget UIButton An optional alternate UIButton to use for interactions
---@param handler table A set of optional callbacks that will be run when specific input interactions occur
---@return boolean
function API.RegisterDraggable(target, subTarget, handler)
    if ValidateAndGetButton(target, subTarget, handler) then
        return INTERACTION.RegisterDraggable(API.Module, target, handler)
    end

    return false
end

---Unregisters a draggable and all of its input handlers with this input module.
---It can be called manually if needed but will normally be automatically called.
---@param target CoreObject The object that owns the component being unregistered
function API.UnregisterDraggable(target)
    INTERACTION.UnregisterDraggable(API.Module, target)
end

---Registers a drop target and handlers to use with this input module. The handlers can include any of the below callbacks:
--- - IsValidDropTarget(dropTargetIds, ...)
--- - SetDropTargetData(isValidDropTargetFunction, ...)
--- - GetDropTargetId()
--- - GetDropTargetData()
---@param target CoreObject The object that owns the component being registered
---@param subTarget UIButton An optional alternate UIButton to use for interactions
---@param handler table A set of optional callbacks that will be run when specific input interactions occur
---@return boolean
function API.RegisterDropTarget(target, subTarget, handler)
    if ValidateAndGetButton(target, subTarget, handler) then
        return INTERACTION.RegisterDropTarget(API.Module, target, handler)
    end

    return false
end

---Unregisters a drop target and all of its handlers with this input module.
---It can be called manually if needed but will normally be automatically called.
---@param target CoreObject The object that owns the component being unregistered
function API.UnregisterDropTarget(target)
    INTERACTION.UnregisterDropTarget(API.Module, target)
end

---This allows objects using this module to temporarily override settings.
---@param settings table<InteractionSetting, any>
function API.OverrideSettings(settings)
    overrideSettings = settings
end

---Clears any override settings if they exist.
function API.ClearOverrideSettings()
    overrideSettings = nil
end

---Begins dragging the current target.
---@param position Vector3 The input position the drag started at
---@param normal Vector3 The input normal at the start of the drag
---@param dropTargetId string An optional string to restrict which drop targets are valid for this drag
---@param resetOnDrop boolean If true, the dragged target will return to its initial position
---@param snapToInput boolean If true, the dragged target or proxy will snap to the input position
---@param snapOffset Vector3 An optional offset to apply if snapToInput is true
function API.BeginDrag(position, normal, dropTargetId, resetOnDrop, snapToInput, snapOffset)
    INTERACTION.BeginDrag(API.Module, position, normal, dropTargetId, resetOnDrop, snapToInput, snapOffset)
end

---Stops dragging the current target.
function API.EndDrag()
    INTERACTION.EndDrag(API.Module)
end

---Adds the target to the current selection set for a player.
---@param target CoreObject The object that owns the component being selected
---@param selectionSet string The selection set to use
---@param player Player The Player this selection should be tracked under
function API.Select(target, selectionSet, player)
    INTERACTION.Select(API.Module, target, selectionSet, player)
end

---Removes the target from the current selection set for a player.
---@param target CoreObject The object that owns the component being deselected
---@param selectionSet string The selection set to use
---@param player Player The Player whose selection set this should be removed from
function API.Deselect(target, selectionSet, player)
    INTERACTION.Deselect(API.Module, target, selectionSet, player)
end

---Returns true if the target is being dragged.
---@param target CoreObject The object that owns the component being checked
---@return boolean
function API.IsDragging(target)
    return INTERACTION.IsDragging(API.Module, target)
end

---Returns a table with drag information. This table contains the following information:
--- - IsDragging - True if a drag is currently happening
--- - DragTarget - The target currently being dragged
--- - DragData - Any drag data associated with the target (See SetDragData())
--- - DropTargetId - Any drop target id for a target underneath the dragged object
--- - DropTargetData - Any drop target data for a target underneath the dragged object (See SetDropTargetData())
--- - OriginalParent - The original parent of the dragged object
--- - StartPosition - The position of the object when the drag started
--- - StartRotation - The rotation of the object when the drag started
--- - InputOffset - The distance between the input and the object when the drag started
--- - ResetOnDrop - If true the object will reset its position and rotation when dropped
--- - ValidDropTargetIds - The valid drop target ids for this object
--- - SnapToInput - If true the object will move to the input when the drag starts
--- - SnapOffset - The offset the object will maintain from the input while being dragged
---@return table
function API.GetDragInfo()
    return INTERACTION.GetDragInfo(API.Module)
end

---Returns true if the target is in the selection set for a player.
---@param target CoreObject The object that owns the component being checked
---@param selectionSet string The selection set to use
---@param player Player The Player whose selection set should be checked
---@return boolean
function API.IsSelected(target, selectionSet, player)
    return INTERACTION.IsSelected(API.Module, target, selectionSet, player)
end

---Returns the selection set for a player.
---@param selectionSet string The selection set to use
---@param player Player The Player whose selection set should be returned
---@return table
function API.GetSelection(selectionSet, player)
    return INTERACTION.GetSelection(API.Module, selectionSet, player)
end

---Returns the current position for this Input Module.
---@return Vector3
function API.GetInputPosition()
    return Vector3.New(UI:GetCursorPosition(), 0)
end

---Returns the current potential targets or an empty table.
---This module does not work in the same way as APIPointerInteractionModule and APILookInteractionModule so it cannot
---track multiple potential targets.
---@return table
function API.GetPotentialTargets()
    return {}
end

---Returns a setting. Will use overridden settings if they are set.
---@param setting InteractionSetting
---@return any
function GetSetting(setting)
    if overrideSettings and overrideSettings[setting] then
        return overrideSettings[setting]
    end
    return INTERACTION.GetSetting(setting)
end

---Validates supplied parameters and returns the UIButton that will be used for interactions.
---@param target CoreObject The object that owns the component being validated
---@param subTarget UIButton An optional alternate UIButton to use for interactions
---@param handler table A set of optional callbacks
---@return boolean
function ValidateAndGetButton(target, subTarget, handler)
    if target == nil then
        warn(string.format("Nil targets cannot be registered to %s (%s)", API.Module.name, API.Module.id))
        return nil
    end

    if handler == nil then
        warn(string.format("Nil input handlers cannot be registered to %s (%s)", API.Module.name, API.Module.id))
        return nil
    end

    local button = subTarget
    if not button or not button:IsA("UIButton") then
        button = target:FindDescendantByType("UIButton")
    end

    if button == nil then
        warn(string.format("Targets that are not UIButtons or that do not contain child UIButtons cannot be registered to %s (%s)", API.Module.name, API.Module.id))
        return nil
    end

    return button
end

---Runs each time the APIInputManager updates. This is the core logic for the Cursor input module.
function OnUpdate()
    local currentTarget = INTERACTION.GetCurrentTarget(API.Module)
    local position = Vector3.New(UI:GetCursorPosition(), 0)

    if INTERACTION.IsHovered(API.Module, currentTarget) then
        INTERACTION.Hover(API.Module, currentTarget, position, nil)
    end

    if INTERACTION.IsDragging(API.Module) then
        local dragInfo = API.GetDragInfo()

        if dragInfo.SnapToInput then
            dragInfo.DragTarget.x = position.x + dragInfo.SnapOffset.x
            dragInfo.DragTarget.y = position.y + dragInfo.SnapOffset.y
        else
            dragInfo.DragTarget.x = position.x + dragInfo.InputOffset.x
            dragInfo.DragTarget.y = position.y + dragInfo.InputOffset.y
        end

        local foundTarget = false
        local lastDropTarget = INTERACTION.GetCurrentDropTarget(API.Module)
        for dropTarget, _ in pairs(INTERACTION.GetAllDropTargets(API.Module)) do
            if not foundTarget and UI_LIBRARY.IsCursorOver(dropTarget, false) then
                if dropTarget ~= lastDropTarget then
                    INTERACTION.BeginDragOver(API.Module, dropTarget)
                end
                foundTarget = true
            else
                if dropTarget == lastDropTarget then
                    INTERACTION.EndDragOver(API.Module)
                end
            end
        end
    end
end

---Runs each time a registered target button is hovered over.
---@param button UIButton
function HandleHoverBegin(button)
    -- Ignore this handler if dragging
    if API.IsDragging() then
        return
    end

    local target = INTERACTION.GetTarget(API.Module, button)
    if target and not INTERACTION.IsHovered(API.Module, target) then
        INTERACTION.BeginHover(API.Module, target, Vector3.New(UI:GetCursorPosition(), 0), nil)
    end
end

---Runs each time a registered target button stops being hovered over.
---@param button UIButton
function HandleHoverEnd(button)
    -- Ignore this handler if dragging
    if API.IsDragging() then
        return
    end

    local target = INTERACTION.GetTarget(API.Module, button)
    if target and INTERACTION.IsHovered(API.Module, target) then
        INTERACTION.EndHover(API.Module, target)
    end
end

---Runs each time a registered target button is pressed down.
---@param button UIButton
function HandlePressBegin(button)
    -- Ignore this handler if dragging
    if API.IsDragging() and not API.IsDragging(button) then
        return
    end

    local target = INTERACTION.GetTarget(API.Module, button)
    if not INTERACTION.IsPressed(API.Module, target) then
        INTERACTION.BeginPress(API.Module, target, "ability_primary")
    end
end

---Runs each time a registered target button is released.
---@param button UIButton
function HandlePressEnd(button)
    -- Ignore this handler if dragging
    if API.IsDragging() and not API.IsDragging(button) then
        return
    end

    local target = INTERACTION.GetTarget(API.Module, button)
    if INTERACTION.IsPressed(API.Module, target) then
        INTERACTION.EndPress(API.Module, target, "ability_primary", API.IsDragging(button))
    end
end

---Runs each time the player presses a binding. It is up to the components to determine if that binding is important.
---@param player Player
---@param binding string
function HandleBindingPressed(player, binding)
    local currentTarget = INTERACTION.GetCurrentTarget(API.Module)
    if currentTarget and not INTERACTION.IsPressed(API.Module, currentTarget) then
        INTERACTION.BeginPress(API.Module, currentTarget, binding)
    end
end

---Runs each time the player releases a binding. It is up to the components to determine if that binding is important.
---@param player Player
---@param binding string
function HandleBindingReleased(player, binding)
    local currentTarget = INTERACTION.GetCurrentTarget(API.Module)
    if currentTarget and INTERACTION.IsPressed(API.Module, currentTarget) then
        INTERACTION.EndPress(API.Module, currentTarget, binding)
    end
end

Game.GetLocalPlayer().bindingPressedEvent:Connect(HandleBindingPressed)
Game.GetLocalPlayer().bindingReleasedEvent:Connect(HandleBindingReleased)

local functionTable = {
    Update = OnUpdate
}

INTERACTION.RegisterModule(API.Module, functionTable)

return API