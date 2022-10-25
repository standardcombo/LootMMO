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
    This is a simple tooltip that registers with the Tooltip API and comes with some customizability.
--]]

local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local TEXT = script:GetCustomProperty("Text"):WaitForObject()

---@type APITooltip
local TOOLTIP = require(script:GetCustomProperty("APITooltip"))

---@type APIUILibrary
local UI_LIBRARY = require(script:GetCustomProperty("APIUILibrary"))

local CURSOR_OFFSET = COMPONENT_ROOT:GetCustomProperty("CursorOffset")
local FIT_TO_TEXT = COMPONENT_ROOT:GetCustomProperty("FitToText")
local KEEP_ON_SCREEN = COMPONENT_ROOT:GetCustomProperty("KeepOnScreen")
local KEEP_ON_SCREEN_PADDING = COMPONENT_ROOT:GetCustomProperty("KeepOnScreenPadding")

-- Private Variables
local resizeTask
local getPositionCallback

---Shows the tooltip.
---@param position Vector2
---@param text string
---@param positionCallback function|nil
function Show(position, text, positionCallback)
    getPositionCallback = positionCallback

    COMPONENT_ROOT.visibility = Visibility.FORCE_ON
    COMPONENT_ROOT.x = position.x
    COMPONENT_ROOT.y = position.y

    TEXT.text = text

    if FIT_TO_TEXT then
        if resizeTask then
            resizeTask:Cancel()
        end

        resizeTask = Task.Spawn(function()
            local textSize
            while not textSize do
                textSize = TEXT:ComputeApproximateSize()
                Task.Wait()
            end

            COMPONENT_ROOT.width = textSize.x
            COMPONENT_ROOT.height = textSize.y
        end)
    end
end

---Hides the tooltip.
function Hide()
    COMPONENT_ROOT.visibility = Visibility.FORCE_OFF
end

---Returns true if the tooltip is showing.
---@return boolean
function IsShowing()
    return COMPONENT_ROOT:IsVisibleInHierarchy()
end

function Tick(deltaTime)
    if IsShowing() then
        if getPositionCallback then
            local position = getPositionCallback()

            COMPONENT_ROOT.x = position.x + CURSOR_OFFSET.x
            COMPONENT_ROOT.y = position.y + CURSOR_OFFSET.y
        end

        if KEEP_ON_SCREEN then
            local screenSize = UI:GetScreenSize()
            local x, y = UI_LIBRARY.GetAbsolutePosition(COMPONENT_ROOT, false)
            local xOffset = COMPONENT_ROOT.x - x
            local yOffset = COMPONENT_ROOT.y - y

            if x < KEEP_ON_SCREEN_PADDING.x then
                COMPONENT_ROOT.x = xOffset + KEEP_ON_SCREEN_PADDING.x
            elseif x + COMPONENT_ROOT.width > screenSize.x - KEEP_ON_SCREEN_PADDING.x then
                COMPONENT_ROOT.x = screenSize.x - xOffset - KEEP_ON_SCREEN_PADDING.x
            end

            if y < KEEP_ON_SCREEN_PADDING.y then
                COMPONENT_ROOT.y = yOffset + KEEP_ON_SCREEN_PADDING.y
            elseif y + COMPONENT_ROOT.height > screenSize.y - KEEP_ON_SCREEN_PADDING.y then
                COMPONENT_ROOT.y = screenSize.y - yOffset - KEEP_ON_SCREEN_PADDING.y
            end
        end
    end
end

TOOLTIP.RegisterTooltip({
    Show = Show,
    Hide = Hide,
    IsShowing = IsShowing
})