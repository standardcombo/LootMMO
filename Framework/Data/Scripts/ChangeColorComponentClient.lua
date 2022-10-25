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
    This can be added to an object to make it change color by leveraging the Modular Interaction System. Just add this
    script to the object in a ClientContext and setup the Custom Properties. Refer to the Interaction System README for
    more details.
--]]

-- Internal Variables
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local INTERACTION_MODULE = script:GetCustomProperty("APIInteractionModule")
local SUB_TARGET = script:GetCustomProperty("SubTarget"):WaitForObject()
local OBJECTS_TO_COLOR = script:GetCustomProperty("ObjectsToColor"):WaitForObject()
local DEFAULT_COLOR = script:GetCustomProperty("DefaultColor")
local HOVERED_COLOR = script:GetCustomProperty("HoveredColor")
local DRAGGED_COLOR = script:GetCustomProperty("DraggedColor")
local DRAGGED_OVER_COLOR = script:GetCustomProperty("DraggedOverColor")
local PRESSED_COLOR = script:GetCustomProperty("PressedColor")
local SELECTED_COLOR = script:GetCustomProperty("SelectedColor")
local PRESS_BINDING = script:GetCustomProperty("PressBinding")

if INTERACTION_MODULE == nil or INTERACTION_MODULE == "" then
    warn(string.format("An Interaction Module must be set on Component: %s (%s)", script.name, script.id))
    return
end

local INTERACTION = require(INTERACTION_MODULE)

-- Private Variables
local colorRoot = OBJECTS_TO_COLOR or COMPONENT_ROOT
local isPressed = false
local isHovered = false
local isBeingDragged = false
local isDraggedOver = false
local playersSelected = {}

--[[
    Callbacks
--]]

function OnHoverBegin(position, normal, player)
    isHovered = true
    UpdateColor()
end

function OnHoverEnd(position, normal, player)
    isHovered = false
    UpdateColor()
end

function OnPressBegin(binding, position, normal)
    if PRESS_BINDING == "" or PRESS_BINDING == binding then
        isPressed = true
        UpdateColor()
    end
end

function OnPressEnd(binding, position, normal)
    if PRESS_BINDING == "" or PRESS_BINDING == binding then
        isPressed = false
        UpdateColor()
    end
end

function OnDragBegin(position, normal)
    isBeingDragged = true
    UpdateColor()
end

function OnDragEnd(position, normal)
    isBeingDragged = false
    UpdateColor()
end

function OnDragOverBegin()
    isDraggedOver = true
    UpdateColor()
end

function OnDragOverEnd()
    isDraggedOver = false
    UpdateColor()
end

function OnDropped(position, normal, ...)
    isBeingDragged = false
    isDraggedOver = false
    UpdateColor()
end

function OnSelected(player)
    playersSelected[player] = true
    UpdateColor()
end

function OnDeselected(player)
    playersSelected[player] = nil
    UpdateColor()
end

--[[
    Helper Functions
--]]

function UpdateColor()
    if isPressed then
        SetColor(PRESSED_COLOR)
    elseif AreAnyPlayersSelecting() then
        SetColor(SELECTED_COLOR)
    elseif isBeingDragged then
        SetColor(DRAGGED_COLOR)
    elseif isDraggedOver then
        SetColor(DRAGGED_OVER_COLOR)
    elseif isHovered then
        SetColor(HOVERED_COLOR)
    else
        SetColor(DEFAULT_COLOR)
    end
end

function AreAnyPlayersSelecting()
    for player, selected in pairs(playersSelected) do
        if selected then
            return true
        end
    end
    return false
end

function SetColor(color)
    if not Object.IsValid(colorRoot) then
        return
    end

    if colorRoot:IsA("StaticMesh") or colorRoot:IsA("UIImage") or colorRoot:IsA("UIText") then
        -- Avoid trying to change networked mesh or ui
        if colorRoot.isClientOnly then
            colorRoot:SetColor(color)
        end
    end

    for _, mesh in ipairs(colorRoot:FindDescendantsByType("StaticMesh")) do
        -- Avoid trying to change networked mesh (usually colliders)
        if mesh.isClientOnly then
            mesh:SetColor(color)
        end
    end

    for _, image in ipairs(colorRoot:FindDescendantsByType("UIImage")) do
        -- Avoid trying to change networked ui
        if image.isClientOnly then
            image:SetColor(color)
        end
    end

    for _, text in ipairs(colorRoot:FindDescendantsByType("UIText")) do
        -- Avoid trying to change networked ui
        if text.isClientOnly then
            text:SetColor(color)
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

UpdateColor()