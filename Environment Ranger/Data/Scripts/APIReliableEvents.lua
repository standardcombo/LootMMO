--[[
This system replaces all the 'Events' namespace functions and provides added functionality.

First, it enables passing core objects as parameters or in tables. The receiver does not wait for the object, so a
server event passing a networked object, for example, may be received as nil instead on the client.

Additionally, this adds a queue layer so the event limit no longer results in failed events, just delays. Mixed use of
this API with the built in 'Events' namespace functions is not recommended and probably won't work.

Note that core object references are no longer supported as argument types.
]]

local API_Q = require(script:GetCustomProperty("APIQueue"))

local eventQueue = API_Q.New()
local nextSplitEventIndex = 1

function ObjectToReference_R(t)
    for k, v in pairs(t) do
        if type(v) == "table" then
            -- We have to copy the table in exactly this case because we don't want to modify the original
            local subTCopy = {}

            for subK, subV in pairs(v) do
                subTCopy[subK] = subV
            end

            t[k] = subTCopy
            ObjectToReference_R(subTCopy)
        elseif type(v) == "userdata" then
            if v:IsA("CoreObject") then
                t[k] = v:GetReference()
            else
                assert(not v:IsA("CoreObjectReference"))
            end
        end
    end

    return t
end

function ReferenceToObject_R(t)
    for k, v in pairs(t) do
        if type(v) == "table" then
            ReferenceToObject_R(v)
        elseif type(v) == "userdata" and v:IsA("CoreObjectReference") then
            t[k] = v:GetObject()
        end
    end

    return t
end

function TickQueue()
    if eventQueue:Count() > 20 then
        warn("Event queue is backed up by at least 2 seconds. You should broadcast fewer networked events.")
    end

    while not eventQueue:Empty() do
        local data = eventQueue:Front()
        local result = data.method(table.unpack(data.args))

        if result == BroadcastEventResultCode.EXCEEDED_RATE_LIMIT then
            return
        else
            -- these cases should never have made it into the queue in the first place
            assert(result ~= BroadcastEventResultCode.FAILURE)
            assert(result ~= BroadcastEventResultCode.EXCEEDED_SIZE_LIMIT)
            eventQueue:PopFront()
        end
    end
end

--[[function BroadcastSplitMessage(method, message, args)
    local size = tonumber(string.match(message, ".*(%d+)%."))

    if size > 1024 then
        warn("Networked event of size %d is too big to split up and will not be sent", size)
        return
    end

    local index = nextSplitEventIndex
    nextSplitEventIndex = nextSplitEventIndex + 1
end]]

local API = {}

function API.Connect(eventName, listener, ...)
    assert(listener)
    local extraArgs = {...}

    return Events.Connect(eventName, function(...)
        local args = ReferenceToObject_R({...})

        for _, extraArg in pairs(extraArgs) do
            table.insert(args, extraArg)
        end

        listener(table.unpack(args))
    end)
end

function API.ConnectForPlayer(eventName, listener, ...)
    assert(listener)
    local extraArgs = {...}

    return Events.ConnectForPlayer(eventName, function(player, ...)
        local args = ReferenceToObject_R({...})

        for _, extraArg in pairs(extraArgs) do
            table.insert(args, extraArg)
        end

        listener(player, table.unpack(args))
    end)
end

function API.Broadcast(eventName, ...)
    Events.Broadcast(eventName, ...)
end

function API.BroadcastToServer(...) -- eventName, ...
    local args = ObjectToReference_R({...})
    local result, message = Events.BroadcastToServer(table.unpack(args))

    if result == BroadcastEventResultCode.EXCEEDED_RATE_LIMIT then
        local data = {method = Events.BroadcastToServer, args = args}
        eventQueue:PushBack(data)
--    elseif result == BroadcastEventResultCode.EXCEEDED_SIZE_LIMIT then
--        BroadcastSplitMessage(Events.BroadcastToServer, message, args)
    end
end

function API.BroadcastToPlayer(...) -- player, eventName, ...
    local args = ObjectToReference_R({...})
    local result, message = Events.BroadcastToPlayer(table.unpack(args))

    if result == BroadcastEventResultCode.EXCEEDED_RATE_LIMIT then
        local data = {method = Events.BroadcastToPlayer, args = args}
        eventQueue:PushBack(data)
--    elseif result == BroadcastEventResultCode.EXCEEDED_SIZE_LIMIT then
--        BroadcastSplitMessage(Events.BroadcastToPlayer, message, args)
    end
end

function API.BroadcastToAllPlayers(...) -- eventName, ...
    local args = ObjectToReference_R({...})
    local result, message = Events.BroadcastToAllPlayers(table.unpack(args))

    if result == BroadcastEventResultCode.EXCEEDED_RATE_LIMIT then
        local data = {method = Events.BroadcastToAllPlayers, args = args}
        eventQueue:PushBack(data)
--    elseif result == BroadcastEventResultCode.EXCEEDED_SIZE_LIMIT then
--        BroadcastSplitMessage(Events.BroadcastToAllPlayers, message, args)
    end
end

local task = Task.Spawn(function() TickQueue() end)
task.repeatCount = -1

return API
