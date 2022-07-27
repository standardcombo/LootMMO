--Events by waffle/Divide/Chris

local uniqueId = 1

local function CheckUsed(event)
    for _, listener in pairs(event._listeners) do
        return true
    end
    return false
end
local function ConnectEvent(event, listener)
    local connection = {
        isConnected = true,
        Disconnect = function(self)
            self.isConnected = false
            event._listeners[self] = nil
            event.isUsed = CheckUsed(event)
        end
    }
    event._listeners[connection] = listener
    event.isUsed = true
    return connection
end

local function FireEvent(event, ...)
    for _, listener in pairs(event._listeners) do
        listener(...)
    end
end

function New()
    ---@class LuaEvent
    local newEvent = {
        _listeners = {},
        Trigger = FireEvent,
        Connect = ConnectEvent,
        isUsed = false
    }
    return newEvent
end

---Creates a new event
function SafeNew()
    local eventName
    local isUsed
    local function Setup()
        if not isUsed then
            eventName = 'unique_' .. tostring(uniqueId)
            uniqueId = uniqueId + 1
            isUsed = true
        end
    end
    ---@class LuaEvent
    local luaEvent = {
        Connect = function(self, listener, ...)
            Setup()
            return Events.Connect(eventName, listener, ...)
        end,
        Trigger = function(self, ...)
            if isUsed then
                Events.Broadcast(eventName, ...)
            end
        end
    }
    return luaEvent
end

return {
    name = 'Lua Event',
    version = 1.2,
    desctription = 'Custom events system',
    New = New,
    NewSafeEvent = SafeNew
}
