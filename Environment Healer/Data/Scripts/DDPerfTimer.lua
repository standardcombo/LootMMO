--[[
    DDPerfTimer
    v0.9.0
    by: truedarkdev (DarkDev#3167 at discord)
]]--

DDPERFTIMER_RUNNING = 1
DDPERFTIMER_ENDED = 2
DDPERFTIMER_PAUSED = 3

local DDPerfTimer = {
    startTime = 0.0,
    endTime = 0.0,
    sumTime = 0.0,
    state = DDPERFTIMER_ENDED,
}
DDPerfTimer.__index = DDPerfTimer

local clock = os.clock

function DDPerfTimer.New(startTimer)
    local newTimer = setmetatable({}, DDPerfTimer)
    if startTimer then
        newTimer:Start(false)
    end
    return newTimer
end

function DDPerfTimer:GetState()
    return self.state
end

function DDPerfTimer:GetTime()
    if self.state == DDPERFTIMER_RUNNING then
        return (clock() - self.startTime) + self.sumTime
    elseif self.state == DDPERFTIMER_PAUSED then
        return self.sumTime
    elseif self.state == DDPERFTIMER_ENDED then
        return (self.endTime - self.startTime) + self.sumTime
    end
    return -1.0
end

function DDPerfTimer:Start(reset)
    if reset == nil then
        reset = true
    end

    self.state = DDPERFTIMER_RUNNING
    if reset then
        self.sumTime = 0
    end
    self.startTime = clock()
end

function DDPerfTimer:Continue()
    self.state = DDPERFTIMER_RUNNING
    local now = clock()
    self.startTime = now
end

-- Doesn't change state, so GetTime doesn't work until a non quick method has been called
function DDPerfTimer:QuickContinue()
    local now = clock()
    self.startTime = now
end

function DDPerfTimer:Stop()
    self.state = DDPERFTIMER_ENDED
    self.endTime = clock()
end

function DDPerfTimer:End()
    self.state = DDPERFTIMER_ENDED
    self.endTime = clock()
    return self:GetTime()
end

function DDPerfTimer:Pause()
    self.sumTime = self:GetTime()
    self.state = DDPERFTIMER_PAUSED -- must be after GetTime() to be accurate
    return self.sumTime
end

-- Doesn't change state, so GetTime doesn't work until a non quick method has been called
function DDPerfTimer:QuickPause()
    local sumTime = self.sumTime + (clock() - self.startTime)
    self.sumTime = sumTime
    return sumTime
end

function DDPerfTimer:Reset()
    if self.state == DDPERFTIMER_RUNNING then
        self:Start(true)
    elseif self.state == DDPERFTIMER_PAUSED then
        self.sumTime = 0.0
    elseif self.state == DDPERFTIMER_ENDED then
        self.sumTime, self.startTime, self.endTime = 0.0, 0.0, 0.0
    end
end

return DDPerfTimer