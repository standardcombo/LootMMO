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

---@type APIRealTime
local REALTIME = require(script:GetCustomProperty("APIRealTime"))

---@type APIBuffs
local BUFFS = require(script:GetCustomProperty("APIBuffs"))

---@class TimeSimulatorFunctionTable
---@field OnStepTime fun(time:number)
---@field GetNextTime fun(time:number)
---@field OnStepTimeBegin fun()
---@field OnStepTimeEnd fun()
---@field GetStartTime fun()

---@class APITimeSimulator
local API = {}

---@type table<any, TimeSimulatorFunctionTable>
local systems = {}
local lastTime = REALTIME.GetRealTime()

---Add a new system
---@param id any
---@param functionTable TimeSimulatorFunctionTable
function API.RegisterSystem(id, functionTable)
    assert(id)
    assert(functionTable)

    local system = {}

    systems[id] = functionTable
end

---Unregisters a system
---@param id any
function API.UnregisterSystem(id)
    systems[id] = nil
end

function API.UpdateToTime(endTime)
    if _G.IsReplicatorSpawning then
        return
    end

    local minStartTime = nil
    for _, s in pairs(systems) do
        if s.GetStartTime then
            local startTime = s.GetStartTime()
            if startTime then
                minStartTime = minStartTime and math.min(minStartTime, startTime) or startTime
            end
        end
    end

    local prevTime = lastTime
    if minStartTime then
        prevTime = math.min(prevTime, minStartTime)
    end

    BUFFS.UpdateLinkedBuffs()

    for _, s in pairs(systems) do
        if s.OnStepTimeBegin then
            s.OnStepTimeBegin()
        end
    end

    -- If the prev time is the same as the last time, dont call OnStepTime
    if prevTime ~= lastTime then
        for _, s in pairs(systems) do
            if s.OnStepTime then
                s.OnStepTime(prevTime)
            end
        end
        BUFFS.UpdateLinkedBuffs()
        Task.Wait()
    end

    repeat
        local nextTime = endTime

        -- Check if we need an intermediate step
        for _, s in pairs(systems) do
            if s.GetNextTime then
                local t = s.GetNextTime(prevTime)
                if t and t > prevTime then
                    nextTime = math.min(nextTime, t)
                end
            end
        end
        prevTime = nextTime

        for _, s in pairs(systems) do
            if s.OnStepTime then
                s.OnStepTime(prevTime)
            end
        end
        BUFFS.UpdateLinkedBuffs()
        Task.Wait()
    until nextTime == endTime

    -- Remember for next frame what our time was
    lastTime = endTime

    for _, s in pairs(systems) do
        if s.OnStepTimeEnd then
            s.OnStepTimeEnd()
        end
    end

end

Task.Spawn(function()
    API.UpdateToTime(REALTIME.GetRealTime())
end).repeatCount = -1

return API