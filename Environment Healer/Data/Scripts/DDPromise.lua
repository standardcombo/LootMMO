--[[
    DDPromise
    v1.0.0
    by: truedarkdev (DarkDev#3167 at discord)
]]--

local DDPromise = {
    STATE_PENDING = 1,
    STATE_RUNNING = 2,
    STATE_FINISHED = 3,

    RESULT_NONE = 1,
    RESULT_SUCCEEDED = 2,
    RESULT_REJECTED = 3,
}
DDPromise.__index = DDPromise

local DDFuture = {
    currentState = DDPromise.STATE_PENDING,
    resultState = DDPromise.RESULT_NONE,
    resultVal = nil,
    stateChangeCallbacks = nil,
    resultCallbacks = nil,
}
DDFuture.__index = DDFuture

function DDFuture:GetState()
    return self.currentState
end

function DDFuture:IsFinished()
    return self.currentState == DDPromise.STATE_FINISHED
end

function DDFuture:GetResultState()
    return self.resultState
end

-- Make sure to not manipulate the result value
function DDFuture:GetResultValue()
    return self.resultVal
end

function DDFuture:AddStateChangeCallback(callback)
    self.stateChangeCallbacks[#self.stateChangeCallbacks + 1] = callback
end

function DDFuture:RemoveStateChangeCallback(callback)
    local index = 0
    for key, value in ipairs(self.stateChangeCallbacks) do
        if value == callback then
            index = key
            break
        end
    end
    if index > 0 then
        table.remove(self.stateChangeCallbacks, index)
    end
end

function DDFuture:AddResultCallback(callback)
    self.resultCallbacks[#self.resultCallbacks + 1] = callback
end

function DDFuture:RemoveResultCallback(callback)
    local index = 0
    for key, value in ipairs(self.resultCallbacks) do
        if value == callback then
            index = key
            break
        end
    end
    if index > 0 then
        table.remove(self.resultCallbacks, index)
    end
end

-- Should only be called from a promise
local function FutureSetState(future, state)
    future.currentState = state
    for _, callback in ipairs(future.stateChangeCallbacks) do
        callback(future, state)
    end
end

-- Should only be called from a promise
local function FutureSetResult(future, resultState, resultVal)
    future.resultState = resultState
    future.resultVal = resultVal

    for _, callback in ipairs(future.resultCallbacks) do
        callback(future, resultState)
    end
end

function DDFuture.New()
    local newFuture = setmetatable({}, DDFuture)
    newFuture.stateChangeCallbacks = {}
    newFuture.resultCallbacks = {}
    return newFuture
end

function DDPromise.New()
    local newPromise = setmetatable({}, DDPromise)
    newPromise.future = DDFuture.New()
    return newPromise
end

function DDPromise:GetFuture()
    return self.future
end

function DDPromise:GetState()
    return self.future:GetState()
end

function DDPromise:IsFinished()
    return self.future:IsFinished()
end

function DDPromise:GetResultState()
    return self.future:GetResultState()
end

function DDPromise:SetState(state)
    assert(self.future:GetState() < state)
    FutureSetState(self.future, state)
end

function DDPromise:SetIsRunning()
    self:SetState(DDPromise.STATE_RUNNING)
end

function DDPromise:SetResult(resultState, resultVal)
    assert(not(resultVal) or (resultVal and type(resultVal) == "table"))
    assert(self.future:GetResultState())
    FutureSetResult(self.future, resultState, resultVal)
    self:SetState(DDPromise.STATE_FINISHED)
end

return DDPromise
