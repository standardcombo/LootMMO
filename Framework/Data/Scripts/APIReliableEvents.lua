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
    This script provides reliable networked Events without needing to worry about hitting rate limits. If you send too
    many Events your Events will take longer to reach their destination, so it is recommended to stay under the 10
    Events per second limit.
--]]

---@class APIReliableEvents
local API = {}

-- Constants
local MAX_RETRIES = 100
local MAX_EVENTS_PER_SECOND = 10

-- Private Variables
local eventQueue = {}

---Send an Event to the server.
---@param eventName string
function API.BroadcastToServer(eventName, ...)
    if Environment.IsClient() then
        QueueEvent(Events.BroadcastToServer, eventName, ...)
    end
end

---Send an Event to a specific Player.
---@param player Player
---@param eventName string
function API.BroadcastToPlayer(player, eventName, ...)
    if Environment.IsServer() then
        QueueEvent(Events.BroadcastToPlayer, player, eventName, ...)
    end
end

---Send an Event to all Players.
---@param eventName string
function API.BroadcastToAllPlayers(eventName, ...)
    if Environment.IsServer() then
        QueueEvent(Events.BroadcastToAllPlayers, eventName, ...)
    end
end

---Adds an Event to the queue.
---@param eventFunction function
function QueueEvent(eventFunction, ...)
    table.insert(eventQueue, {
        EventFunction = eventFunction,
        EventArgs = { ... },
        Retries = 0
    })
end

function SendQueuedEvents()
    if #eventQueue > 0 then
        local success = true
        local errorMessage
        local numberSent = 0

        while success and #eventQueue > 0 and numberSent < MAX_EVENTS_PER_SECOND do
            success, errorMessage = TrySendEvent(eventQueue[1])
            numberSent = numberSent + 1
            if success then
                table.remove(eventQueue, 1)
            elseif errorMessage and errorMessage ~= "" then
                warn(string.format("Could not send event: %s", errorMessage))
                table.remove(eventQueue, 1)
            end
        end
    end
end

function TrySendEvent(eventData)
    local success, errorMessage
    success, errorMessage = pcall(function()
        local result, resultMessage = eventData.EventFunction(table.unpack(eventData.EventArgs))
        if result == BroadcastEventResultCode.SUCCESS then
            success = true
        elseif result == BroadcastEventResultCode.EXCEEDED_RATE_WARNING_LIMIT then
            Task.Wait(1.0 / MAX_EVENTS_PER_SECOND)
            success = true
        elseif result == BroadcastEventResultCode.EXCEEDED_SIZE_LIMIT then
            errorMessage = string.format("Event: %s failed: %s", table.concat(eventData.EventArgs, ", "), resultMessage)
        else
            eventData.Retries = eventData.Retries + 1
            if eventData.Retries > MAX_RETRIES then
                errorMessage = string.format("Too many retries, dropping Event: %s", table.concat(eventData.EventArgs, ", "))
            else
                Task.Wait(1.0 / MAX_EVENTS_PER_SECOND)
            end
        end
    end)
    return success, errorMessage
end

local eventQueueTask = Task.Spawn(SendQueuedEvents)
eventQueueTask.repeatCount = -1

return API