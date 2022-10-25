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
    This script allows you to create a counter that can be used for animation. You dont need to update it, calling
    GetValue() will give you the value of the counter at the current time. Unlike solutions that tick, this evaluates
    a value at any given time.


    Example:

    -- Get the API
    local COUNTER = require(script:GetCustomProperty("APICounter")) ---@type APICounter

    -- This will give us a counter that goes from 0 to 1 over 1 second, driven by time
    local myCounter = COUNTER.New()

    -- To get the value of the counter at the current time use myCounter:GetValue()

    -- Lets print its time out and stop when the counter reaches 1. This will take 1 second
    repeat 
        print (myCounter:GetValue())
        Task.Wait()
    until myCounter:GetValue() == 1

    -- Lets reset ourselves back to zero
    myCounter:SetValue(0)

    -- Lets find out what the current value of time is
    local t = myCounter:GetTime()

    -- And print the value of the counter at that time, which will be 0
    print( myCounter:GetValue(t))

    -- Now lets go forward in time by 0.5 seconds
    t = t + 0.5

    -- Now this prints 0.5
    print (myCounter:GetValue(t))

    -- Lets change the rate of change to 0.5
    myCounter:SetRateOfChange(0.5) 

    -- Now this prints 0.25, because its rate of change was halved
    print(myCounter:GetValue(t))

    -- Lets now change the rate of change to -1... but after 0.5 seconds
    myCounter:SetRateOfChange(-1, t)

    -- This still prints 0.25, because we've changed the rate of change but havent advanced forward in time
    print(myCounter:GetValue(t))

    -- Lets go forward in time by another 0.1 seconds
    t = t + 0.1

    -- Now the counter has gone from 0.25 to 0.15 because in that 0.1 seconds the counter decreased by 1 * 0.1
    print(myCounter:GetValue(t))

    -- Lets change our counter to be at 0 with a rate of change of 1 and a duration of 4 seconds
    myCounter:SetValue(0)
    myCounter:SetRateOfChange(1)
    myCounter:SetDuration(4)

    -- This will print 0
    print (myCounter:GetValue())

    -- Lets wait a little
    Task.Wait(1)

    -- This will print a number close to 0.25
    print (myCounter:GetValue())

    -- Lets fine out how long it will take to reach '0.8'
    local waitTime = myCounter:GetRemainingTimeToValue(0.8)

    Task.Wait(waitTime)

    -- This will print a number pretty close to 0.8. It wont be exact due to framerates and stuff
    print (myCounter:GetValue())

    -- Lets find out how inaccurate our time offset is
    local timeOffset = myCounter:GetTime() - myCounter:GetTimeAtValue(0.8)

    -- On my computer, this prints 0.004589
    print (timeOffset)

    -- Lets set the value of the counter to 0.8
    myCounter:SetValue(0.8)

    -- And find out what value it would be... 0.5 seconds earlier

    -- This prints 0.55
    print (myCounter:GetValue( myCounter:GetTime() - 1) )

    -- Lets verify it by going back in time...

    -- Okay we cant do that...lets change the rate to be negative again
    myCounter:SetRateOfChange(-1)

    Task.Wait(1)

    -- I got 0.5498, which is very close to 0.5
    print (myCounter:GetValue())

    -- You can also provide your own time function to a counter.
    t = 0
    function getTime() return t end

    myCounter:SetTimeFunction(getTime)

    -- Now our counter is no longer driven by 'time' but by 1

    -- Our counter, despite changing the time function, is still 0.5498
    print(myCounter:GetValue())

    -- Lets reset
    myCounter:SetValue(0)
    myCounter:SetRateOfChange(1)
    myCounter:SetDuration(3)

    -- prints 0
    print(myCounter:GetValue())

    -- lets set the time from 0 to 1.5
    t = 1.5
    -- prints 0.5
    print(myCounter:GetValue())

    -- wait a second in real time
    Task.Wait(1)

    -- still 0.5 because t didnt change
    print(myCounter:GetValue())

--]]


---@class APICounter
local Counter = {
    lastValue = 0.0,
    minValue = 0.0,
    maxValue = 1.0,
    rateOfChange = 1.0,
    duration = 1.0,
    lastTime = 0.0
}
Counter.__index = Counter

---Creates a new counter with optional parameters
---@param value number
---@param min number
---@param max number
---@param rateOfChange number
---@param timeFunction fun():number
---@param currentTime number Optional value of time, otherwise self.getTime()
---@return Counter
function Counter.New(value, min, max, duration, rateOfChange, timeFunction, currentTime )
    local getTime = timeFunction or time
    value = value or 0.0
    min = min or 0.0
    max = max or 1.0
    duration = duration or 1.0
    rateOfChange = rateOfChange or 1.0
    currentTime = currentTime or getTime()

    local self = {}
    self.lastValue = value
    self.minValue = min
    self.maxValue = max
    self.rateOfChange = rateOfChange
    self.duration = duration
    self.lastTime = currentTime
    self.getTime = getTime

    setmetatable(self, Counter)

    return self
end

---Sets the rate of change at a moment in time, ensuring the value being counted is affected correctly
---@param rateOfChange number The amount a counter increases over 1 second
---@param currentTime number Optional value of time, otherwise self.getTime()
function Counter:SetRateOfChange(rateOfChange, currentTime)
    rateOfChange = rateOfChange or 0.0
    currentTime = currentTime or self.getTime() 
    if self.rateOfChange == rateOfChange then
        return
    end
    self:AdjustTime(currentTime)
    self.rateOfChange = rateOfChange
end

---Sets the duration at a moment in time, ensured the value being counted is affected correctly
---@param duration number The time taken for the counter to increase by 1
---@param currentTime number Optional value of time, otherwise self.getTime()
function Counter:SetDuration(duration, currentTime)
    duration = duration or 1.0
    currentTime = currentTime or self.getTime() 
    if self.duration == duration then
        return
    end
    self:AdjustTime(currentTime)
    self.duration = duration
end

---Sets the function for providing time, ensuring the value remains the same
---@param getTime fun():number
---@param currentTime number Optional value of time, otherwise self.getTime()
function Counter:SetTimeFunction(getTime, currentTime)
    value = self:GetValue(currentTime)
    self.getTime = getTime or time
    self:SetValue(value)
end

---Changes the value of the counter
---@param value number
---@param currentTime number Optional value of time, otherwise self.getTime()
function Counter:SetValue(value, currentTime)
    value = value or 0.0
    currentTime = currentTime or self.getTime()
    self.lastValue = self:Clamp(value)
    self.lastTime = currentTime
end

---Changes the min value of the counter
---@param maxValue number
---@param currentTime number Optional value of time, otherwise self.getTime()
function Counter:SetMinValue(maxValue, currentTime)
    value = self:GetValue(currentTime)
    self.minValue = maxValue
    self:SetValue(value, currentTime)
end

---Changes the max value of the counter
---@param minValue number
---@param currentTime number Optional value of time, otherwise self.getTime()
function Counter:SetMaxValue(maxValue, currentTime)
    value = self:GetValue(currentTime)
    self.maxValue = maxValue
    self:SetValue(value, currentTime)
end

---Clamps a number better the upper and lower limits of the counter
---@param value number
---@param currentTime number Optional value of time, otherwise self.getTime()
function Counter:Clamp(value)
    if self.maxValue then
        value = math.min(value, self.maxValue)
    end
    if self.minValue then
        value = math.max(value, self.minValue)
    end
    return value
end

---Finds the value of counter at a moment in time
---@param currentTime number  Optional value of time, otherwise self.getTime()
---@return number
function Counter:GetValue(currentTime)
    if self.rateOfChange == 0 then
        return self.lastValue
    end
    currentTime = currentTime or self.getTime()
    local delta = (currentTime - self.lastTime) * self.rateOfChange
    
    -- special case for when the duration is 0 to make the value instantly go to min or max
    if self.duration == 0 then
        if delta > 0 then 
            return self.maxValue
        elseif delta < 0 then 
            return self.minValue
        else 
            return self.lastValue   
        end     
    end

    local value = self.lastValue + delta / self.duration
    return self:Clamp(value)
end

function Counter:GetTime()
    return self.getTime()
end

---Gets a number 0-1 between the min and max of the current value
---@param currentTime number Optional value of time, otherwise self.getTime()
---@return any
function Counter:GetNormalizedValue(currentTime)
    local value = self:GetValue(currentTime)
    return (value - self.minValue) / (self.maxValue-self.minValue)
end

---Sets a number thats between 0-1 to be between the min and max
---@param value number
---@param currentTime number Optional value of time, otherwise self.getTime()
function Counter:SetNormalizedValue(value, currentTime)
    value = CoreMath.Lerp(self.minValue, self.maxValue, value)
    self:SetValue(currentTime)
end

---Updates the counter
---@param currentTime number Optional value of time, otherwise self.getTime()
function Counter:AdjustTime(currentTime)
    currentTime = currentTime or self.getTime()
    self.lastValue = self:GetValue(currentTime)
    self.lastTime = currentTime
end

---Finds the time when the counter will be at a certain value (can be negative or nil due to the rate of change)
---@param value number
---@return any
function Counter:GetTimeAtValue(value)
    if self.value == value then
        return self.lastTime
    end
    if self.rateOfChange == 0 or self.duration == 0 then
        return nil
    end
    return self.lastTime + (value - self.lastValue) * self.duration / self.rateOfChange
end

---Finds the time when the counter will be at the max value (can be negative or nil due to the rate of change)
---@return number
function Counter:GetTimeAtMax()
    return self:GetTimeAtValue(self.maxValue)
end

---Finds the time when the counter will be at the min value (can be negative or nil due to the rate of change)
---@return number
function Counter:GetTimeAtMin()
    return self:GetTimeAtValue(self.minValue)
end

---Find how many seconds till the counter reaches a certain value (can be negative or nil due to the rate of change)
---@param value number
---@param currentTime number Optional value of time, otherwise self.getTime()
---@return number
function Counter:GetRemainingTimeToValue(value, currentTime)
    currentTime = currentTime or self.getTime()
    local timeAtValue = self:GetTimeAtValue(value)
    if timeAtValue == nil then
        return nil 
    end
    return timeAtValue - currentTime
end

---How many seconds till the counter reaches the max value (can be negative or nil due to the rate of change)
---@param currentTime number Optional value of time, otherwise self.getTime()
---@return number
function Counter:GetRemainingTimeToMax(currentTime)
    return self:GetRemainingTimeToValue(self.maxValue, currentTime)
end

---How many seconds till the counter reached the min value (can be negative or nil due to the rate of change)
---@param currentTime number Optional value of time, otherwise self.getTime()
---@return number
function Counter:GetRemainingTimeToMin(currentTime)
    return self:GetRemainingTimeToValue(self.minValue, currentTime)
end

return Counter