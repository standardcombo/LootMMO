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
    This can be added to an object to make it change visibility by leveraging the Modular Interaction System. Just add
    this script to the object in a ClientContext and setup the Custom Properties. Refer to the Interaction System README
    for more details.
--]]

-- Internal Variables
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local INTERACTION_MODULE = script:GetCustomProperty("APIInteractionModule")
local SUB_TARGET = script:GetCustomProperty("SubTarget"):WaitForObject()
local OBJECT_TO_TOGGLE = script:GetCustomProperty("ObjectToToggle"):WaitForObject()
local PRESS_BINDING = script:GetCustomProperty("PressBinding")
local SHOW_ON_BEGIN_HOVER = script:GetCustomProperty("ShowOnBeginHover")
local SHOW_ON_END_HOVER = script:GetCustomProperty("ShowOnEndHover")
local SHOW_ON_BEGIN_PRESS = script:GetCustomProperty("ShowOnBeginPress")
local SHOW_ON_END_PRESS = script:GetCustomProperty("ShowOnEndPress")
local SHOW_ON_BEGIN_DRAG_OVER = script:GetCustomProperty("ShowOnBeginDragOver")
local SHOW_ON_END_DRAG_OVER = script:GetCustomProperty("ShowOnEndDragOver")
local SHOW_ON_BEGIN_DRAG = script:GetCustomProperty("ShowOnBeginDrag")
local SHOW_ON_END_DRAG = script:GetCustomProperty("ShowOnEndDrag")
local SHOW_ON_DROPPED = script:GetCustomProperty("ShowOnDropped")
local SHOW_ON_SELECTED = script:GetCustomProperty("ShowOnSelected")
local SHOW_ON_DESELECTED = script:GetCustomProperty("ShowOnDeselected")
local HIDE_ON_BEGIN_HOVER = script:GetCustomProperty("HideOnBeginHover")
local HIDE_ON_END_HOVER = script:GetCustomProperty("HideOnEndHover")
local HIDE_ON_BEGIN_PRESS = script:GetCustomProperty("HideOnBeginPress")
local HIDE_ON_END_PRESS = script:GetCustomProperty("HideOnEndPress")
local HIDE_ON_BEGIN_DRAG_OVER = script:GetCustomProperty("HideOnBeginDragOver")
local HIDE_ON_END_DRAG_OVER = script:GetCustomProperty("HideOnEndDragOver")
local HIDE_ON_BEGIN_DRAG = script:GetCustomProperty("HideOnBeginDrag")
local HIDE_ON_END_DRAG = script:GetCustomProperty("HideOnEndDrag")
local HIDE_ON_DROPPED = script:GetCustomProperty("HideOnDropped")
local HIDE_ON_SELECTED = script:GetCustomProperty("HideOnSelected")
local HIDE_ON_DESELECTED = script:GetCustomProperty("HideOnDeselected")
local TOGGLE_ON_BEGIN_HOVER = script:GetCustomProperty("ToggleOnBeginHover")
local TOGGLE_ON_END_HOVER = script:GetCustomProperty("ToggleOnEndHover")
local TOGGLE_ON_BEGIN_PRESS = script:GetCustomProperty("ToggleOnBeginPress")
local TOGGLE_ON_END_PRESS = script:GetCustomProperty("ToggleOnEndPress")
local TOGGLE_ON_BEGIN_DRAG_OVER = script:GetCustomProperty("ToggleOnBeginDragOver")
local TOGGLE_ON_END_DRAG_OVER = script:GetCustomProperty("ToggleOnEndDragOver")
local TOGGLE_ON_BEGIN_DRAG = script:GetCustomProperty("ToggleOnBeginDrag")
local TOGGLE_ON_END_DRAG = script:GetCustomProperty("ToggleOnEndDrag")
local TOGGLE_ON_DROPPED = script:GetCustomProperty("ToggleOnDropped")
local TOGGLE_ON_SELECTED = script:GetCustomProperty("ToggleOnSelected")
local TOGGLE_ON_DESELECTED = script:GetCustomProperty("ToggleOnDeselected")

if INTERACTION_MODULE == nil or INTERACTION_MODULE == "" then
    warn(string.format("An Interaction Module must be set on Component: %s (%s)", script.name, script.id))
    return
end

local INTERACTION = require(INTERACTION_MODULE)

-- Private Variables
local toggleRoot = OBJECT_TO_TOGGLE or COMPONENT_ROOT

--[[
    Callbacks
--]]

function OnHoverBegin(position, normal)
    if SHOW_ON_BEGIN_HOVER then
        Show()
    elseif HIDE_ON_BEGIN_HOVER then
        Hide()
    elseif TOGGLE_ON_BEGIN_HOVER then
        Toggle()
    end
end

function OnHoverEnd(position, normal)
    if SHOW_ON_END_HOVER then
        Show()
    elseif HIDE_ON_END_HOVER then
        Hide()
    elseif TOGGLE_ON_END_HOVER then
        Toggle()
    end
end

function OnPressBegin(binding, position, normal)
    if PRESS_BINDING == "" or PRESS_BINDING == binding then
        if SHOW_ON_BEGIN_PRESS then
            Show()
        elseif HIDE_ON_BEGIN_PRESS then
            Hide()
        elseif TOGGLE_ON_BEGIN_PRESS then
            Toggle()
        end
    end
end

function OnPressEnd(binding, position, normal)
    if PRESS_BINDING == "" or PRESS_BINDING == binding then
        if SHOW_ON_END_PRESS then
            Show()
        elseif HIDE_ON_END_PRESS then
            Hide()
        elseif TOGGLE_ON_END_PRESS then
            Toggle()
        end
    end
end

function OnDragOverBegin()
    if SHOW_ON_BEGIN_DRAG_OVER then
        Show()
    elseif HIDE_ON_BEGIN_DRAG_OVER then
        Hide()
    elseif TOGGLE_ON_BEGIN_DRAG_OVER then
        Toggle()
    end
end

function OnDragOverEnd()
    if SHOW_ON_END_DRAG_OVER then
        Show()
    elseif HIDE_ON_END_DRAG_OVER then
        Hide()
    elseif TOGGLE_ON_END_DRAG_OVER then
        Toggle()
    end
end

function OnDragBegin(position, normal)
    if SHOW_ON_BEGIN_DRAG then
        Show()
    elseif HIDE_ON_BEGIN_DRAG then
        Hide()
    elseif TOGGLE_ON_BEGIN_DRAG then
        Toggle()
    end
end

function OnDragEnd(position, normal)
    if SHOW_ON_END_DRAG then
        Show()
    elseif HIDE_ON_END_DRAG then
        Hide()
    elseif TOGGLE_ON_END_DRAG then
        Toggle()
    end
end

function OnDropped(position, normal, dropTargetId, ...)
    if SHOW_ON_DROPPED then
        Show()
    elseif HIDE_ON_DROPPED then
        Hide()
    elseif TOGGLE_ON_DROPPED then
        Toggle()
    end
end

function OnSelected()
    if SHOW_ON_SELECTED then
        Show()
    elseif HIDE_ON_SELECTED then
        Hide()
    elseif TOGGLE_ON_SELECTED then
        Toggle()
    end
end

function OnDeselected()
    if SHOW_ON_DESELECTED then
        Show()
    elseif HIDE_ON_DESELECTED then
        Hide()
    elseif TOGGLE_ON_DESELECTED then
        Toggle()
    end
end

--[[
    Helper Functions
--]]

function Show()
    if Object.IsValid(toggleRoot) and toggleRoot:IsA("CoreObject") then
        toggleRoot.visibility = Visibility.FORCE_ON
    end
end

function Hide()
    if Object.IsValid(toggleRoot) and toggleRoot:IsA("CoreObject") then
        toggleRoot.visibility = Visibility.FORCE_OFF
    end
end

function Toggle()
    if Object.IsValid(toggleRoot) and toggleRoot:IsA("CoreObject") then
        if toggleRoot:IsVisibleInHierarchy() then
            toggleRoot.visibility = Visibility.FORCE_OFF
        else
            toggleRoot.visibility = Visibility.FORCE_ON
        end
    end
end

--[[
    Initialization
--]]

local functionTable = {
    HoverBegin = OnHoverBegin,
    HoverEnd = OnHoverEnd,
    PressBegin = OnPressBegin,
    PressEnd = OnPressEnd,
    DragOverBegin = OnDragOverBegin,
    DragOverEnd = OnDragOverEnd,
    DragBegin = OnDragBegin,
    DragEnd = OnDragEnd,
    Dropped = OnDropped,
    Selected = OnSelected,
    Deselected = OnDeselected
}

-- Register with the input module. This can fail if any of the parameters are invalid
if not INTERACTION.RegisterTarget(COMPONENT_ROOT, SUB_TARGET, functionTable) then
    warn(string.format("Could not initialize %s (%s)", script.name, script.id))
    return
end

COMPONENT_ROOT.destroyEvent:Connect(INTERACTION.UnregisterTarget)