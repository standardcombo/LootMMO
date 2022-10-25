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
    Calling Event.New() will return you a lua function table which provides a Connect and Run function.

    Example usage:

    local EVENT = require(script:GetCustomProperty("APIEventHelper"))
    local someEvent = EVENT.New()

    You can use events just like core events. eg:

    function callback() print ("Hi") end

    someEvent:Connect( callback )

    To disconnect you need to use the handler. eg:
    
    local handler = someEvent:Connect( callback )
    handler:Disconnect()

    If you use an annoymous function you will want to call Disconnect on the handler

    To make the event run, simply call

    someEvent:Run()

    You can also pass parameters:

    someEvent:Run(1,2,3)
--]]


---@class APIEventHelper
local Event = {}
local uniqueId = 1

---Creates a new event
function Event.New()
    local eventName
    local isUsed
    local function Setup()
        if not isUsed then
            eventName = "uniqueID_" .. tostring(uniqueId)
            uniqueId = uniqueId+1
            isUsed = true
        end
    end
    ---@class LuaEvent
    local luaEvent = {
        Connect = function(self, listener, ...)
            Setup()
            return Events.Connect(eventName, listener, ...) end,
        Run = function(self, ...)
            if isUsed then
                Events.Broadcast(eventName, ...)
            end
        end
    }
    return luaEvent
end
return Event