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
    Provides server authorative 'unix EPOCH' time to client and server

    os.time() returns the epoch number accurate to 1 second
    time() returns the number of seconds the server has been running accurate to the millisecond.
            in the editor, its how long the editor has been running

    REALTIME.GetRealTime() will give you a epoch time with milliseconds syncronized with the server

    Calling REALTIME.SyncronizeEpoch() on the server will recalculate the epochTimeMinusTime. However, due to
    os.time() being to the nearest second, calling this will potentially forward you in time by a second or
    back in time by a second, and should be used with consideration.

    If a server has been running for a very long time, its possible that time() doesnt accurately reflect how
    much 'real time' the server has been running for, so you might want to call REALTIME.SyncronizeEpoch() after
    a long period of time. Or if you have a live event scheduled for a certain Epoch time then you can call
    REALTIME.SyncronizeEpoch() 15 minutes before the event and create a countdown
--]]

---@class APIRealTime
local API = {}

-- For compression, we turn the really big number of epoch to a smaller number by subtracting this from it
local EPOCH_OFFSET = 1624484039

local epochTimeMinusTime = os.time() - time()

local PRIVATE_NETWORKED_KEY = "epochTimeMinusServerTime"

---If this is false GetRealTime() will still return a correct value it just wont be server authorized
---@return boolean
function API.IsValid()
    if Environment.IsClient() then
        return Game.GetLocalPlayer():GetPrivateNetworkedData(PRIVATE_NETWORKED_KEY) ~= nil
    else
        return true
    end
end

---Gives you the epoch time, accurate to the millisecond based on the last sync
---@return nil
function API.GetRealTime()
    if Environment.IsClient() then
        epochTimeMinusTime = API.ExpandTime(Game.GetLocalPlayer():GetPrivateNetworkedData(PRIVATE_NETWORKED_KEY))
        if epochTimeMinusTime == nil then
            return nil
        end
        return epochTimeMinusTime + time()
    else
        return epochTimeMinusTime + time()
    end
end

---Call this on the server to refresh the difference between epoch time and time()
function API.SyncronizeEpoch()
    if not Environment.IsServer() then
        warn ("UpdatePlayersEpoch must be called by the server")
        return
    end
    epochTimeMinusTime = os.time() - time()
end

---Updates all the players with the current offset between epoch time and server time
function API.UpdateAllPlayersEpoch()
    if not Environment.IsServer() then
        warn ("UpdatePlayersEpoch must be called by the server")
        return
    end

    epochTimeMinusTime = os.time() - time()

    for _, player in ipairs(Game.GetPlayers()) do
        API.UpdatePlayerEpoch(player)
    end
end

---Update a player so they know the offset between epoch time and server time
---@param player string|table
function API.UpdatePlayerEpoch(player)
    player:SetPrivateNetworkedData("epochTimeMinusServerTime", API.CompactTime(epochTimeMinusTime))
end

---Handy function for networking
function API.CompactTime(epochTime)
    return epochTime - EPOCH_OFFSET
end

---Handy function for networking
function API.ExpandTime(epochTime)
    return epochTime + EPOCH_OFFSET
end

return API