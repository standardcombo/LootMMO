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
    This can be added to an object to make it broadcast and event by leveraging the Modular Interaction System. Just add
    this script to the object in a ClientContext and setup the Custom Properties. Refer to Interaction System README for
    more details.
--]]

-- Internal Variables
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local INTERACTION_MODULE = script:GetCustomProperty("APIInteractionModule")
local SUB_TARGET = script:GetCustomProperty("SubTarget"):WaitForObject()
local PRESS_BINDING = script:GetCustomProperty("PressBinding")
local EVENT_NAME = script:GetCustomProperty("EventName")
local EVENT_DATA = script:GetCustomProperty("EventData")
local BROADCAST_TO_SERVER = script:GetCustomProperty("BroadcastToServer")
local BROADCAST_ON_BEGIN_HOVER = script:GetCustomProperty("BroadcastOnBeginHover")
local BROADCAST_ON_END_HOVER = script:GetCustomProperty("BroadcastOnEndHover")
local BROADCAST_ON_BEGIN_PRESS = script:GetCustomProperty("BroadcastOnBeginPress")
local BROADCAST_ON_END_PRESS = script:GetCustomProperty("BroadcastOnEndPress")
local BROADCAST_ON_BEGIN_DRAG_OVER = script:GetCustomProperty("BroadcastOnBeginDragOver")
local BROADCAST_ON_END_DRAG_OVER = script:GetCustomProperty("BroadcastOnEndDragOver")
local BROADCAST_ON_BEGIN_DRAG = script:GetCustomProperty("BroadcastOnBeginDrag")
local BROADCAST_ON_END_DRAG = script:GetCustomProperty("BroadcastOnEndDrag")
local BROADCAST_ON_DROPPED = script:GetCustomProperty("BroadcastOnDropped")
local BROADCAST_ON_SELECTED = script:GetCustomProperty("BroadcastOnSelected")
local BROADCAST_ON_DESELECTED = script:GetCustomProperty("BroadcastOnDeselected")

if INTERACTION_MODULE == nil or INTERACTION_MODULE == "" then
    warn(string.format("An Interaction Module must be set on Component: %s (%s)", script.name, script.id))
    return
end

local INTERACTION = require(INTERACTION_MODULE)

---@type APIReliableEvents
local RELIABLE_EVENTS = require(script:GetCustomProperty("APIReliableEvents"))

-- Private Variables
local data = EVENT_DATA

--[[
    Callbacks
--]]

function OnHoverBegin(position, normal)
    if BROADCAST_ON_BEGIN_HOVER then
        BroadcastEvent()
    end
end

function OnHoverEnd(position, normal)
    if BROADCAST_ON_END_HOVER then
        BroadcastEvent()
    end
end

function OnPressBegin(binding, position, normal)
    if BROADCAST_ON_BEGIN_PRESS and (PRESS_BINDING == "" or PRESS_BINDING == binding) then
        BroadcastEvent()
    end
end

function OnPressEnd(binding, position, normal, wasDragging)
    if not wasDragging and BROADCAST_ON_END_PRESS and (PRESS_BINDING == "" or PRESS_BINDING == binding) then
        BroadcastEvent()
    end
end

function OnDragOverBegin()
    if BROADCAST_ON_BEGIN_DRAG_OVER then
        BroadcastEvent()
    end
end

function OnDragOverEnd()
    if BROADCAST_ON_END_DRAG_OVER then
        BroadcastEvent()
    end
end

function OnDragBegin(position, normal)
    if BROADCAST_ON_BEGIN_DRAG then
        BroadcastEvent()
    end
end

function OnDragEnd(position, normal)
    if BROADCAST_ON_END_DRAG then
        BroadcastEvent()
    end
end

function OnSelected()
    if BROADCAST_ON_SELECTED then
        BroadcastEvent()
    end
end

function OnDeselected()
    if BROADCAST_ON_DESELECTED then
        BroadcastEvent()
    end
end

-- The Dropped callback contains data about the drop target that will get appended to the event
function OnDropped(position, normal, dropTargetId, ...)
    if BROADCAST_ON_DROPPED then
        BroadcastEvent(dropTargetId, ...)
    end
end

---Sets event data for this specific component.
---@param component CoreObject
function OnSetData(component, ...)
    -- Set the data if this component is targeted or if there is no specific target
    if not component or component == script then
        data = {...}
    end
end

--[[
    Helper Functions
--]]

function BroadcastEvent(...)
    local broadcastFunc = Events.Broadcast
    if BROADCAST_TO_SERVER then
        broadcastFunc = RELIABLE_EVENTS.BroadcastToServer
    end

    -- Collect all data into a table to pass as parameters
    local eventData = {}
    if type(data) == "table" then
        for _, value in ipairs(data) do
            table.insert(eventData, value)
        end
    elseif data ~= "" then
        table.insert(eventData, data)
    end

    -- Some callbacks will add additional data that gets appended and passed as more parameters
    local additionalData = { ... }
    for _, value in ipairs(additionalData) do
        table.insert(eventData, value)
    end

    -- Broadcast the event with data if possible
    if #eventData > 0 then
        broadcastFunc(EVENT_NAME, table.unpack(eventData))
    else
        broadcastFunc(EVENT_NAME)
    end
end

--[[
    Initialization
--]]

if EVENT_NAME == nil or EVENT_NAME == "" then
    warn(string.format("EventName must be set on %s (%s)", script.name, script.id))
    return
end

local functionTable = {
    HoverBegin = OnHoverBegin,
    HoverEnd = OnHoverEnd,
    PressBegin = OnPressBegin,
    PressEnd = OnPressEnd,
    DragOverBegin = OnDragOverBegin,
    DragOverEnd = OnDragOverEnd,
    DragBegin = OnDragBegin,
    DragEnd = OnDragEnd,
    Selected = OnSelected,
    Deselected = OnDeselected,
    Dropped = OnDropped,
    SetData = OnSetData
}

-- Register with the input module. This can fail if any of the parameters are invalid
if not INTERACTION.RegisterTarget(COMPONENT_ROOT, SUB_TARGET, functionTable) then
    warn(string.format("Could not initialize %s (%s)", script.name, script.id))
    return
end

COMPONENT_ROOT.destroyEvent:Connect(INTERACTION.UnregisterTarget)