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
    This is the core of the Modular Interaction System. It collects and updates the various Interaction Modules and acts
    as a central dispatcher for all Interaction callbacks. This setup allows Interaction Modules to be very small and
    only focus on the Interaction type they are meant for.

    Each Interaction Module can have one active target at a time.
--]]

if Environment.IsServer() then
    return
end

-- Internal Valriables
local DEFAULT_DRAG_UI_CONTAINER = script:GetCustomProperty("DefaultDragUIContainer")
local MOUSE_BLOCKER = script:GetCustomProperty("MouseBlocker")

-- Private variables
local updateTask
local modules = {}
local settings = {}
local dragContainer
local spawnedDragContainer = false
local mouseBlocker

---@class APIInteractionManager
local API = {}

---@class InteractionSetting
API.Setting = {
    DragUIContainer = 1,
    LookDistance = 2,
    TriggerLocally = 3,
    ShowDebug = 4,
    LookSize = 5,
    CameraDistance = 6,
    CameraSize = 7,
    HitResultsPredicate = 8
}

local INTERACTION_TAG = "ITR_"

API.Events = {
    PostModuleUpdate = INTERACTION_TAG .. "PostUpdate",
}

-- Default settings
settings[API.Setting.DragUIContainer] = DEFAULT_DRAG_UI_CONTAINER
settings[API.Setting.LookDistance] = 2000
settings[API.Setting.LookSize] = 50
settings[API.Setting.TriggerLocally] = true
settings[API.Setting.CameraDistance] = 2000
settings[API.Setting.CameraSize] = 50
settings[API.Setting.ShowDebug] = false
settings[API.Setting.HitResultsPredicate] = nil

---Registers an input module with the APIInputManager
---@param module CoreObject
---@param functionTable table
function API.RegisterModule(module, functionTable)
    modules[module] = {
        Functions = functionTable,
        Targets = {},
        Draggables = {},
        Selectables = {},
        DropTargets = {},
        CurrentTarget = nil,
        CurrentDropTarget = nil,
        Selection = {},
        DragInfo = {
            IsDragging = false,
            DragTarget = nil,
            DragData = nil,
            DropTargetId = nil,
            DropTargetData = nil,
            OriginalParent = nil,
            StartPosition = nil,
            StartRotation = nil,
            InputOffset = nil,
            ResetOnDrop = false,
            ValidDropTargetIds = {},
            SnapToInput = false,
            SnapOffset = nil
        }
    }

    -- Start an update task if needed
    if not updateTask then
        updateTask = Task.Spawn(Update)
    end
end

---Overrides existing or default settings with new settings. This will fully replace all settings.
---@param newSettings table<InteractionSetting, any>
function API.RegisterSettings(newSettings)
    settings = newSettings
    SetupDragContainer()
end

--- Gets a specific setting.
---@param setting InteractionSetting
---@return any
function API.GetSetting(setting)
    return settings[setting]
end

---Registers a target and handlers to a specific input module. A target can be registered multiple times with different 
---sets of handlers. This allows a single target to have multiple components reacting to input. The handlers can include 
---any of the below callbacks:
--- - HoverBegin(position, normal)
--- - Hover(position, normal)
--- - HoverEnd(position, normal, wasDragging)
--- - PressBegin(binding, position, normal)
--- - PressEnd(binding, position, normal, wasDragging)
--- - DragOverBegin()
--- - DragOverEnd()
--- - DragBegin(position, normal)
--- - DragEnd(position, normal)
--- - Dropped(position, normal, dropTargetId, ...)
--- - Selected()
--- - Deselected()
--- - SetData(component, ...)
---@param module CoreObject The module this target should be registered under, this is usually the module script itself
---@param target CoreObject The target that these input handlers will affect
---@param handlers table A set of optional callbacks that get called when specific input interactions occur
---@return boolean
function API.RegisterTarget(module, target, handlers)
    -- Support multiple handlers on a single target
    if modules[module].Targets[target] then 
        table.insert(modules[module].Targets[target].InputHandlers, handlers)
    else
        modules[module].Targets[target] = {
            InputHandlers = { handlers },
            Hovered = false,
            Pressed = false,
            LastPosition = nil,
            LastNormal = nil,
            LastBinding = nil
        }
    end

    return true
end

---Removes a target and all of its handlers from an input module.
---@param module CoreObject The module this target should be unregistered from, this is usually the module script itself
---@param target CoreObject The target that should be unregistered
function API.UnregisterTarget(module, target)
    if API.GetCurrentTarget(module) == target then
        -- Cancel a drag if needed
        if API.IsDragging(module, target) then
            API.EndDrag(module, true)
        end

        ClearCurrentTarget(module, false)
    end

    if modules[module].Targets[target] then
        modules[module].Targets[target] = nil
    end
end

---Registers a target and handlers to a module as a draggable object. Only one handler can be registered to a target and 
---calling this multiple times will overwrite the previous handlers. The handlers can include any of the below callbacks:
--- - SetDragData(isValidDragFunction, getDragProxyFunction, ...)
--- - GetDragData()
--- - IsValidDrag()
--- - GetDragProxy()
---@param module CoreObject The module this target should be registered under, this is usually the module script itself
---@param target CoreObject The target that these input handlers will affect
---@param handlers table A set of optional callbacks that get called when specific input interactions occur
---@return boolean
function API.RegisterDraggable(module, target, handlers)
    if modules[module].Draggables[target] then 
        warn(string.format("Cannot register multiple draggables to a single target: %s, module: %s", target, module.name))
        return false
    end
    
    modules[module].Draggables[target] = {
        InputHandler = handlers
    }

    return true
end

---Removes draggable handlers from a target in an input module.
---@param module CoreObject The module this target should be unregistered from, this is usually the module script itself
---@param target CoreObject The target that should be unregistered
function API.UnregisterDraggable(module, target)
    if modules[module].Draggables[target] then
        modules[module].Draggables[target] = nil
    end
end

---Registers a target and handlers to a module as a drop target. Only one handler can be registered to a target and 
---calling this multiple times will overwrite the previous handlers. The handlers can include any of the below callbacks:
--- - IsValidDropTarget(dropTargetIds, ...)
--- - SetDropTargetData(isValidDropTargetFunction, ...)
--- - GetDropTargetData
---@param module CoreObject The module this target should be registered under, this is usually the module script itself
---@param target CoreObject The target that these input handlers will affect
---@param handlers table A set of optional callbacks that get called when specific input interactions occur
---@return boolean
function API.RegisterDropTarget(module, target, handlers)
    -- Support a single handler on a target
    if modules[module].DropTargets[target] then 
        warn(string.format("Cannot register multiple drop targets to a single target: %s, module: %s", target, module.name))
        return false
    end

    modules[module].DropTargets[target] = {
        InputHandler = handlers
    }

    return true
end

---Removes drop target handlers from a target in an input module.
---@param module CoreObject The module this target should be unregistered from, this is usually the module script itself
---@param target CoreObject The target that should be unregistered
function API.UnregisterDropTarget(module, target)
    if modules[module].DropTargets[target] then
        modules[module].DropTargets[target] = nil
    end
end

---Calls API.BeginHover on all modules with the target registered.
---@param target CoreObject The target to force a begin hover interaction on
---@param position Vector3 The position of the hover
---@param normal Vector3 The normal of the hover
function API.ForceBeginHover(target, position, normal)
    for module, _ in pairs(modules) do
        if modules[module].Targets[target] then
            API.BeginHover(module, target, position, normal)
        end
    end
end

---Begins hovering on a target in an input module. This will set the input modules current target.
---@param module CoreObject The module containing the target, this is usually the module script itself
---@param target CoreObject The target to begin the hover on
---@param position Vector3 The input position of the hover
---@param normal Vector3 The input normal of the hover
function API.BeginHover(module, target, position, normal)
    if not modules[module].Targets[target] then
        warn(string.format("Attempted to call BeginHover on an invalid target: %s, module: %s", target, module.name))
        return
    end

    modules[module].CurrentTarget = target

    local targetData = modules[module].Targets[target]
    targetData.Hovered = true
    targetData.LastPosition = position
    targetData.LastNormal = normal

    for _, handler in ipairs(targetData.InputHandlers) do
        if handler.HoverBegin then
            handler.HoverBegin(position, normal)
        end
    end
end

---This should be called by an input module for every frame a target is actively being hovered.
---@param module CoreObject The module containing the target, this is usually the module script itself
---@param target CoreObject The target to hover on
---@param position Vector3 The input position of the hover
---@param normal Vector3 The input normal of the hover
function API.Hover(module, target, position, normal)
    if not modules[module].Targets[target] then
        warn(string.format("Attempted to call Hover on an invalid target: %s, module: %s", target, module.name))
        return
    end

    local targetData = modules[module].Targets[target]
    targetData.LastPosition = position
    targetData.LastNormal = normal

    for _, handler in ipairs(targetData.InputHandlers) do
        if handler.Hover then
            handler.Hover(position, normal)
        end
    end
    
    if API.GetSetting(API.Setting.ShowDebug) and position and normal then
        CoreDebug.DrawSphere(position, 15, { thickness = 2, color = Color.BLUE })
        CoreDebug.DrawLine(position, position + normal * 250, { thickness = 2, color = Color.BLUE })
    end
end

---Calls API.EndHover on all modules with the target registered.
---@param target CoreObject The target to end the hover on
function API.ForceEndHover(target)
    for module, _ in pairs(modules) do
        if modules[module].Targets[target] then
            API.EndHover(module, target, false)
        end
    end
end

---Ends a hover on a target in an input module.
---@param module CoreObject The module containing the target, this is usually the module script itself
---@param target CoreObject The target to end the hover on
---@param wasDragging boolean True if the target was being dragged when the hover ended
function API.EndHover(module, target, wasDragging)
    if not modules[module].Targets[target] then
        warn(string.format("Attempted to call EndHover on an invalid target: %s, module: %s", target, module.name))
        return
    end

    ClearCurrentTarget(module, wasDragging)
end

---Begins a press on a target in an input module.
---@param module CoreObject The module containing the target, this is usually the module script itself
---@param target CoreObject The target to begin the press on
---@param binding string The binding to use when beginning the press
function API.BeginPress(module, target, binding)
    if not modules[module].Targets[target] then
        warn(string.format("Attempted to call BeginPress on an invalid target: %s, module: %s", target, module.name))
        return
    end

    local targetData = modules[module].Targets[target]
    targetData.Pressed = true
    targetData.LastBinding = binding

    for _, handler in ipairs(targetData.InputHandlers) do
        if handler.PressBegin then
            handler.PressBegin(binding, targetData.LastPosition, targetData.LastNormal)
        end
    end
end

---Ends a press on a target in an input module.
---@param module CoreObject The module containing the target, this is usually the module script itself
---@param target CoreObject The target to end the press on
---@param binding string The binding to use when ending the press
---@param wasDragging boolean True if the target was being dragged when the press ended
function API.EndPress(module, target, binding, wasDragging)
    if not modules[module].Targets[target] then
        warn(string.format("Attempted to call EndPress on an invalid target: %s, module: %s", target, module.name))
        return
    end

    local targetData = modules[module].Targets[target]
    targetData.Pressed = false
    targetData.LastBinding = nil

    for _, handler in ipairs(targetData.InputHandlers) do
        if handler.PressEnd then
            handler.PressEnd(binding, targetData.LastPosition, targetData.LastNormal, wasDragging)
        end
    end
end

---Sets data on a specific component or all components if the component parameter is nil. Only some component types make use of data.
---@param target CoreObject The target to set data on
---@param component CoreObject The optional specific component to set data on
function API.SetData(target, component, ...)
    for _, moduleData in pairs(modules) do
        if moduleData.Targets[target] then
            for _, handler in ipairs(moduleData.Targets[target].InputHandlers) do
                if handler.SetData then
                    handler.SetData(component, ...)
                end
            end
        end
    end
end

---Sets drag data on a draggable if one has been registered for the target.
---@param target CoreObject The target to set drag data on
---@param isValidDragFunction function will be called before starting a drag to ensure it is valid
---@param getDragProxyFunction function will be called to generate a custom object to drag instead of the target
function API.SetDragData(target, isValidDragFunction, getDragProxyFunction, ...)
    for _, moduleData in pairs(modules) do
        if moduleData.Draggables[target] then
            if moduleData.Draggables[target].InputHandler.SetDragData then
                moduleData.Draggables[target].InputHandler.SetDragData(isValidDragFunction, getDragProxyFunction, ...)
            end
        end
    end
end

---Sets data on a drop target if one has been registered for the target.
---@param target CoreObject The drop target to set data on
---@param isValidDropTargetFunction function will be called when another object is dragged over the target
function API.SetDropTargetData(target, isValidDropTargetFunction, ...)
    for _, moduleData in pairs(modules) do
        if moduleData.DropTargets[target] then
            if moduleData.DropTargets[target].InputHandler.SetDropTargetData then
                moduleData.DropTargets[target].InputHandler.SetDropTargetData(isValidDropTargetFunction, ...)
            end
        end
    end
end

---Begins dragging a target. This will start dragging the current target for that input module.
---@param module CoreObject The module containing the target, this is usually the module script itself
---@param position Vector3 The input position the drag started at
---@param normal Vector3 The input normal at the start of the drag
---@param dropTargetIds string[] An optional table of strings to restrict which drop targets are valid for this drag
---@param resetOnDrop boolean If true, the dragged target will return to its initial position
---@param snapToInput boolean If true, the dragged target or proxy will snap to the input position
---@param snapOffset Vector3 An optional offset to apply if snapToInput is true
function API.BeginDrag(module, position, normal, dropTargetIds, resetOnDrop, snapToInput, snapOffset)
    local currentTarget = API.GetCurrentTarget(module)
    local dragInfo = modules[module].DragInfo

    if currentTarget and not dragInfo.IsDragging then
        local targetData = modules[module].Targets[currentTarget]
        local draggable = modules[module].Draggables[currentTarget]

        -- Validate drag if possible
        if draggable.InputHandler.IsValidDrag then
            if not draggable.InputHandler.IsValidDrag() then
                return
            end
        end

        -- Spawn a drag proxy if possible
        local usedProxy = false
        if draggable.InputHandler.GetDragProxy then
            local dragTarget = draggable.InputHandler.GetDragProxy()
            if dragTarget then
                dragInfo.DragTarget = dragTarget
                dragInfo.OriginalParent = nil
                usedProxy = true
            else
                dragInfo.DragTarget = currentTarget
                dragInfo.OriginalParent = currentTarget.parent
            end
        else
            dragInfo.DragTarget = currentTarget
            dragInfo.OriginalParent = currentTarget.parent
        end

        dragInfo.IsDragging = true
        dragInfo.ValidDropTargetIds = dropTargetIds
        dragInfo.ResetOnDrop = resetOnDrop
        dragInfo.SnapToInput = snapToInput
        dragInfo.SnapOffset = snapOffset

        if draggable.InputHandler.GetDragData then
            dragInfo.DragData = draggable.InputHandler.GetDragData()
        end

        if currentTarget:IsA("UIControl") then
            dragInfo.StartPosition = Vector3.New(currentTarget.x, currentTarget.y, 0)
            dragInfo.StartRotation = currentTarget.rotationAngle
            dragInfo.InputOffset = dragInfo.StartPosition - position

            -- The proxy UI needs to be inside a container
            if usedProxy then
                dragInfo.DragTarget.parent = dragContainer
            end
        else
            dragInfo.StartPosition = currentTarget:GetWorldPosition()
            dragInfo.StartRotation = currentTarget:GetWorldRotation()

            -- TODO
        end

        for _, handler in ipairs(targetData.InputHandlers) do
            if handler.DragBegin then
                handler.DragBegin(position, normal)
            end
        end
    end
end

---Stops dragging the input modules current target.
---@param module CoreObject The module containing the target, this is usually the module script itself
---@param wasCanceled boolean True if the drag was cancelled and handlers should not be called
function API.EndDrag(module, wasCanceled)
    wasCanceled = wasCanceled or false

    local dragInfo = modules[module].DragInfo

    if dragInfo.IsDragging then
        local currentTarget = API.GetCurrentTarget(module)
        local targetData = modules[module].Targets[currentTarget]

        -- Drop the object while we still have data for it
        if not wasCanceled then
            for _, handler in ipairs(targetData.InputHandlers) do
                if handler.Dropped then
                    -- Send along any data we have on the drop target
                    if dragInfo.DropTargetData then
                        handler.Dropped(targetData.LastPosition, targetData.LastNormal, dragInfo.DropTargetId, table.unpack(dragInfo.DropTargetData))
                    else
                        handler.Dropped(targetData.LastPosition, targetData.LastNormal, dragInfo.DropTargetId)
                    end
                end
            end
        end

        dragInfo.DragTarget.parent = dragInfo.OriginalParent

        if dragInfo.ResetOnDrop then
            if dragInfo.DragTarget:IsA("UIControl") then
                dragInfo.DragTarget.x = dragInfo.StartPosition.x
                dragInfo.DragTarget.y = dragInfo.StartPosition.y
                dragInfo.DragTarget.rotationAngle = dragInfo.StartRotation
            else
                dragInfo.DragTarget:SetWorldPosition(dragInfo.StartPosition)
                dragInfo.DragTarget:SetWorldRotation(dragInfo.StartRotation)

                -- TODO
            end
        end

        if dragInfo.DragTarget:IsA("UIControl") then
            -- Use the mouse blocker to end the press and get cursor events back
            BlockMouse(targetData.LastPosition)
        end

        -- Update other states
        if not wasCanceled then
            API.EndHover(module, currentTarget, true)
            API.EndDragOver(module)
        end

        dragInfo.IsDragging = false
        dragInfo.DragTarget = nil
        dragInfo.DropTargetData = nil
        dragInfo.DragData = nil

        if not wasCanceled then
            for _, handler in ipairs(targetData.InputHandlers) do
                if handler.DragEnd then
                    handler.DragEnd(targetData.LastPosition, targetData.LastNormal)
                end
            end
        end
    end
end

---Should be called by an input module whenever a drop target is dragged over a drop target.
---@param module CoreObject The module containing the drop target, this is usually the module script itself
---@param dropTarget CoreObject The drop target being dragged over
function API.BeginDragOver(module, dropTarget)
    local currentDropTarget = modules[module].CurrentDropTarget

    -- Don't handle duplicate overlaps
    if not dropTarget or currentDropTarget == dropTarget then
        return
    end

    -- Make sure it's valid
    local dropTargetInfo = modules[module].DropTargets[dropTarget]
    local dragInfo = modules[module].DragInfo

    if #dragInfo.ValidDropTargetIds > 0 and dropTargetInfo.InputHandler.IsValidDropTarget then
        -- Validate with the current draggable data if we have any, otherwise just compare the drop target ids
        if dragInfo.DragData then
            if not dropTargetInfo.InputHandler.IsValidDropTarget(dragInfo.ValidDropTargetIds, table.unpack(dragInfo.DragData)) then
                return
            end
        else
            if not dropTargetInfo.InputHandler.IsValidDropTarget(dragInfo.ValidDropTargetIds) then
                return
            end
        end
    end

    -- Let the current drop target know that the drag over has ended
    API.EndDragOver(module)

    -- Set the new drop target
    modules[module].CurrentDropTarget = dropTarget

    -- Update the drop target id
    if dropTargetInfo.InputHandler.GetDropTargetId then
        dragInfo.DropTargetId = dropTargetInfo.InputHandler.GetDropTargetId()
    end

    -- Update the drop target data
    if dropTargetInfo.InputHandler.GetDropTargetData then
        dragInfo.DropTargetData = dropTargetInfo.InputHandler.GetDropTargetData()
    end

    -- If a target has been registered with other components, let them know
    local targetData = modules[module].Targets[dropTarget]
    if targetData then
        for _, handler in ipairs(targetData.InputHandlers) do
            if handler.DragOverBegin then
                handler.DragOverBegin()
            end
        end
    end
end

---Should be called by an input module when a target is dragged away from a drop target.
---@param module CoreObject The module containing the drop target, this is usually the module script itself
function API.EndDragOver(module)
    local currentDropTarget = modules[module].CurrentDropTarget
    if currentDropTarget then
        -- If a target has been registered with other components, let them know
        local targetData = modules[module].Targets[currentDropTarget]
        if targetData then
            for _, handler in ipairs(targetData.InputHandlers) do
                if handler.DragOverEnd then
                    handler.DragOverEnd()
                end
            end
        end

        modules[module].CurrentDropTarget = nil

        local dragInfo = modules[module].DragInfo
        dragInfo.DropTargetData = nil
        dragInfo.DropTargetId = nil
    end
end

---Adds a target to the selection set for an input module. Selection is per Player to allow for more complex interactions.
---@param module CoreObject The module that owns the target being selected, this is usually the module script itself
---@param target CoreObject The target to select
---@param selectionSet string The selection set to use
---@param player Player The Player whose selection set should be used
function API.Select(module, target, selectionSet, player)
    player = player or Game.GetLocalPlayer()
    if not API.IsSelected(module, target, player) then
        if modules[module].Selection[player] then
            if modules[module].Selection[player][selectionSet] then
                modules[module].Selection[player][selectionSet][target] = true
            else
                modules[module].Selection[player][selectionSet] = {
                    [target] = true
                }
            end
        else
            modules[module].Selection[player] = {
                [selectionSet] = {
                    [target] = true
                }
            }
        end

        local targetData = modules[module].Targets[target]
        if targetData then
            for _, handler in ipairs(targetData.InputHandlers) do
                if handler.Selected then
                    handler.Selected(player)
                end
            end
        end
    end
end

---Removes a target from a Players selection set in an input module.
---@param module CoreObject The module that owns the target being deselected, this is usually the module script itself
---@param target CoreObject The target to deselect
---@param selectionSet string The selection set to use
---@param player Player The Player whose selection set should be used
function API.Deselect(module, target, selectionSet, player)
    player = player or Game.GetLocalPlayer()
    if API.IsSelected(module, target, selectionSet, player) then
        if modules[module].Selection[player] then
            if modules[module].Selection[player][selectionSet] then
                modules[module].Selection[player][selectionSet][target] = nil
            end
        end

        local targetData = modules[module].Targets[target]
        if targetData then
            for _, handler in ipairs(targetData.InputHandlers) do
                if handler.Deselected then
                    handler.Deselected(player)
                end
            end
        end
    end
end

---Removes all targets from a Players selection set in an input module.
---@param module CoreObject The module that owns the target being deselected, this is usually the module script itself
---@param selectionSet string The selection set to use
---@param player Player The Player whose selection set should be used
function API.DeselectAll(module, selectionSet, player)
    if modules[module].Selection[player] then
        if modules[module].Selection[player][selectionSet] then
            for target, _ in pairs(modules[module].Selection[player][selectionSet]) do
                API.Deselect(module, target, selectionSet, player)
            end
        end
    end
end

---Returns true if the target is currently being hovered in the input module.
---@param module CoreObject The module that owns the target being checked, this is usually the module script itself
---@param target CoreObject The target to check
---@return boolean
function API.IsHovered(module, target)
    return modules[module].Targets[target] and modules[module].Targets[target].Hovered
end

---Returns true if the target is currently being pressed in the input module.
---@param module CoreObject The module that owns the target being checked, this is usually the module script itself
---@param target CoreObject The target to check
---@return boolean
function API.IsPressed(module, target)
    return modules[module].Targets[target] and modules[module].Targets[target].Pressed
end

---Returns true if the target is currently being dragged in the input module.
---@param module CoreObject The module that owns the target being checked, this is usually the module script itself
---@param target CoreObject The target to check
---@return boolean
function API.IsDragging(module, target)
    -- Is specific target dragging
    if target then
        return modules[module].CurrentTarget == API.GetTarget(module, target) and modules[module].DragInfo.IsDragging
    end

    -- Is anything dragging
    return modules[module].DragInfo.IsDragging
end

---Returns true if the target is currently selected for the player in the input module.
---@param module CoreObject The module that owns the target being checked, this is usually the module script itself
---@param target CoreObject The target to check
---@param selectionSet string The selection set to use
---@param player Player The Player whose selection set should be checked
---@return boolean
function API.IsSelected(module, target, selectionSet, player)
    player = player or Game.GetLocalPlayer()
    if modules[module].Selection[player] and modules[module].Selection[player][selectionSet] then
        return modules[module].Selection[player][selectionSet][target]
    end

    return false
end

---Returns the entire selection set in an input module for a player.
---@param module CoreObject The module to get a selection set from, this is usually the module script itself
---@param selectionSet string The selection set to use
---@param player Player The Player whose selection set should be returned
---@return table
function API.GetSelection(module, selectionSet, player)
    player = player or Game.GetLocalPlayer()
    if modules[module].Selection[player] and modules[module].Selection[player][selectionSet] then
        return modules[module].Selection[player][selectionSet]
    end
    return {}
end

---Returns a table of information regarding the currently dragged object in an input module.
---@param module CoreObject The module to get drag info from, this is usually the module script itself
---@return table
function API.GetDragInfo(module)
    return modules[module].DragInfo
end

---Returns the current target of an input module.
---@param module CoreObject The module to get the current target from, this is usually the module script itself
---@return CoreObject
function API.GetCurrentTarget(module)
    return modules[module].CurrentTarget
end

---Returns a registered target related to the provided object for an input module.
---@param module CoreObject The module to get a target from, this is usually the module script itself
---@param object CoreObject The object containing the target or the target itself
---@return CoreObject
function API.GetTarget(module, object)
    local target = object
    if not modules[module].Targets[target] then
        target = FindAncestorTarget(module, object)
        if not modules[module].Targets[target] then
            target = object:FindTemplateRoot()
            if not modules[module].Targets[target] then
                return nil
            end
        end
    end
    return target
end

---Returns all registered targets for an input module.
---@param module CoreObject The module to get all targets from, this is usually the module script itself
---@return table
function API.GetAllTargets(module)
    return modules[module].Targets
end

---Returns the current drop target being dragged over for an input module.
---@param module CoreObject The module to return the current drop target from, this is usually the module script itself
---@return CoreObject
function API.GetCurrentDropTarget(module)
    return modules[module].CurrentDropTarget
end

---Returns a registered drop target related to the provided object for an input module.
---@param module CoreObject The module to get a drop target from, this is usually the module script itself
---@param object CoreObject The object containing the drop target or the drop target itself
---@return CoreObject
function API.GetDropTarget(module, object)
    local target = object
    if not modules[module].DropTargets[target] then
        target = object:FindTemplateRoot()
        if not modules[module].DropTargets[target] then
            target = FindAncestorDropTarget(module, object)
        end
    end
    return target
end

---Returns all registered drop targets fro an input module.
---@param module CoreObject The module to get all drop targets from, this is usually the module script itself
---@return table
function API.GetAllDropTargets(module)
    return modules[module].DropTargets
end

---Runs each frame and updates all registered input modules.
function Update()
    while true do
        local dt = Task.Wait()
        for _, moduleData in pairs(modules) do
            moduleData.Functions.Update()
        end
        Events.Broadcast(API.Events.PostModuleUpdate, dt)
    end
end

---Clears the current target in a module
---@param module CoreObject The module to clear the current target in, this is usually the module script itself
---@param wasDragging boolean True if the target was being dragged
function ClearCurrentTarget(module, wasDragging)
    local currentTarget = API.GetCurrentTarget(module)
    if currentTarget then
        local targetData = modules[module].Targets[currentTarget]
        if API.IsHovered(module, currentTarget) then
            targetData.Hovered = false

            for _, handler in ipairs(targetData.InputHandlers) do
                if handler.HoverEnd then
                    handler.HoverEnd(targetData.LastPosition, targetData.LastNormal, wasDragging)
                end
            end
        end

        if API.IsPressed(module, currentTarget) then
            API.EndPress(module, currentTarget, targetData.LastBinding, wasDragging)
        end

        modules[module].CurrentTarget = nil
    end
end

---Moves a UIButton to block the cursor and clear button state.
---@param position Vector2
function BlockMouse(position)
    Task.Spawn(function()
        mouseBlocker.isEnabled = true
        mouseBlocker.x = position.x
        mouseBlocker.y = position.y

        Task.Wait()

        mouseBlocker.isEnabled = false
    end)
end

---Spawns a UIContainer to parent drag proxies to.
function SetupDragContainer()
    if spawnedDragContainer and dragContainer then
        dragContainer:Destroy()
        mouseBlocker = nil
    end

    local dragContainerSetting = API.GetSetting(API.Setting.DragUIContainer)
    if dragContainerSetting == nil or type(dragContainerSetting) == "string" then
        dragContainer = World.SpawnAsset(DEFAULT_DRAG_UI_CONTAINER)
        spawnedDragContainer = true
    else
        dragContainer = dragContainerSetting
        spawnedDragContainer = false
    end

    if not mouseBlocker then
        SetupMouseBlocker()
    end
end

---Spawns a UIButton to use to clear button state.
function SetupMouseBlocker()
    mouseBlocker = World.SpawnAsset(MOUSE_BLOCKER, { parent = dragContainer })
    mouseBlocker.isEnabled = false
end

---Searches a hierarchy for a registered target related to a provided object for an input module.
---@param module CoreObject The module to search for the target
---@param object CoreObject The object containing the target or the target itself
---@return CoreObject
function FindAncestorTarget(module, object)
    while object.parent ~= nil do
        object = object.parent
        if modules[module].Targets[object] then
            return object
        end
    end
    return nil
end

---Searches a hierarchy for a registered drop target related to a provided object for an input module.
---@param module CoreObject The module to search for the drop target
---@param object CoreObject The object containing the drop target or the drop target itself
---@return CoreObject
function FindAncestorDropTarget(module, object)
    while object.parent ~= nil do
        object = object.parent
        if modules[module].DropTargets[object] then
            return object
        end
    end
    return nil
end

SetupDragContainer()
SetupMouseBlocker()

return API