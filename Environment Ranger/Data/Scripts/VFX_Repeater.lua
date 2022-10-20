local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local propVFX = script:GetCustomProperty("VFX"):WaitForObject()
local autoStart = script:GetCustomProperty("AutoStart")
local propStartDelay = script:GetCustomProperty("StartDelay")
local repeatCount = script:GetCustomProperty("RepeatCount")
local intervalRange = script:GetCustomProperty("RepeatIntervalRange")
local t = 0
local canStart = autoStart
local delayTime = propStartDelay
local currentInterval = intervalRange.x
local currentCount = 0

function Tick(deltaTime)
    if not canStart then return end
    if not Object.IsValid(propVFX) then return end
    delayTime = delayTime - deltaTime
    if delayTime < 0 then delayTime = 0 end
    if delayTime ~= 0 then return end
    if currentCount == repeatCount then return end
    t = t + deltaTime
    if t > currentInterval then
        propVFX:Play()
        API_RE.Broadcast("TriggerVFXFeedback", propVFX)
        if repeatCount > -1 then
            currentCount = currentCount + 1
        end
		currentInterval = RandomFloat(intervalRange.x, intervalRange.y)			
        t = 0
    end
end

function TriggerVFX(vfx)
    if vfx ~= propVFX then return end
    ResetVFX(vfx)
    canStart = true
end

function ResetVFX(vfx)
    if vfx ~= propVFX then return end
    vfx:Stop()
    canStart = false
    delayTime = propStartDelay
    currentCount = 0
    currentInterval = RandomFloat(intervalRange.x, intervalRange.y)
end

function RandomFloat(lower, greater)
    return lower + math.random()  * (greater - lower);
end

API_RE.Connect("TriggerVFX", TriggerVFX)
API_RE.Connect("ResetTriggerVFX", ResetVFX)