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
local function DisconnectEvent(event)
    for key, value in pairs(t) do
        for _, listener in pairs(event._listeners) do
            listener:Disconnect()
        end
    end
end
function New()
    ---@class LuaEvent
    local newEvent = {
        _listeners = {},
        Trigger = FireEvent,
        Connect = ConnectEvent,
        Disconnect = DisconnectEvent,
        isUsed = false
    }
    return newEvent
end

---Creates a new event
function SafeNew()
    local eventName
    local isUsed
    local ConnectedEvents = {}
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
            local newEvent = Events.Connect(eventName, listener, ...)
            table.insert(ConnectedEvents, newEvent)
            return newEvent
        end,
        Trigger = function(self, ...)
            if isUsed then
                Events.Broadcast(eventName, ...)
            end
        end,
        Disconnect = function(self, ...)
            if isUsed then
                for key, value in pairs(ConnectedEvents) do
                    value:Disconnect()
                end
            end
        end
    }
    return luaEvent
end

local returntable = {
    name = 'Lua Event',
    version = 1.3,
    desctription = 'Custom events system',
    New = New,
    NewSafeEvent = SafeNew
}

_G['utils.LuaEvents'] = returntable
return returntable
