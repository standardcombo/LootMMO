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
    This allows Equipment setup and configuration in the hierarchy. The Equipment API will use default settings for
    anything not configured here. The "Hand Tool" is a method of interacting with objects without using an equipped
    ability. You can change how the Hand Tool interacts with objects by switching the APIInteractionModule with
    another supported module.

    Supported Interaction Modules are:
        * APILookInteractionModule
        * APICameraDirectionInteractionModule
        * APIPointerInteractionModule
--]]

-- Internal Variables
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

---@type APIEquipment
local EQUIPMENT = require(script:GetCustomProperty("APIEquipment"))

local USE_HAND_TOOL = COMPONENT_ROOT:GetCustomProperty("UseHandTool")
local HAND_TOOL_ABILITY_TEMPLATE = COMPONENT_ROOT:GetCustomProperty("HandToolAbilityTemplate")
local HAND_TOOL_INTERACTION_MODULE = COMPONENT_ROOT:GetCustomProperty("HandToolInteractionModule")
local HAND_TOOL_TYPE = COMPONENT_ROOT:GetCustomProperty("HandToolType")
local HAND_TOOL_SELECTION_OUTLINE = COMPONENT_ROOT:GetCustomProperty("HandToolSelectionOutline"):WaitForObject()
local HAND_TOOL_DISTANCE = COMPONENT_ROOT:GetCustomProperty("HandToolDistance")

if not HAND_TOOL_INTERACTION_MODULE or HAND_TOOL_INTERACTION_MODULE == "" then
    error(string.format("HandToolInteractionModule must be set to a compatible Interaction Module on %s", COMPONENT_ROOT.name))
    return
end

if not HAND_TOOL_DISTANCE or HAND_TOOL_DISTANCE < 0 then
    HAND_TOOL_DISTANCE = 1000
end

local handToolInteractionModule = require(HAND_TOOL_INTERACTION_MODULE)

if not handToolInteractionModule.Module then
    error(string.format("HandToolInteractionModule must be set to a compatible Interaction Module on %s", COMPONENT_ROOT.name))
    return
end

if not HAND_TOOL_TYPE or HAND_TOOL_TYPE == "" then
    error(string.format("HandToolType must be set on %s", COMPONENT_ROOT.name))
    return
end

function Tick(deltaTime)
    EQUIPMENT.Update(deltaTime)
end

EQUIPMENT.UpdateSettings({
    [EQUIPMENT.Setting.UseHandTool] = USE_HAND_TOOL,
    [EQUIPMENT.Setting.HandToolAbilityTemplate] = HAND_TOOL_ABILITY_TEMPLATE,
    [EQUIPMENT.Setting.HandToolInteractionModule] = handToolInteractionModule,
    [EQUIPMENT.Setting.HandToolType] = HAND_TOOL_TYPE,
    [EQUIPMENT.Setting.HandToolSelectionOutline] = HAND_TOOL_SELECTION_OUTLINE,
    [EQUIPMENT.Setting.HandToolDistance] = HAND_TOOL_DISTANCE
})