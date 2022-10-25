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
    An attribute is a simple number calculator, allowing you to add 'multipliers' and 'adders' to a value, useful for
    calculating buff values
    

    Example:
 
    -- Example of how to make an attribute
    local ATTRIBUTE = require(script:GetCustomProperty("APIAttribute"))
    
    local baseValue = 100
    local myAttribute = ATTRIBUTE.New(baseValue)

    -- Now lets add 10%
    myAttribute:IncreaseMultiplier(0.1)
    -- And another 10%
    myAttribute:IncreaseMultiplier(0.1)

    -- This will print out 120, because we've added 10% of the base value twice
    print(myAttribute:GetTotal())

    -- This will clear the adders and multipliers
    myAttribute:Reset()

    -- Now we have 100 again
    print(myAttribute:GetTotal())

    -- Lets just add '50' and 10%
    myAttribute:IncreaseAddition(50)
    myAttribute:IncreaseMultiplier(0.1)
  
   -- This will print 100 + 0.1*100 + 50... so 160
   print(myAttribute:GetTotal())


--]]

---@class Attribute
local Attribute = {}
Attribute.__index = Attribute

Attribute.base = 0
Attribute.total = 0
Attribute.addition = 0
Attribute.multiplier = 0
Attribute.dirty = false

---@param base number
---@return Attribute
function Attribute.New(base)
    local self = {
        base = base,
        addition = 0,
        multiplier = 0,
        total = base,
        dirty = false,
    }
    setmetatable(self, Attribute)
    return self
end

function Attribute:Reset()
    self.total = 0
    self.addition = 0
    self.multiplier = 0
    self.dirty = false
end

function Attribute:IncreaseAddition(value)
    if value == nil then return end
    self.addition = self.addition + value
    self.dirty = true
end

function Attribute:IncreaseMultiplier(value)
    if value == nil then return end
    self.multiplier = self.multiplier + value
    self.dirty = true
end

function Attribute:UpdateTotal()
    self.total = self.base + self.base * self.multiplier + self.addition
end

function Attribute:GetTotal()
    if self.dirty then
        self:UpdateTotal()
    end
    return self.total
end

return Attribute




