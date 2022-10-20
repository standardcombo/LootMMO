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

-------------------------------------------------------------------------------
-- UI_Utilities
-------------------------------------------------------------------------------
--- @type UI_Utilities
local API = {}
API.version = 0.3
API.name = 'UI_Utilities'
API.desc = 'utilities for UI scaling and absolute position'

API.__tostring = function()
    return string.format('%s: %g - %s', API.name, API.version, API.desc)
end
API = setmetatable(API, API)

---Parts taken from gatherables API

---Returns true if the UIPivot is a left aligned pivot.
---@param uiPivot UIPivot
---@return boolean
local function IsLeft(uiPivot)
    return uiPivot == UIPivot.TOP_LEFT or uiPivot == UIPivot.MIDDLE_LEFT or uiPivot == UIPivot.BOTTOM_LEFT
end

---Returns true if the UIPivot is a center aligned pivot.
---@param uiPivot UIPivot
---@return boolean
local function IsCenter(uiPivot)
    return uiPivot == UIPivot.BOTTOM_CENTER or uiPivot == UIPivot.MIDDLE_CENTER or uiPivot == UIPivot.TOP_CENTER
end

---Returns true if the UIPivot is a right aligned pivot.
---@param uiPivot UIPivot
---@return boolean
local function IsRight(uiPivot)
    return uiPivot == UIPivot.BOTTOM_RIGHT or uiPivot == UIPivot.MIDDLE_RIGHT or uiPivot == UIPivot.TOP_RIGHT
end

---Returns true if the UIPivot is a top aligned pivot.
---@param uiPivot UIPivot
---@return boolean
local function IsTop(uiPivot)
    return uiPivot == UIPivot.TOP_LEFT or uiPivot == UIPivot.TOP_CENTER or uiPivot == UIPivot.TOP_RIGHT
end

---Returns true if the UIPivot is a middle aligned pivot.
---@param uiPivot UIPivot
---@return boolean
local function IsMiddle(uiPivot)
    return uiPivot == UIPivot.MIDDLE_CENTER or uiPivot == UIPivot.MIDDLE_LEFT or uiPivot == UIPivot.MIDDLE_RIGHT
end

---Returns true if the UIPivot is a bottom aligned pivot.
---@param uiPivot UIPivot
---@return boolean
local function IsBottom(uiPivot)
    return uiPivot == UIPivot.BOTTOM_CENTER or uiPivot == UIPivot.BOTTOM_LEFT or uiPivot == UIPivot.BOTTOM_RIGHT
end
--- Scale UI Control to shrink panels. Does not scale text.
--- @param element UIControl
--- @param width number
--- @param height number
function API.ScaleUIElement(element, width, height)
    if not _G.LoopBypass then
        local function BypassLoop(fuc)
            fuc()
        end
        _G.LoopBypass = Events.Connect('LoopBypass', BypassLoop)
    end

    if not element or not element:IsA('UIControl') then
        warn('element is not found or a UIControl')
        return
    end
    width = width or 1
    height = height or 1

    local xWidth = (width / element.width)
    local xHeight = (height / element.height)
    element.width = math.floor(element.width * xWidth)
    element.height = math.floor(element.height * xHeight) 
    local Children = element:FindDescendantsByType('UIControl')

    for index, panel in ipairs(Children) do
        panel.width = math.floor(panel.width * xWidth)
        panel.height = math.floor(panel.height * xHeight)
        panel.x = math.floor(panel.x * xWidth)
        panel.y = math.floor(panel.y * xHeight)
    end
end

---Returns true if the cursor is over an object.
---@param object CoreObject
---@param includeHidden boolean
---@return boolean
function API.IsCursorOver(object, includeHidden)
    if not includeHidden and not API.IsObjectVisible(object) then
        return false
    end

    local cursorPosition = UI.GetCursorPosition()
    local absoluteX, absoluteY = API.GetAbsolutePosition(object)
    
    return cursorPosition.x >= absoluteX and cursorPosition.x <= absoluteX + object.width and
        cursorPosition.y >= absoluteY and
        cursorPosition.y <= absoluteY + object.height
end

---Returns the absolute position of an object.
---@param object CoreObject
---@return number
---@return number
function API.GetAbsolutePosition(object)
    return API.GetAbsolutePosition_R(object, 0, 0)
end

---A recursive function that climbs the hierarchy to calculate an objects absolute position.
---@param object CoreObject
---@param x number
---@param y number
---@return number
---@return number
function API.GetAbsolutePosition_R(object, x, y)
    if Object.IsValid( object) then 
        local parent = object:FindAncestorByType("UIControl")
        if parent then
            local parentX, parentY = API.GetAbsolutePosition_R(parent, x, y)
            x = parentX + x
            y = parentY + y
        end

        local localX, localY = API.GetTopLeftPosition(object)
        x = localX + x
        y = localY + y
    end

    return x, y
end

---Returns the x and y coordinates for the top left position of a UIControl. Takes UIScrollPanels into account.
---@param object CoreObject
---@param parentWidth number
---@param parentHeight number
---@return number
---@return number
function API.GetTopLeftPosition(object, parentWidth, parentHeight)
    if not object:IsA('UIControl') then
        return 0, 0
    end

    local x, y = object.x, object.y
    if IsCenter(object.anchor) then
        x = x - object.width / 2
    elseif IsRight(object.anchor) then
        x = x - object.width
    end

    if IsMiddle(object.anchor) then
        y = y - object.height / 2
    elseif IsBottom(object.anchor) then
        y = y - object.height
    end
    local parent = object:FindAncestorByType("UIControl")
    if not parent  or parent:IsA('UIContainer') then
        local screenSize = UI.GetScreenSize()
        parentWidth = screenSize.x
        parentHeight = screenSize.y
    else
        parentWidth = parentWidth or parent.width
        parentHeight = parentHeight or parent.height
    end

    -- Handle scrollers
    if object:IsA('UIScrollPanel') then
        if object.orientation == Orientation.HORIZONTAL then
            x = x - object.scrollPosition
        else
            y = y - object.scrollPosition
        end
    end

    if IsCenter(object.dock) then
        x = x + parentWidth / 2
    elseif IsRight(object.dock) then
        x = x + parentWidth
    end
    if IsMiddle(object.dock) then
        y = y + parentHeight / 2
    elseif IsBottom(object.dock) then
        y = y + parentHeight
    end

    return x, y
end

---Returns true if the control is currently visible on screen. Takes UIScrollPanels into account.
---@param object CoreObject
---@return boolean
function API.IsObjectVisible(object)
    -- Exit early for hidden objects
    if not object:IsVisibleInHierarchy() then
        return false
    end

    -- Exit early for non UIControls
    if not object:IsA('UIControl') then
        return true
    end

    -- Check scroll panel bounds
    local parentScrollPanel = object:FindAncestorByType('UIScrollPanel')
    if parentScrollPanel then
        local x, y = object.x, object.y
        if IsCenter(object.anchor) then
            x = x - object.width / 2
        elseif IsRight(object.anchor) then
            x = x - object.width
        end

        if IsMiddle(object.anchor) then
            y = y - object.height / 2
        elseif IsBottom(object.anchor) then
            y = y - object.height
        end

        if parentScrollPanel.orientation == Orientation.HORIZONTAL then
            return x + object.width > parentScrollPanel.scrollPosition and
                x < parentScrollPanel.scrollPosition + parentScrollPanel.width
        else
            return y + object.height > parentScrollPanel.scrollPosition and
                y < parentScrollPanel.scrollPosition + parentScrollPanel.height
        end
    end

    return true
end


return API
