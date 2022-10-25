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

-- Requires

---@type APIDatabase
local DATABASE = require(script:GetCustomProperty("APIDatabase"))
---@type APIEventHelper
local EVENT_HELPER = require(script:GetCustomProperty("APIEventHelper"))
---@type APICounter
local COUNTER = require(script:GetCustomProperty("APICounter"))

-- Class declarations for autocomplete

---@class BuffTargetFunctionTable
---@field GetLinkedBuffs fun():string[]
---@field GetPosition fun():Vector3

---@class BuffState
---@field amount APICounter
---@field linkAmount number
---@field prevLinkAmount number
---@field needsRelinking boolean
---@field permanent boolean


---@class BuffTargetRuntime
---@field buffs BuffState[]
---@field functionTable BuffTargetFunctionTable
---@field buffAddedEvent LuaEvent
---@field buffRemovedEvent LuaEvent
---@field buffChangedEvent LuaEvent
---@field buffFinishedEvent LuaEvent
---@field buffRelinkedEvent LuaEvent

---@class BuffParams
---@field amount number
---@field setAmount boolean

---@type BuffTargetRuntime
local BuffTargetRuntime = {}
BuffTargetRuntime.__index = BuffTargetRuntime

function BuffTargetRuntime.New()
    local self = {
        buffs = {},
        functionTable = {},
        buffAddedEvent = EVENT_HELPER.New(),
        buffRemovedEvent = EVENT_HELPER.New(),
        buffChangedEvent = EVENT_HELPER.New(),
        buffFinishedEvent = EVENT_HELPER.New(),
        buffRelinkedEvent = EVENT_HELPER.New(),
        buffUnlinkedEvent = EVENT_HELPER.New(),
    }
    setmetatable(self, BuffTargetRuntime)
    return self
end

---@class APIBuffs
local API = {}

---@type table<string, BuffTargetRuntime>
local buffTargets = {}

---@type table<string, string[]>
local buffIdToTargets = {}

local BUFFS_TAG = "BUFF_"

local linkedBuffsDirty = true

local isLinking = false

API.Events = {
    BuffAdded = BUFFS_TAG .. "Added",
    BuffChanged = BUFFS_TAG .. "Changed",
    BuffRemoved = BUFFS_TAG .. "Removed",
    BuffFinished = BUFFS_TAG .. "Finished",
    BuffRelinked = BUFFS_TAG .. "Relinked",
    HandleBuffs = BUFFS_TAG .. "Handle",
    TargetRegistered = BUFFS_TAG .. "Registered",
    TargetUnregistered = BUFFS_TAG .. "Unregistered",
    PrepareLinkedBuffs = BUFFS_TAG .. "PrepareLinking"
}

API.Settings = {
    Name = "Name",
    UniqueStorageId = "UniqueStorageId",
    Duration = "Duration",
    MaxStacks = "MaxStacks",
    Permanent = "Permanent",
}

---Registers a target to the buff system so it can recieve buffs
---@param targetId string
---@param functionTable BuffTargetFunctionTable
function API.RegisterTarget(targetId, functionTable)
    local buffTargetRuntime = BuffTargetRuntime.New()
    buffTargetRuntime.functionTable =  functionTable

    buffTargets[targetId] = buffTargetRuntime
    Events.Broadcast(API.Events.TargetRegistered, targetId)
end

function API.ClearTargetRecieveBuffs(targetId)
    for _, targets in pairs(buffIdToTargets) do
        targets[targetId] = nil
    end
end

function API.AddTargetRecieveBuff(targetId, buffId)
    local targets = buffIdToTargets[buffId]
    if targets == nil then
        targets = {}
        buffIdToTargets[buffId] = targets
    end
    targets[targetId] = true
end

function API.RemoveTargetRecieveBuff(targetId, buffId)
    local targets = buffIdToTargets[buffId]
    if targets then
        targets[targetId] = nil
    end
end

---Removes a target from the buff system
---@param targetId string
function API.UnregisterTarget(targetId)
    buffTargets[targetId] = nil
    for _, targets in pairs(buffIdToTargets) do
        targets[targetId] = nil
    end
    Events.Broadcast(API.Events.TargetUnregistered, targetId)
end

function API.GetTargetEvents(targetId)
    local buffTargetRuntime = buffTargets[targetId]
    return {
        buffAddedEvent = buffTargetRuntime.buffAddedEvent,
        buffRemovedEvent = buffTargetRuntime.buffRemovedEvent,
        buffChangedEvent = buffTargetRuntime.buffChangedEvent,
        buffFinishedEvent = buffTargetRuntime.buffFinishedEvent,
        buffRelinkedEvent = buffTargetRuntime.buffRelinkedEvent,
    }
end
---Finds a buff target by looking through the ancestors of a core object
---@param target CoreObject
---@return string, nil
function API.FindTargetByAncestors(target)
    while Object.IsValid(target) do
        if API.IsBuffTarget(target.id) then
            return target.id
        end
        target = target.parent
    end
    return nil
end

---Check if a targetId is a buff target
---@param targetId string
---@return boolean
function API.IsBuffTarget(targetId)
    if buffTargets[targetId] then
        return true
    end
    return false
end

---Finds a buff setting from the database
---@param buffId string
---@param setting string Use BUFFS.Settings.Duration for example
---@return any
function API.GetBuffSetting(buffId, setting)
    local data = GetBuffData(buffId)
    if data then
        return data[setting]
    end
end

--- Check if a buffId is in the database
---@param buffId any
---@return boolean
function API.IsValidBuff(buffId)
    return GetBuffData(buffId) ~= nil
end

function API.RequestLinkedBuffsUpdate()
    linkedBuffsDirty = true
end

---Forces all the linked buffs to be relinked. Expensive to call
function API.UpdateLinkedBuffs(forceUpdate)
    if linkedBuffsDirty or forceUpdate then
        linkedBuffsDirty = false
    else
        return
    end

    isLinking = true
    Events.Broadcast(API.Events.PrepareLinkedBuffs)

    -- loop every buff on every target and mark them as unused
    for targetId, buffTargetRuntime in pairs(buffTargets) do
        for buffId, buff in pairs(buffTargetRuntime.buffs) do
            buff.prevLinkedAmount = buff.linkedAmount
            buff.linkedAmount = 0
            buff.needsRelinking = true
        end
    end

    -- Make all the things with buffs on them apply the buff, which will add buffs recursively
    Events.Broadcast(API.Events.HandleBuffs)

    -- Loop all buffs on all targets and apply the links
    for targetId, buffTargetRuntime in pairs(buffTargets) do
        for buffId, buff in pairs(buffTargetRuntime.buffs) do
            -- Clamp the link amount
            buff.linkedAmount = CoreMath.Clamp(buff.linkedAmount, 0, buff.amount.maxValue)
        
            local previousAmount = buff.amount:GetValue()
            
            -- Update the amount 
            local amount = math.max(previousAmount, buff.linkedAmount)

            -- If our buff has a duration, check if the previous amount was larger
            if buff.amount.duration > 0 then
                amount = math.max(amount, buff.prevLinkedAmount)
            end

            -- Check if the amount changed from beforee
            if previousAmount ~= amount then
                buff.amount:SetValue(amount)
                buffTargetRuntime.buffChangedEvent:Run(targetId, buffId)
                Events.Broadcast(API.Events.BuffChanged, targetId, buffId)
            end
            
            -- If our linked amount is 0, and our buff has no duration, remove it now
            if buff.linkedAmount == 0 and buff.amount.duration == 0 and not buff.permanent then 
                API.RemoveBuff(targetId, buffId)
            end
        end
    end

    isLinking = false
end

---Adds a buff
---@param targetId string the id of the target. Usually coreObject.id
---@param buffId string
---@param getTime fun():number (optional) function for getting the time
---@param currentTime number (optional) the time used for this buff
---@param params BuffParams
function API.AddBuff(targetId, buffId, getTime, currentTime, params)
    if GetBuffData(buffId) == nil then
        warn ("Unable to add buff as the buff " .. buffId .. " does not exist in the database")
        return
    end

    local targets = buffIdToTargets[buffId]
    if targets == nil then
        return
    end
    if not targets[targetId] then
        return
    end

    local buffTargetRuntime = buffTargets[targetId]
    if buffTargetRuntime == nil then
        warn (tostring(targetId) .. " buffTarget is not registered")
        return
    end

    params = params or {}

    local amount = params.amount or 1
    local setAmount = params.setAmount or false

    local buff = buffTargetRuntime.buffs[buffId]
    if buff then
        -- Buff already exists on the target
        if isLinking then          
            buff.linkedAmount = buff.linkedAmount + amount
            if buff.needsRelinking then
                buff.needsRelinking = false
                Events.Broadcast(API.Events.BuffRelinked, targetId, buffId)
                buffTargetRuntime.buffRelinkedEvent:Run(targetId, buffId)
            end 
        else
            local oldAmount = buff.amount:GetValue(currentTime)
            local newAmount = math.min(oldAmount + amount, buff.amount.maxValue)
            if setAmount then
                newAmount = amount
            end
            if oldAmount ~= newAmount then
                buff.amount:SetValue(newAmount, currentTime)
                buffTargetRuntime.buffChangedEvent:Run(targetId, buffId)
                Events.Broadcast(API.Events.BuffChanged, targetId, buffId)
            end
        end
    else

        -- Adds a brand new buff

        local duration = API.GetBuffSetting(buffId, API.Settings.Duration)
        local isPermanent = API.GetBuffSetting(buffId, API.Settings.Permanent)
        local maxStacks = API.GetBuffSetting(buffId, API.Settings.MaxStacks)

        maxStacks = math.max(1, maxStacks)

        local rateOfChange = -1
        if duration == 0 or isPermanent then
            rateOfChange = 0
        end

        local amount = COUNTER.New(amount, 0, maxStacks, duration, rateOfChange, getTime, currentTime)
        local linkAmount = 0
        if isLinking then
            linkAmount = amount:GetValue()
            amount:SetValue(0)
        end

        buff = {
            amount = amount,
            linkedAmount = linkAmount,
            prevLinkedAmount = 0,
            needsRelinking = false,
            permanent = isPermanent,
            duration = duration
        }

        buffTargetRuntime.buffs[buffId] = buff
        buffTargetRuntime.buffAddedEvent:Run(targetId, buffId)
        Events.Broadcast(API.Events.BuffAdded, targetId, buffId)
    end
end

---Sets the rate of a timed buff. by default its -1
---@param targetId any
---@param buffId any
---@param rate number
---@param currentTime any
function API.SetBuffRate(targetId, buffId, rate, currentTime)
    rate = rate or -1.0
    local buff = GetBuff(targetId, buffId)
    if buff then
        if buff.permanent then 
            rate = 0 
        end
        buff.amount:SetRateOfChange(rate, currentTime)
    end
end

---Changes the duration of a buff. Note that the duration isnt networked so if you change it on the server you will want to change it on the client too
---@param targetId any
---@param buffId any
---@param duration any
---@param currentTime any
function API.SetBuffDuration(targetId, buffId, duration, currentTime)
    duration = duration or GetBuffData(buffId).Duration
    local buff = GetBuff(targetId, buffId)
    if buff then
        buff.amount:SetDuration(duration, currentTime)
        buff.permanent = false
    end
end

---Adds a buff to targets in a radius from the source target Id
---@param sourceTargetId string
---@param radius number
---@param buffId string
---@param getTime fun():number
---@param currentTime number
---@param params BuffParams
function API.AddBuffsInRadius(sourceTargetId, position, radius, buffId, getTime, currentTime, params)
    local targetIdToPosition = {}

    local targets = buffIdToTargets[buffId]
    if targets == nil then
        return
    end

    local radiusSquared = radius * radius

    -- Cache all the positions
    for targetId in pairs(targets) do
        targetIdToPosition[targetId] = API.GetTargetPosition(targetId)
    end

    local sourcePosition = position

    for otherTargetId in pairs(targets) do
        if sourceTargetId ~= otherTargetId then
            local otherPosition = targetIdToPosition[otherTargetId]
            local distance = (sourcePosition - otherPosition).sizeSquared
            if distance < radiusSquared then
                API.AddBuff(otherTargetId, buffId, getTime, currentTime, params)
            end
        end
    end
end

---Updates the buffs by removing any buffs that have expired
---@param targetId string
---@param currentTime number
function API.HandleFinishedTimedBuffs(targetId, currentTime)
    local buffTargetRuntime = buffTargets[targetId]
    if buffTargetRuntime then
        for buffId, buff in pairs(buffTargetRuntime.buffs) do
            if buff.linkedAmount == 0 then
                if buff.amount:GetValue(currentTime) == 0 then
                    buffTargetRuntime.buffFinishedEvent:Run(targetId, buffId)
                    Events.Broadcast(API.Events.BuffFinished, targetId, buffId)
                end
                -- If check again incase the finished event re-added the buff
                if buff.amount:GetValue(currentTime) == 0 then
                    API.RemoveBuff(targetId, buffId)
                end
            end
        end
    end
end

---Remove a buff
---@param targetId string
---@param buffId string
function API.RemoveBuff(targetId, buffId)
    local buffTargetRuntime = buffTargets[targetId]
    if buffTargetRuntime then
        local buff = buffTargetRuntime.buffs[buffId]
        if buff then
            buffTargetRuntime.buffs[buffId] = nil
            buffTargetRuntime.buffRemovedEvent:Run(targetId, buffId)
            Events.Broadcast(API.Events.BuffRemoved, targetId, buffId)
        end
    end
end

function API.SetBuffTimeFunction(targetId, buffId, getTime)
    local buff = GetBuff(targetId, buffId)
    buff.amount:SetTimeFunction(getTime)
end

---Get all the buff targets currently registered
---@return string[]
function API.GetAllTargets()
    local result = {}
    for buffTargetId in pairs(buffTargets) do
        table.insert(result, buffTargetId)
    end
    return result
end

---Writes all the current buffs on a target to a table
---@param targetId string
---@param currentTime number
---@return table
function API.WriteBuffsToTable(targetId, currentTime)
    local data = {}
    local buffTargetRuntime = buffTargets[targetId]
    for buffId, buff in pairs(buffTargetRuntime.buffs) do
        if buff.amount.duration > 0 or buff.permanent then
            local uid = API.GetBuffSetting(buffId, API.Settings.UniqueStorageId)
            local entry = {}
            entry.p = buff.amount:GetValue(currentTime)
            entry.u = uid
            table.insert(data, entry)
        end
    end
    return data
end

---Reads all the current buffs from a table to a target
---@param targetId string
---@param buffs table
---@param getTime any
---@param currentTime any
function API.ReadBuffsFromTable(targetId, buffs, getTime, currentTime)
    local existingBuffs = {}
    for _, buffId in ipairs(API.GetBuffs(targetId)) do
        existingBuffs[buffId] = true
    end

    for _, buff in ipairs(buffs) do
        local amount = buff.p
        local uid = buff.u
        local buffId = API.FindBuffId(uid)

        ---@type BuffParams
        local params = {
            setAmount = true,
            amount = amount,
        }
        API.AddBuff(targetId, buffId, getTime, currentTime, params)

        existingBuffs[buffId] = nil
    end

    -- Remove any buffs that werent loaded, but arent linked
    for buffId in pairs(existingBuffs) do
        local buff = GetBuff(targetId, buffId)
        if buff.linkedAmount == 0 then
            API.RemoveBuff(targetId, buffId)
        end
    end
end

---If this returns true, it means the buff is 'linked' and wont time out
---@param targetId string
---@param buffId string
---@return boolean
function API.IsBuffLinked(targetId, buffId)
    local buff = GetBuff(targetId, buffId)
    if buff then
        return buff.links > 0
    end
end

---Determines if a buff is permanent and therefore wont have a duration
---@param targetId string
---@param buffId string
---@return boolean
function API.IsBuffPermanent(targetId, buffId)
    local buff = GetBuff(targetId, buffId)
    if buff then
        return buff.permanent
    end
end

---Returns the duration of a buff. Will return 0 if the buff is permanent. 
--- Buffs can be stacked, so this is the duration of a single buff
---@param targetId any
---@param buffId any
---@return any
function API.GetBuffDuration(targetId, buffId)
    local buff = GetBuff(targetId, buffId)
    if buff then
        return buff.duration
    end
end

---Get all the current buffs on a target
---@param targetId string
---@return string[]
function API.GetBuffs(targetId)
    local result = {}
    local buffTargetRuntime = buffTargets[targetId]
    if buffTargetRuntime then
        for buffId in pairs(buffTargetRuntime.buffs) do
            table.insert(result, buffId)
        end
    end
    return result
end

---Get all the targets that have a certain buff on them
---@param buffId string
---@return string[]
function API.GetTargetsWithBuff(buffId)
    -- todo. If things are calling this alot, considering storing a buffId -> targets array
    local result = {}
    for targetId, buffTargetRuntime in pairs(buffTargets) do
        if buffTargetRuntime.buffs[buffId] then
            table.insert(result, targetId)
        end
    end
    return result
end

---Check if a target has a buff on them
---@param targetId string
---@param buffId string
---@return boolean
function API.HasBuff(targetId, buffId)
    local buff = GetBuff(targetId, buffId)
    if buff and (buff.amount:GetValue() > 0 or buff.linkedAmount > 0) then 
        return true
    end
    return false
end

---Find the remaining value (between 1 and 0, or 2 and 0 if theirs stacks etc)
---@param targetId string
---@param buffId string
---@param currentTime any
---@return number
function API.GetBuffRemainingAmount(targetId, buffId, currentTime)
    local buff = GetBuff(targetId, buffId)
    if buff then
        return math.max(buff.linkedAmount, buff.amount:GetValue(currentTime))
    end
end

---For a timed buff, how much remaining time (seconds) there is
---@param targetId string
---@param buffId string
---@param currentTime any
---@return number
function API.GetBuffRemainingTime(targetId, buffId, currentTime)
    local buff = GetBuff(targetId, buffId)
    if buff then
        return buff.amount.duration * math.max(buff.linkedAmount, buff.amount:GetValue(currentTime))
    end
end

---Given a unqiue storage number, find the buffId
---@param uniqueStorageNumber number
---@return string
function API.FindBuffId(uniqueStorageNumber)
    for buffId, buff in pairs(DATABASE.Buffs) do
        if buff[API.Settings.UniqueStorageId] == uniqueStorageNumber then
            return buffId
        end
    end
end

---Every buff target has a position in the world, this function finds that position
---@param targetId string
---@return Vector3
function API.GetTargetPosition(targetId)
    return buffTargets[targetId].functionTable.GetPosition()
end

------------------

function GetBuffData(buffId)
    if DATABASE.Buffs then
        return DATABASE.Buffs[buffId]
    end
end

function GetBuff(targetId, buffId)
    local buffTargetRuntime = buffTargets[targetId]
    if buffTargetRuntime then
        return buffTargetRuntime.buffs[buffId]
    end
end

--- Validate the database data
Task.Spawn(function()
    if Environment.IsServer() or DATABASE.Buffs == nil then
        return
    end

    local usedStorageIds = {}
    for buffId, buffData in pairs(DATABASE.Buffs) do
        if string.sub(buffId, 1, 2) ~= "--" then
            local uniqueStorageId = buffData.UniqueStorageId
            if uniqueStorageId == nil then
                error (buffId .. " is missing a UniqueStorageId custom property in the database")
            end
            if usedStorageIds[uniqueStorageId] then
                error ("Both '" .. buffId .. "' and '" .. usedStorageIds[uniqueStorageId]
                .. "' are using the same storage id of: " .. tostring(uniqueStorageId)  )
            end
            usedStorageIds[uniqueStorageId] = buffId
        end
    end
end)

return API