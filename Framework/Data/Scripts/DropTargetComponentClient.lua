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
    This can be added to an object to restrict specific draggable objects to only be allowed to drop on this object by
    leveraging the Modular Interaction System. It works in conjunction with DraggableObjectComponentClient. Just add
    this script to the object in a ClientContext and setup the Custom Properties. Refer to the Interaction System README
    for more details.
--]]

-- Internal Variables
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local INTERACTION_MODULE = script:GetCustomProperty("APIInteractionModule")
local SUB_TARGET = script:GetCustomProperty("SubTarget"):WaitForObject()
local DROP_TARGET_ID = script:GetCustomProperty("DropTargetId")

if INTERACTION_MODULE == nil or INTERACTION_MODULE == "" then
    warn(string.format("An Interaction Module must be set on Component: %s (%s)", script.name, script.id))
    return
end

local INTERACTION = require(INTERACTION_MODULE)

-- Private Variables
local isValidDropTargetFunction
local dropTargetData

--[[
    Callbacks
--]]

function OnIsValidDropTarget(dropTargetIds, ...)
    if isValidDropTargetFunction then
        return (#dropTargetIds == 0 or DoesMatchDropTarget(dropTargetIds)) and isValidDropTargetFunction(dropTargetIds, ...)
    end
    return #dropTargetIds == 0 or DoesMatchDropTarget(dropTargetIds)
end

function OnSetDropTargetData(isValidDropTargetFunc, ...)
    isValidDropTargetFunction = isValidDropTargetFunc
    dropTargetData = { ... }
end

function OnGetDropTargetId()
    return DROP_TARGET_ID
end

function OnGetDropTargetData()
    return dropTargetData
end

--[[
    Helpers
--]]


function DoesMatchDropTarget(dropTargetIds)
    for _, dropTargetId in ipairs(dropTargetIds) do
        if dropTargetId == DROP_TARGET_ID then
            return true
        end
    end
    return false
end

--[[
    Initialization
--]]

local functionTable = {
    IsValidDropTarget = OnIsValidDropTarget,
    SetDropTargetData = OnSetDropTargetData,
    GetDropTargetId = OnGetDropTargetId,
    GetDropTargetData = OnGetDropTargetData
}

-- Register with the input module. This can fail if any of the parameters are invalid
if not INTERACTION.RegisterDropTarget(COMPONENT_ROOT, SUB_TARGET, functionTable) then
    warn(string.format("Could not initialize %s (%s)", script.name, script.id))
    return
end

COMPONENT_ROOT.destroyEvent:Connect(INTERACTION.UnregisterDropTarget)