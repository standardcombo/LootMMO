--[[
Copyright 2020 Manticore Games, Inc.

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
    Universal utility to lerp smart properties on effect objects such as Vfx and Audio.
--]]

local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

-- User exposed properties
local EFFECT_OBJECT = script:GetCustomProperty("EffectObject"):WaitForObject()
local SMART_PROPERTY_NAME = script:GetCustomProperty("SmartPropertyName")
local START_VALUE_FROM = script:GetCustomProperty("StartValue")
local END_VALUE = script:GetCustomProperty("EndValue")
local LERP_DURATION = script:GetCustomProperty("LerpDuration")
local AUTO_START = script:GetCustomProperty("AutoStart")
local START_DELAY_RANGE = script:GetCustomProperty("StartDelayRange")
local REPEAT_COUNT = script:GetCustomProperty("RepeatCount")
local BOUNCE_ON_REPEAT = script:GetCustomProperty("BounceOnRepeat")
local INTERVAL_DELAY_RANGE = script:GetCustomProperty("IntervalDelayRange")

local START_LERP_EVENT_NAME = script:GetCustomProperty("StartLerpEventName")
local STOP_LERP_EVENT_NAME = script:GetCustomProperty("StopLerpEventName")
local ON_LERP_STARTED_EVENT_NAME = script:GetCustomProperty("OnLerpStartedEventName")
local ON_LERP_STOPPED_EVENT_NAME = script:GetCustomProperty("OnLerpStoppedEventName")

-- Check user properties
if not script.isClientOnly then
	warn("This script and effects generally should be in a client context.")
end

if script.isClientOnly and not EFFECT_OBJECT.isClientOnly then
	error("EffectObject must be in a client context")
end

-- Variables
local t = 0
local canStart = AUTO_START
local delayTime = START_DELAY_RANGE
local intervalDelayTime = 0
local currentCount = 0
local revert = false
local lerpFinished = false

function Tick(deltaTime)
    -- Returns if the effect object is nil or the lerp can't be started
    if not canStart then return end
    if not Object.IsValid(EFFECT_OBJECT) then return end

    -- Handles delay
    delayTime = delayTime - deltaTime
    if delayTime < 0 then delayTime = 0 end
    if delayTime > 0 then return end

    -- Handle interval (time between repeats)
    intervalDelayTime = intervalDelayTime - deltaTime
    if intervalDelayTime < 0 then intervalDelayTime = 0 end
    if intervalDelayTime > 0 then return end

    if currentCount == REPEAT_COUNT then
        if not lerpFinished then
            -- Broadcast the stopped event if lerp reached the repeat count
            if ON_LERP_STOPPED_EVENT_NAME ~= "" then
                API_RE.Broadcast(ON_LERP_STOPPED_EVENT_NAME)
            end
            lerpFinished = true
        end
        return
    end

    -- Broadcast the start lerp event if lerp animation has started
    if t == 0 and currentCount == 0 then
        if ON_LERP_STARTED_EVENT_NAME ~= "" then
            API_RE.Broadcast(ON_LERP_STARTED_EVENT_NAME)
        end
    end

    -- Calculates lerp speed based on duration
    local lerpSpeed = deltaTime / LERP_DURATION

    -- Increment lerp
    if revert then
        t = t - lerpSpeed
    else
        t = t + lerpSpeed
    end

    -- Check if the lerp is repeated and bounced
    if t > 1 then
        if BOUNCE_ON_REPEAT then
            revert = true
            t = 1
        else
            currentCount = currentCount + 1
            t = 0
        end
    elseif t < 0 then
        currentCount = currentCount + 1
        t = 0
        revert = false
        intervalDelayTime = RandomFloat(INTERVAL_DELAY_RANGE.x, INTERVAL_DELAY_RANGE.y)
    end

    -- Lerp smart property based on property type
    local valueType = GetType(START_VALUE_FROM)

    if string.match(valueType, "Color") then
        EFFECT_OBJECT:SetSmartProperty(SMART_PROPERTY_NAME, Color.Lerp(START_VALUE_FROM, END_VALUE, t))
    elseif string.match(valueType, "Vector") then
        EFFECT_OBJECT:SetSmartProperty(SMART_PROPERTY_NAME, LerpVector(START_VALUE_FROM, END_VALUE, t))
    elseif string.match(valueType, "Rotation") then
        EFFECT_OBJECT:SetSmartProperty(SMART_PROPERTY_NAME, LerpRotation(START_VALUE_FROM, END_VALUE, t))
    elseif string.match(valueType, "number") then
        EFFECT_OBJECT:SetSmartProperty(SMART_PROPERTY_NAME, CoreMath.Lerp(START_VALUE_FROM, END_VALUE, t))
    end
end

-- <string> GetType(variable)
-- Returns the value type of a variable
function GetType(value)
    if value == nil then return "nil" end

    if type(value) == "userdata" then
        return value.type
    else
        return type(value)
    end
end

-- <Vector> LerpVector (Vector, Vector, number)
-- Lerps Vector2, Vector3, or Vector4 properties
function LerpVector(from, to, t)
    return to + (from - to) * CoreMath.Clamp(t, 0.0, 1.0)
end

-- <Rotation> LerpRotation (Rotation, Rotation, number)
-- Lerps Rotation properties by using Quaternions
function LerpRotation(from, to, t)
    local fromQuat = Quaternion.New(from)
    local toQuat = Quaternion.New(to)
    return Rotation.New(Quaternion.Slerp(fromQuat, toQuat, t))
end

-- nil StartLerp ()
-- Starts lerp of the effect object
function StartLerp()
    canStart = true
    currentCount = 0
end

-- nil ResetLerp ()
-- Resets lerp of the effect object
function ResetLerp()
    -- Reset some of the variables
    t = 0
    canStart = AUTO_START
    delayTime = RandomFloat(START_DELAY_RANGE.x, START_DELAY_RANGE.y)
    currentCount = 0

    lerpFinished = false
    EFFECT_OBJECT:SetSmartProperty(SMART_PROPERTY_NAME, START_VALUE_FROM)
end

-- <float> RandomFloat(number, number)
-- Returns a random float value given the lower and greater numbers
function RandomFloat(min, max)
    return min + math.random() * (max - min)
end

-- Initialize
ResetLerp()

if START_LERP_EVENT_NAME ~= "" then
    API_RE.Connect(START_LERP_EVENT_NAME, StartLerp)
end

if STOP_LERP_EVENT_NAME ~= "" then
    API_RE.Connect(STOP_LERP_EVENT_NAME, ResetLerp)
end