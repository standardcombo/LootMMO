--[[
Copyright 2019 Manticore Games, Inc.

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

-- User exposed properties
local EFFECT_OBJECT = script:GetCustomProperty("EffectObject"):WaitForObject()
local AUTO_START = script:GetCustomProperty("AutoStart")
local REPEAT_COUNT = script:GetCustomProperty("RepeatCount")
local START_DELAY_RANGE = script:GetCustomProperty("StartDelayRange")
local INTERVAL_DELAY_RANGE = script:GetCustomProperty("IntervalDelayRange")

local PLAY_EVENT_NAME = script:GetCustomProperty("PlayEffectEventName")
local STOP_EVENT_NAME = script:GetCustomProperty("StopEffectEventName")
local ON_PLAYED_EVENT_NAME = script:GetCustomProperty("OnPlayedEventName")
local ON_STOPPED_EVENT_NAME = script:GetCustomProperty("OnStoppedEventName")

-- Internal variables
local t = 0
local canPlay = AUTO_START
local isPlaying = false
local delayTime = START_DELAY_RANGE.x
local currentInterval = INTERVAL_DELAY_RANGE.x
local currentCount = 0

-- Check user properties
if not script.isClientOnly then
    warn("This script works best when put in the Client Context. Please consider using lerp animations within Client Context.")
end

-- <bool> IsObjectValidEffect(CoreObject)
-- Checks if the effectObject is a Vfx or Audio
function IsObjectValidEffect(effectObject)
    if not Object.IsValid(effectObject) then
        return false
    end

    local result = false

    if effectObject:IsA("Vfx") or
    effectObject:IsA("Audio") or
    effectObject:IsA("SmartAudio") then
        result = true
    end

    return result
end

function Tick(deltaTime)
    -- Returns if the effect object is nil or Play() can't be started
    if not canPlay then return end
    if not Object.IsValid(EFFECT_OBJECT) then return end

    delayTime = delayTime - deltaTime
    if delayTime < 0 then delayTime = 0 end

    if delayTime ~= 0 then return end
    if currentCount == REPEAT_COUNT then
 --[[        if isPlaying then
            if ON_STOPPED_EVENT_NAME and ON_STOPPED_EVENT_NAME ~= "" then
                Events.Broadcast(ON_STOPPED_EVENT_NAME)
            end
            isPlaying = false
        end ]]
        return
    end

    t = t + deltaTime
    if t >= currentInterval then
        PlayEffect()

        if REPEAT_COUNT > -1 then
            currentCount = currentCount + 1
        end

        currentInterval = RandomFloat(INTERVAL_DELAY_RANGE.x, INTERVAL_DELAY_RANGE.y)

        t = 0
    end
end

function TriggerEffect()
    canPlay = true
    isPlaying = true
    currentCount = 0
    delayTime = RandomFloat(START_DELAY_RANGE.x, START_DELAY_RANGE.y)
    currentInterval = RandomFloat(INTERVAL_DELAY_RANGE.x, INTERVAL_DELAY_RANGE.y)
end

function PlayEffect()
    if not Object.IsValid(EFFECT_OBJECT) then return end

    if IsObjectValidEffect(EFFECT_OBJECT) then
        EFFECT_OBJECT:Play()
    end

    for _, childEffect in ipairs(EFFECT_OBJECT:GetChildren()) do
        if IsObjectValidEffect(childEffect) then
            childEffect:Play()
        end
    end

    if ON_PLAYED_EVENT_NAME and ON_PLAYED_EVENT_NAME ~= "" then
        Events.Broadcast(ON_PLAYED_EVENT_NAME)
    end
end

function StopEffect()
    if not Object.IsValid(EFFECT_OBJECT) then return end

    if IsObjectValidEffect(EFFECT_OBJECT) then
        EFFECT_OBJECT:Stop()
    end

    for _, childEffect in ipairs(EFFECT_OBJECT:GetChildren()) do
        if IsObjectValidEffect(childEffect) then
            childEffect:Stop()
        end
    end

    if ON_STOPPED_EVENT_NAME and ON_STOPPED_EVENT_NAME ~= "" then
        Events.Broadcast(ON_STOPPED_EVENT_NAME)
    end
end

function ResetEffect()
    canPlay = AUTO_START
    currentCount = 0
    delayTime = RandomFloat(START_DELAY_RANGE.x, START_DELAY_RANGE.y)
    currentInterval = RandomFloat(INTERVAL_DELAY_RANGE.x, INTERVAL_DELAY_RANGE.y)
end

-- <float> RandomFloat(number, number)
-- Returns a random float value given the lower and greater numbers
function RandomFloat(lower, greater)
    return lower + math.random()  * (greater - lower);
end

-- Initialize
if Object.IsValid(EFFECT_OBJECT) then
    StopEffect()
    ResetEffect()
end

if PLAY_EVENT_NAME and PLAY_EVENT_NAME ~= "" then
    Events.Connect(PLAY_EVENT_NAME, TriggerEffect)
end

if STOP_EVENT_NAME and STOP_EVENT_NAME ~= "" then
    Events.Connect(STOP_EVENT_NAME, StopEffect)
end