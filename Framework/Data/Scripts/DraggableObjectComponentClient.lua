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
    This can be added to an object to make it drag and drop by leveraging the Modular Interaction System. It works in
    conjunction with DropTargetComponentClient. Just add this script to the object in a ClientContext and setup the
    Custom Properties. Refer to the Interaction System README for more details.
--]]

-- Internal Variables
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local INTERACTION_MODULE = script:GetCustomProperty("APIInteractionModule")
local SUB_TARGET = script:GetCustomProperty("SubTarget"):WaitForObject()
local PRESS_BINDING = script:GetCustomProperty("PressBinding")
local DRAG_DATA = script:GetCustomProperty("DragData")
local DROP_TARGET_IDS = script:GetCustomProperty("DropTargetIds")
local RESET_ON_DROP = script:GetCustomProperty("ResetOnDrop")
local SNAP_TO_INPUT = script:GetCustomProperty("SnapToInput")
local SNAP_OFFSET = script:GetCustomProperty("SnapOffset")

if INTERACTION_MODULE == nil or INTERACTION_MODULE == "" then
    warn(string.format("An Interaction Module must be set on Component: %s (%s)", script.name, script.id))
    return
end

local INTERACTION = require(INTERACTION_MODULE)

-- Private Variables
local dropTargetIds = {}
local dragData = DRAG_DATA
local getDragProxyFunction
local isValidDragFunction
local dragStartPosition

--[[
    Callbacks
--]]

function OnHover(position, normal)
    if dragStartPosition ~= nil then
        -- If the input has moved beyond the threshold start dragging
        if (dragStartPosition - position).size >= 5.0 then
            dragStartPosition = nil
            BeginDrag(position, normal)
        end
    end
end

function OnPressBegin(binding, position, normal)
    if PRESS_BINDING == "" or PRESS_BINDING == binding then
        -- Don't immediately start a drag to allow clicks to still happen
        dragStartPosition = position
    end
end

function OnPressEnd(binding, position, normal)
    if PRESS_BINDING == "" or PRESS_BINDING == binding then
        dragStartPosition = nil
        EndDrag(position, normal)
    end
end

function OnSetDragData(isValidDragFunc, getDragProxyFunc, ...)
    isValidDragFunction = isValidDragFunc
    getDragProxyFunction = getDragProxyFunc
    dragData = { ... }
end

function OnGetDragData()
    return dragData
end

function OnIsValidDrag()
    if isValidDragFunction then
        return isValidDragFunction()
    end
    return true
end

function OnGetDragProxy()
    if getDragProxyFunction then
        return getDragProxyFunction()
    end
    return nil
end

--[[
    Helper Functions
--]]

function Cleanup(target)
    INTERACTION.UnregisterDraggable(target)
    INTERACTION.UnregisterTarget(target)

    getDragProxyFunction = nil
    isValidDragFunction = nil
end

function BeginDrag(position, normal)
    if not INTERACTION.IsDragging() then
        INTERACTION.BeginDrag(position, normal, dropTargetIds, RESET_ON_DROP, SNAP_TO_INPUT, SNAP_OFFSET)
    end
end

function EndDrag(position, normal)
    if INTERACTION.IsDragging() then
        INTERACTION.EndDrag()
    end
end

--[[
    Initialization
--]]

local componentFunctionTable = {
    Hover = OnHover,
    PressBegin = OnPressBegin,
    PressEnd = OnPressEnd
}

local draggableFunctionTable = {
    SetDragData = OnSetDragData,
    GetDragData = OnGetDragData,
    IsValidDrag = OnIsValidDrag,
    GetDragProxy = OnGetDragProxy
}

-- Register with the input module. This can fail if any of the parameters are invalid
if not INTERACTION.RegisterTarget(COMPONENT_ROOT, SUB_TARGET, componentFunctionTable) then
    warn(string.format("Could not initialize %s (%s)", script.name, script.id))
    return
end

-- Register as a draggable
if not INTERACTION.RegisterDraggable(COMPONENT_ROOT, SUB_TARGET, draggableFunctionTable) then
    warn(string.format("Could not initialize %s (%s)", script.name, script.id))
    return
end

local deprecatedDropTarget = script:GetCustomProperty("DropTargetId")
if deprecatedDropTarget and deprecatedDropTarget ~= "" then
    warn(string.format("The \"DropTargetId\" property on %s has been renamed to \"DropTargetIds\" and now supports a comma separated list of Drop Target Ids. Please move your data to the new property.", script.name))
    if DROP_TARGET_IDS == "" then
        DROP_TARGET_IDS = deprecatedDropTarget
    end
end

local ids = { CoreString.Split(DROP_TARGET_IDS, ",", { removeEmptyResults = true }) }
for _, id in ipairs(ids) do
    table.insert(dropTargetIds, CoreString.Trim(id))
end

COMPONENT_ROOT.destroyEvent:Connect(Cleanup)