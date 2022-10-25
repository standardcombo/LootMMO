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
    This script runs on each Producer on the client and the server. APIProducers can be called in either context to direct
    interactions to these individual Producers.
--]]

---@type APIPlaceables
local PLACEABLES = require(script:GetCustomProperty("APIPlaceables"))
---@type APIProducers
local PRODUCER_BASES = require(script:GetCustomProperty("APIProducers"))
---@type APIEquipment
local EQUIPMENT = require(script:GetCustomProperty("APIEquipment"))
---@type APIDatabase
local DATABASE = require(script:GetCustomProperty("APIDatabase"))
---@type APIInventory
local INVENTORY = require(script:GetCustomProperty("APIInventory"))
---@type APICurrency
local CURRENCY = require(script:GetCustomProperty("APICurrency"))
---@type APIItemPickups
local ITEM_PICKUPS = require(script:GetCustomProperty("APIItemPickups"))
---@type APIReplicator
local REPLICATOR = require(script:GetCustomProperty("APIReplicator"))
---@type APIRealTime
local REALTIME = require(script:GetCustomProperty("APIRealTime"))
---@type APIBuffs
local BUFFS = require(script:GetCustomProperty("APIBuffs"))
---@type APITimeSimulator
local TIME_SIMULATOR = require(script:GetCustomProperty("APITimeSimulator"))
---@type Attribute
local Attribute = require(script:GetCustomProperty("APIAttribute"))
---@type APICounter
local COUNTER = require(script:GetCustomProperty("APICounter"))
---@type APISerializer
local SERIALIZER = require(script:GetCustomProperty("APISerializer"))
---@type APIPlayerLots
local PLAYER_LOTS = require(script:GetCustomProperty("APIPlayerLots"))

local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local COMPONENT_ROOT_ID = COMPONENT_ROOT.id

local PRODUCER_GROUP = COMPONENT_ROOT

local instanceNeedsEncoding = false

---@type Instance
local instance = REPLICATOR.GetCurrentInstance()

if instance == nil then
    error ("A producer base controller doesnt have an instance")
    return
end

-- Listen for a child being added so we can update the producer group
COMPONENT_ROOT.childAddedEvent:Connect(function(parent, child)
    PRODUCER_GROUP = COMPONENT_ROOT
    if child:GetCustomProperty("ProducerGroup") then
        PRODUCER_GROUP = child:GetCustomProperty("ProducerGroup"):WaitForObject() or PRODUCER_GROUP
    end
end)

local PLACEABLE_ID = instance.placeableId
if PLACEABLE_ID == nil then
    error("Unable to find producer base id")
    return
end

local PRODUCER_BASE_DATA = DATABASE.Placeables[PLACEABLE_ID]
if PRODUCER_BASE_DATA == nil then
    error ("Unable to find the producer base data in the database")
    return
end

local runtimeState = {
    position = COMPONENT_ROOT:GetWorldPosition(),
    rotation = COMPONENT_ROOT:GetWorldRotation(),
    placeableId = PLACEABLE_ID,
    producerId = nil,
    numCollects = 0,
    time = REALTIME.GetRealTime(),
    isReadyForCollect = false,
    hasStartedBuilding = false,
    hasExpired = false,
    isRebuilding = false,
    buildAmount = 0,
    expireAmount = 0,
    placeableData = PRODUCER_BASES.GetPlaceableData(PLACEABLE_ID),
    producerData = nil,
}

local playerDropResults = {}
local globalDropResults = nil
local dropsNeedCollecting = false

function GetTime()
    return runtimeState.time
end

-- Counters are used to calculate a new value of build and expire
local buildCounter = COUNTER.New(0, 0, 1, 1, 0, GetTime)
local expireCounter = COUNTER.New(0, 0, 1, 1, 0, GetTime)

local producerTemplateData = {
    placed = {},
    building = {},
    ready = {},
    expired = {},
    rebuilding = {},
}

local buffData = {
    receiveableBuffs = {},
    resetsExpiryBuffs = {},
    requireToAllowExpiringBuffs = {},
    requireToStartBuildingBuffs = {},
    requireWhileBuildingBuffs = {},
    requireWhileRebuildingBuffs = {},
    proximityBuffsWhileEmpty = {},
    proximityBuffsWhilePlaced = {},
    proximityBuffsWhileBuilding = {},
    proximityBuffsWhileReady = {},
    proximityBuffsWhileExpired = {},
    buffBuildRateAddMultipliers = {},
    buffExpireRateAddMultipliers = {},
    buffValidToolTypes = {},
    toolsConsumedWhenAdded = {},
    proximityBuffsRadius = {},
    proximityBuffsAddAmount = {},
    overrideBuffDurations = {},
    proximityBuffsRequired = {},
    drainWhileEmpty = {},
    drainWhilePlaced = {},
    drainWhileBuilding = {},
    drainWhileReady = {},
    drainWhileExpired = {},
    drainWhileRebuilding = {},
    removeOnCollect = {},
    removeOnProducerRemoved = {},
    addBuffEffect = {},
    addBuffEffectOffset = {},
    minAllowedBuffConsumption = {},
}

local activeProximityBuffs = {}

local producerClientCoreObject = nil
local producerClientTemplate = nil
local producerServerCoreObject = nil
local producerServerTemplate = nil
local producerStaticCoreObject = nil
local producerStaticTemplate = nil

function ClearBuffData()
    for key in pairs(buffData) do
        if next(buffData[key]) then
            buffData[key] = {}
        end
    end
end

function GetPlaceableData()
    return runtimeState.placeableData
end

function GetProducerData()
    return runtimeState.producerData
end

function SetProducerId(producerId)
    local oldProducerId = runtimeState.producerId
    runtimeState.producerId = producerId
    runtimeState.producerData = PRODUCER_BASES.GetProducerData(runtimeState.producerId)

    if oldProducerId ~= producerId then
        Events.Broadcast(PRODUCER_BASES.Events.ProducerPlaced, COMPONENT_ROOT_ID, runtimeState.placeableId, producerId)
    end
end

function InstanceToRuntimeState(allowPrediction)
    local producerUniqueStorageId, buildAmount, numCollects, expireAmount, buffState
    if instance.state == "" then
        producerUniqueStorageId, buildAmount, numCollects, expireAmount, buffState = GetDefaultProducerBaseState()
    else
        producerUniqueStorageId, buildAmount, numCollects, expireAmount, buffState = SERIALIZER.ReadString(instance.state)
    end

    local producerId = nil
    if producerUniqueStorageId then
        producerId = GetProducerIdByStorageId(producerUniqueStorageId)
    end

    local currentTime = instance.serverTime
    local previousTime = runtimeState.time

    SetProducerId(producerId)

    runtimeState.time = currentTime
    runtimeState.numCollects = numCollects
    runtimeState.isReadyForCollect = buildAmount ~= nil and buildAmount > 0.99999
    runtimeState.hasExpired = expireAmount > 0.99999
    runtimeState.hasStartedBuilding = buildAmount ~= nil

    runtimeState.buildAmount = buildAmount or 0
    runtimeState.expireAmount = expireAmount
    runtimeState.isRebuilding = numCollects > 0

    buildCounter:SetValue(buildAmount or 0)
    expireCounter:SetValue(expireAmount)

    UpdateBuffData()
    BUFFS.ReadBuffsFromTable(COMPONENT_ROOT_ID, buffState or {}, GetTime)

    UpdateLinkedBuffs()
    UpdateBuildRate()
    UpdateExpireRate()
    UpdateBuffRates()
    HandleAutoBuild()

    if allowPrediction then
        -- If we recieved stuff in the past, run this forward to the time we were at
        if previousTime > currentTime then
            runtimeState.time = currentTime
            UpdateRuntimeState()
        end
    end
end

---Writes the runtime state to the instance
function RuntimeStateToInstance()
    local producerUniqueStorageId = GetProducerStorageIdById(runtimeState.producerId)
    local buildAmount = runtimeState.buildAmount
    local numCollects = runtimeState.numCollects
    local expiredAmount = runtimeState.expireAmount
    if runtimeState.hasExpired then
        expiredAmount = 1
    end
    if runtimeState.isReadyForCollect then
        buildAmount = 1
    end
    if not runtimeState.hasStartedBuilding then
        buildAmount = nil
    end

    local buffState = BUFFS.WriteBuffsToTable(COMPONENT_ROOT_ID, GetTime())

    instance.state = SERIALIZER.WriteString(producerUniqueStorageId, buildAmount, numCollects, expiredAmount, buffState)
    instance.serverTime = runtimeState.time
end

---Returns a number based on a producerId
---@param producerId string
---@return integer
function GetProducerStorageIdById(producerId)
    local producerData = DATABASE.Producers[producerId]
    if producerData then
        return producerData.UniqueStorageId
    end
end

---Returns a Product data based on a number.
---@param uniqueStorageId integer
---@return table
function GetProducerIdByStorageId(uniqueStorageId)
    for producerId, producerData in pairs(DATABASE.Producers) do
        if type(producerData) == "table" then
            if producerData.UniqueStorageId == uniqueStorageId then
                return producerId
            end
        end
    end
end

function GetDefaultProducerBaseState()
    local placeableData = DATABASE.Placeables[runtimeState.placeableId]
    local producerId = placeableData.InitialProducerId

    -- If we defined a custom property on a placeholder in the scene
    if instance.existingCoreObject then
        local placeholderProducerId = instance.existingCoreObject:GetCustomProperty("ProducerId")
        if placeholderProducerId and placeholderProducerId ~= "" then
            producerId = placeholderProducerId
        end
    end

    local producerStorageId = GetProducerStorageIdById(producerId)
    return producerStorageId, nil, 0, 0.0, {}
end

function OnInstanceModified()
    InstanceToRuntimeState(true)
    runtimeState.position = COMPONENT_ROOT:GetWorldPosition()
    runtimeState.rotation = COMPONENT_ROOT:GetWorldRotation()
    UpdateProducerTemplateData()
    HandleAutoBuild()
end

function GetBuildAmount()
    return runtimeState.buildAmount
end

function UpdateRuntimeState()
    runtimeState.expireAmount = expireCounter:GetValue()
    runtimeState.buildAmount = buildCounter:GetValue()

    local hasExpired = runtimeState.expireAmount > 0.99999
    local isReadyForCollect = runtimeState.buildAmount > 0.99999

    if runtimeState.hasExpired ~= hasExpired then
        runtimeState.hasExpired = hasExpired
        instanceNeedsEncoding = true
        UpdateLinkedBuffs()
        if hasExpired then
            Events.Broadcast(PRODUCER_BASES.Events.ProducerExpired, COMPONENT_ROOT_ID, runtimeState.placeableId, runtimeState.producerId)
        end
    end

    if runtimeState.isReadyForCollect ~= isReadyForCollect then
        runtimeState.isReadyForCollect = isReadyForCollect
        instanceNeedsEncoding = true
        UpdateLinkedBuffs()
        if isReadyForCollect then
            Events.Broadcast(PRODUCER_BASES.Events.ProducerReadyForCollect, COMPONENT_ROOT_ID, runtimeState.placeableId, runtimeState.producerId)
        end
    end

    UpdateBuildRate()
    UpdateExpireRate()
    UpdateBuffRates()
end

function UpdateBuffRates()
    local activeBuffs = BUFFS.GetBuffs(COMPONENT_ROOT_ID)

    local hasProducer = HasProducer()
    local isReady = IsProducerReady()
    local isRebuilding = IsProducerRebuilding()
    local hasStartedBuilding = HasStartedBuilding()
    local hasExpired = HasProducerExpired()

    local drainBuffs = {}

    if not hasProducer then
        drainBuffs = buffData.drainWhileEmpty
    elseif hasExpired then
        drainBuffs = buffData.drainWhileExpired
    elseif isReady then
        drainBuffs = buffData.drainWhileReady
    elseif not hasStartedBuilding then
        drainBuffs = buffData.drainWhilePlaced
    elseif isRebuilding then
        drainBuffs = buffData.drainWhileRebuilding
    else
        drainBuffs = buffData.drainWhileBuilding
    end

    for _, buffId in ipairs(activeBuffs) do
        local rate = 0
        if drainBuffs[buffId] then
            rate = -1
        end
        BUFFS.SetBuffRate(COMPONENT_ROOT_ID, buffId, rate)
    end
end

function PlaceProducer(producerId)
    UpdateRuntimeState()
    SetProducerId(producerId)

    UpdateBuffData()
    UpdateLinkedBuffs()
    UpdateProducerTemplateData()

    HandleAutoBuild()

    RuntimeStateToInstance()
    REPLICATOR.ModifyInstance(instance)
    UpdateProducerTemplates()
end

function SplitStringByCommas(s)
    local results = {}
    for _, subString in pairs( { CoreString.Split(s, ",", { removeEmptyResults = true }) }) do
        table.insert(results, CoreString.Trim(subString))
    end
    return results
end

function ProcessBuffData(buffs)
    if buffs == nil then
        return
    end

    for buffId, data in pairs(buffs) do
        buffData.proximityBuffsRadius[buffId] = data.Radius
        buffData.proximityBuffsAddAmount[buffId] = data.AddAmount

        if data.CanReceive then
            buffData.receiveableBuffs[buffId] = true
        end
        if data.ResetsExpiry then
            buffData.resetsExpiryBuffs[buffId] = true
        end
        if data.RequireToAllowExpiring or data.RequiredToAllowExpiring then
            buffData.requireToAllowExpiringBuffs[buffId] = true
        end
        if data.RequireToStartBuilding then
            buffData.requireToStartBuildingBuffs[buffId] = true
        end
        if data.RequireWhileBuilding then
            buffData.requireWhileBuildingBuffs[buffId] = true
        end
        if data.RequireWhileRebuilding then
            buffData.requireWhileRebuildingBuffs[buffId] = true
        end
        if data.ActiveWhileEmpty then
            buffData.proximityBuffsWhileEmpty[buffId] = true
        end
        if data.ActiveWhilePlaced then
            buffData.proximityBuffsWhilePlaced[buffId] = true
        end
        if data.ActiveWhileBuilding then
            buffData.proximityBuffsWhileBuilding[buffId] = true
        end
        if data.ActiveWhileReady then
            buffData.proximityBuffsWhileReady[buffId] = true
        end
        if data.ActiveWhileExpired then
            buffData.proximityBuffsWhileExpired[buffId] = true
        end
        if data.AffectsBuildRate then
            buffData.buffBuildRateAddMultipliers[buffId] = data.BuildRateMultiplierPercent / 100 or 0
        end
        if data.AffectsExpireRate then
            buffData.buffExpireRateAddMultipliers[buffId] = data.ExpireRateMultiplierPercent / -100 or 0
        end
        if data.OverrideBuffDuration then
            buffData.overrideBuffDurations[buffId] = data.BuffDuration
        end
        if data.DrainWhileEmpty then
            buffData.drainWhileEmpty[buffId] = true
        end
        if data.DrainWhilePlaced then
            buffData.drainWhilePlaced[buffId] = true
        end
        if data.DrainWhileBuilding then
            buffData.drainWhileBuilding[buffId] = true
        end
        if data.DrainWhileReady then
            buffData.drainWhileReady[buffId] = true
        end
        if data.DrainWhileRebuilding then
            buffData.drainWhileRebuilding[buffId] = true
        end
        if data.DrainWhileExpired then
            buffData.drainWhileExpired[buffId] = true
        end
        if data.RemoveOnCollect then
            buffData.removeOnCollect[buffId] = true
        end
        if data.RemoveOnProducerRemoved then
            buffData.removeOnProducerRemoved[buffId] = true
        end
        if data.ValidAddBuffToolTypes then
            local toolTypes = buffData.buffValidToolTypes[buffId] or {}
            buffData.toolsConsumedWhenAdded[buffId] = data.ToolsConsumedWhenAdded or 0
            buffData.buffValidToolTypes[buffId] = toolTypes
            for _, toolType in pairs(SplitStringByCommas(data.ValidAddBuffToolTypes)) do
                toolTypes[toolType] = true
            end
        end
        if data.RequiredBuffs then
            if data.RequiredBuffs ~= "" then
                local buffs = buffData.proximityBuffsRequired[buffId] or {}
                buffData.proximityBuffsRequired[buffId] = buffs
                for _, buffId in pairs(SplitStringByCommas(data.RequiredBuffs)) do
                    buffs[buffId] = true
                end
            end
        end
        if data.AddBuffEffect then
            buffData.addBuffEffect[buffId] = data.AddBuffEffect
            buffData.addBuffEffectOffset[buffId]  = data.AddBuffEffectOffset
        end
        if data.MinAllowedBuffConsumption then
            buffData.minAllowedBuffConsumption[buffId] = data.MinAllowedBuffConsumption
        end
    end
end

---Based on the producer base data and the producer data, fill the buff data table
function UpdateBuffData()
    local placeableData = GetPlaceableData()
    local producerData = GetProducerData()

    ClearBuffData()

    if placeableData then
        ProcessBuffData(placeableData.InputBuffs)
        ProcessBuffData(placeableData.OutputBuffs)
    end
    if producerData then
        ProcessBuffData(producerData.InputBuffs)
        ProcessBuffData(producerData.OutputBuffs)
    end

    BUFFS.ClearTargetRecieveBuffs(COMPONENT_ROOT_ID)
    for buffId in pairs(buffData.receiveableBuffs) do
        BUFFS.AddTargetRecieveBuff(COMPONENT_ROOT_ID,buffId)
    end
end

function OnPrepareLinkedBuffs()
    if next(activeProximityBuffs) then
        activeProximityBuffs = {}
    end
end

function DoProximityBuffs()
    if instance.isDestroyed then
        return
    end
    local proximityBuffs = {}
    local hasProducer = HasProducer()
    if hasProducer then
        local producer = GetProducerData()
        local buildAmount = GetBuildAmount()
        local isReady = IsProducerReady()
        local isRebuilding = IsProducerRebuilding()
        local hasStartedBuilding = HasStartedBuilding()
        local hasExpired = HasProducerExpired()

        if not hasStartedBuilding then
            proximityBuffs = buffData.proximityBuffsWhilePlaced
        elseif hasExpired then
            proximityBuffs = buffData.proximityBuffsWhileExpired
        elseif isReady then
            proximityBuffs = buffData.proximityBuffsWhileReady
        else
            proximityBuffs = buffData.proximityBuffsWhileBuilding
        end
    else
        proximityBuffs = buffData.proximityBuffsWhileEmpty
    end

    local sourcePosition = BUFFS.GetTargetPosition(COMPONENT_ROOT_ID)
    -- Add any new buffs
    for buffId in pairs(proximityBuffs) do
        if activeProximityBuffs[buffId] then
            -- This proximity buff is already active
        else
            local radius = buffData.proximityBuffsRadius[buffId]
            local requiredBuffs = buffData.proximityBuffsRequired[buffId]
            if requiredBuffs == nil or CheckHasAllBuffs(requiredBuffs) then
                activeProximityBuffs[buffId] = true
                local amount = buffData.proximityBuffsAddAmount[buffId]
                BUFFS.AddBuffsInRadius( COMPONENT_ROOT_ID, sourcePosition, radius, buffId, GetTime, nil, {amount=amount})
            end
        end
    end
end

function StartBuildingProducer()
    UpdateRuntimeState()

    runtimeState.hasStartedBuilding = true
    UpdateBuildRate()
    UpdateExpireRate()
    UpdateProducerTemplates()
    UpdateLinkedBuffs()

    RuntimeStateToInstance()
    REPLICATOR.ModifyInstance(instance)

    Events.Broadcast(PRODUCER_BASES.Events.ProducerStartedBuilding, COMPONENT_ROOT_ID, runtimeState.placeableId, runtimeState.producerId)
end

function UpdateBuildRate()
    local buildRate = 0
    if runtimeState.hasStartedBuilding then
        if CanKeepBuildingProducer() then
            local placeableData = GetPlaceableData()
            local producerData = GetProducerData()
            local buildSeconds = producerData.BuildSeconds
            if runtimeState.isRebuilding then
                buildSeconds = producerData.RebuildSeconds
            end

            -- Avoid dividing by 0
            buildSeconds = math.max(buildSeconds, 0.001)

            local attribute = Attribute.New(placeableData.BuildRate / buildSeconds)
            for _, buffId in pairs(BUFFS.GetBuffs(COMPONENT_ROOT_ID)) do
                local multiplier = buffData.buffBuildRateAddMultipliers[buffId]
                if multiplier then
                    attribute:IncreaseMultiplier(multiplier)
                end
            end
            buildRate = attribute:GetTotal()
        end
    end
    buildCounter:SetRateOfChange(buildRate)
end

function CanExpire()
    if not HasProducer() then
        return false
    end
    local producerData = GetProducerData()
    local placeableData = GetPlaceableData()
    if producerData == nil then
        return false
    end
    if placeableData.AllowExpiry == false then
        return false
    end
    local canExpire = false
    if IsProducerReady() and producerData.CanExpireInReadyState then
        canExpire = true
    elseif not HasStartedBuilding() and producerData.CanExpireInPlacedState then
        canExpire = true
    elseif producerData.CanExpireInBuldingState then
        canExpire = true
    end
    if canExpire == false then
        return false
    end
    local buffs = buffData.requireToAllowExpiringBuffs
    return CheckHasAnyBuffs(buffs) or IsTableEmpty(buffs)
end

function UpdateExpireRate()
    local expireRate = 0
    if CanExpire() then
        local producerData = GetProducerData()
        local placeableData = GetPlaceableData()

        local attribute = Attribute.New(placeableData.ExpireRate / math.max(producerData.ExpireSeconds, 1))
        -- Apply buffs
        for _, buffId in pairs(BUFFS.GetBuffs(COMPONENT_ROOT_ID)) do
            local multiplier = buffData.buffExpireRateAddMultipliers[buffId]
            if multiplier then
                attribute:IncreaseMultiplier(multiplier)
            end
        end
        expireRate = attribute:GetTotal()
    end
    expireCounter:SetRateOfChange(expireRate)
end

function RemoveProducerVfx()
    local producerData = GetProducerData()
    if producerData.RemoveEffects and producerData.RemoveEffects ~= "" then
        local params = { position = COMPONENT_ROOT:GetWorldPosition() + producerData.RemoveEffectsOffset }
        local effects = World.SpawnAsset(producerData.RemoveEffects, params)
        -- Ensure these don't stack up
        if effects.lifeSpan == 0 then
            effects.lifeSpan = 5
        end
    end
end

function RemoveProducer()
    RemoveProducerVfx()

    UpdateRuntimeState()

    expireCounter:SetValue(0)
    expireCounter:SetRateOfChange(0)
    buildCounter:SetValue(0)
    buildCounter:SetRateOfChange(0)

    local oldProducerId = runtimeState.producerId

    SetProducerId(nil)
    runtimeState.numCollects = 0
    runtimeState.buildAmount = 0
    runtimeState.expireAmount = 0

    runtimeState.hasExpired = false
    runtimeState.isReadyForCollect = false
    runtimeState.hasStartedBuilding = false
    runtimeState.isRebuilding = false

    RemoveBuffsOnRemoveProducer()

    RuntimeStateToInstance()
    REPLICATOR.ModifyInstance(instance)

    UpdateBuffData()
    UpdateLinkedBuffs()
    UpdateProducerTemplateData()
    UpdateProducerTemplates()

    Events.Broadcast(PRODUCER_BASES.Events.ProducerRemoved, COMPONENT_ROOT_ID, runtimeState.placeableId, oldProducerId)
end

function UpdateLinkedBuffs()
    BUFFS.RequestLinkedBuffsUpdate()
end

function RemoveBuffsOnCollect()
    local buffs = BUFFS.GetBuffs(COMPONENT_ROOT_ID)
    for _, buffId in pairs(buffs) do
        if buffData.removeOnCollect[buffId] then
            BUFFS.RemoveBuff(COMPONENT_ROOT_ID, buffId)
        end
    end
end

function RemoveBuffsOnRemoveProducer()
    local buffs = BUFFS.GetBuffs(COMPONENT_ROOT_ID)
    for _, buffId in pairs(buffs) do
        if buffData.removeOnProducerRemoved[buffId] then
            BUFFS.RemoveBuff(COMPONENT_ROOT_ID, buffId)
        end
    end
end

function Collect()
    UpdateRuntimeState()

    local producerId = runtimeState.producerId
    local hasExpired = HasProducerExpired()
    local producerData = GetProducerData()

    if hasExpired then
        SetProducerId(nil)
        runtimeState.numCollects = 0
        runtimeState.isRebuilding = false
    else
        if IsMultipleCollects(producerData) and (producerData.NumberOfCollects == 0 or runtimeState.numCollects + 1 < producerData.NumberOfCollects) then
            runtimeState.numCollects = runtimeState.numCollects + 1
            runtimeState.isRebuilding = true
        else
            if producerData.ReplaceProducerOnFinalCollect then
                local nextProducers = SplitStringByCommas(producerData.ReplacementProducerId)
                local i = math.random(#nextProducers)
                local nextProducer = nextProducers[i]

                SetProducerId(nextProducer)
                producerData = GetProducerData()

                runtimeState.numCollects = 0
                runtimeState.isRebuilding = false
            else
                SetProducerId(nil)
                producerData = GetProducerData()

                runtimeState.numCollects = 0
                runtimeState.isRebuilding = false
            end
        end
    end

    buildCounter:SetValue(0)
    buildCounter:SetRateOfChange(0)
    expireCounter:SetValue(0)
    expireCounter:SetRateOfChange(0)

    runtimeState.buildAmount = 0
    runtimeState.expireAmount = 0

    runtimeState.hasExpired = false
    runtimeState.isReadyForCollect = false
    runtimeState.hasStartedBuilding = false

    RemoveBuffsOnCollect()

    if CanStartBuildingProducer() then
        runtimeState.hasStartedBuilding = true
    end

    UpdateBuffData()
    UpdateLinkedBuffs()
    UpdateProducerTemplateData()
    UpdateProducerTemplates()
    UpdateBuildRate()
    UpdateExpireRate()

    instanceNeedsEncoding = true

    Events.Broadcast(PRODUCER_BASES.Events.ProducerCollected, COMPONENT_ROOT_ID, runtimeState.placeableId, producerId)
end

function GetDropResults(player)
    local dropResults = globalDropResults
    if Object.IsValid(player) then
        playerDropResults[player] = playerDropResults[player] or {}
        dropResults = playerDropResults[player]
    end
    return dropResults
end

function HandleAutoCollect()
    local producerData = GetProducerData()
    if IsProducerReady() and producerData.AutoCollect then
        if Environment.IsServer() then
            Collect()
            return
        end

        -- See if this Producer is on a Player Lot to derive an owner
        local player = nil
        local playerLotId = PLAYER_LOTS.FindLotByAncestors(COMPONENT_ROOT)
        if playerLotId then
            player = PLAYER_LOTS.GetOwner(playerLotId)
        end

        PRODUCER_BASES.Collect(player, COMPONENT_ROOT_ID)
        dropsNeedCollecting = true
        return true
    end
    return false
end

function HandleAutoBuild()
    local producerData = GetProducerData()
    if producerData == nil then return false end

    if CanStartBuildingProducer() then
        runtimeState.hasStartedBuilding = true
        UpdateBuildRate()
        UpdateExpireRate()
        UpdateBuffRates()
        UpdateLinkedBuffs()
        instanceNeedsEncoding = true

        Events.Broadcast(PRODUCER_BASES.Events.ProducerStartedBuilding, COMPONENT_ROOT_ID, runtimeState.placeableId, runtimeState.producerId)
        return true
    end
    return false
end

---Updates the lua table of all the template references for the producer
function UpdateProducerTemplateData()
    producerTemplateData.placed = {}
    producerTemplateData.building = {}
    producerTemplateData.ready = {}
    producerTemplateData.expired = {}
    producerTemplateData.rebuilding = {}

    if runtimeState.producerId then
        local producerData = GetProducerData()

        producerTemplateData.placed.client =  producerData.PlacedState_Client
        producerTemplateData.placed.server =  producerData.PlacedState_Server
        producerTemplateData.placed.static =  producerData.PlacedState_Static
        producerTemplateData.ready.client = producerData.ReadyState_Client
        producerTemplateData.ready.server = producerData.ReadyState_Server
        producerTemplateData.ready.static = producerData.ReadyState_Static

        producerTemplateData.expired.client = producerData.ExpiredState_Client
        producerTemplateData.expired.server = producerData.ExpiredState_Server
        producerTemplateData.expired.static = producerData.ExpiredState_Static

        -- Load building states
        for stateNum = 1, 32 do
            local stateClient = producerData["State" .. tostring(stateNum) .. "_Client"]
            local stateServer = producerData["State" .. tostring(stateNum) .. "_Server"]
            local stateStatic = producerData["State" .. tostring(stateNum) .. "_Static"]

            if (stateClient and stateClient ~= "") or (stateServer and stateServer ~= "") or (stateStatic and stateStatic ~= "") then
                local state = {}
                state.client = stateClient
                state.server = stateServer
                state.static = stateStatic
                producerTemplateData.building[stateNum] = state
            else
                break
            end
        end

        -- Hack so when auto collect is enabled we 'see' the ready state
        if producerData.AutoCollect then
            producerTemplateData.building[#producerTemplateData.building+1] = {
                client=producerData.ReadyState_Client,
                server=producerData.ReadyState_Server,
                static=producerData.ReadyState_Static
            }
        end

        -- Load rebuilding states
        for stateNum = 1, 32 do
            local stateClient = producerData["RebuildingState" .. tostring(stateNum) .. "_Client"]
            local stateServer = producerData["RebuildingState" .. tostring(stateNum) .. "_Server"]
            local stateStatic = producerData["RebuildingState" .. tostring(stateNum) .. "_Static"]

            if (stateClient and stateClient ~= "") or (stateServer and stateServer ~= "") or (stateStatic and stateStatic ~= "") then
                local state = {}
                state.client = stateClient
                state.server = stateServer
                state.static = stateStatic
                producerTemplateData.rebuilding[stateNum] = state
            else
                break
            end
        end
    end
end

---Finds the template asset for the current state of the producer
---@return string, string
function GetProducerTemplates()
    if not HasProducer() then
        return
    end

    local isReady = IsProducerReady()
    local isRebuilding = IsProducerRebuilding()
    local hasStartedBuilding = HasStartedBuilding()
    local hasExpired = HasProducerExpired()

    local state = nil

    -- Get the appropriate state
    if hasExpired then
        state = producerTemplateData.expired
    elseif hasStartedBuilding == false and not isRebuilding then
        state = producerTemplateData.placed
    elseif isReady then
        state = producerTemplateData.ready
    else
        local buildAmount = GetBuildAmount()
        local states = producerTemplateData.building
        local numStates = #producerTemplateData.building
        if isRebuilding then
            states = producerTemplateData.rebuilding
            numStates = #producerTemplateData.rebuilding
        end
        if numStates > 0 then
            local stateIndex = math.floor(buildAmount * numStates) + 1
            stateIndex = CoreMath.Clamp(stateIndex, 1, numStates)
            state = states[stateIndex]
        end
    end

    if state then
        return state.client, state.server, state.static
    end
end

--- Destroys and spawns a new template if the template is different to whats been spawne
--- @return boolean --did a spawn happen?
function UpdateProducerTemplates()
    local spawnHapppened = false
    local clientTemplate, serverTemplate, staticTemplate = GetProducerTemplates()

    -- Update the client and templates... nice and simple
    if Environment.IsClient() then
        if clientTemplate ~= producerClientTemplate then
            producerClientTemplate = clientTemplate
            if Object.IsValid(producerClientCoreObject) then
                producerClientCoreObject:Destroy()
            end
            producerClientCoreObject = nil
            if producerClientTemplate then
                local params = { parent = PRODUCER_GROUP }
                producerClientCoreObject = World.SpawnAsset(producerClientTemplate, params)
                spawnHapppened = true
            end
        end
    elseif Environment.IsServer() then
        if serverTemplate ~= producerServerTemplate then
            producerServerTemplate = serverTemplate
            if Object.IsValid(producerServerCoreObject) then
                producerServerCoreObject:Destroy()
            end
            producerServerCoreObject = nil
            if producerServerTemplate then
                local params = { parent = PRODUCER_GROUP }
                producerServerCoreObject = World.SpawnAsset(producerServerTemplate, params)
                spawnHapppened = true
            end
        end
    end

    -- The code for static is a bit different because the static core object version of the instance might not exist yet

    -- First of all, detect if the static object was destroyed and we werent aware of it
    if producerStaticCoreObject and not Object.IsValid(producerStaticCoreObject) then
        producerStaticCoreObject = nil
        producerStaticTemplate = nil
    end

    -- Now check if the template is different
    if staticTemplate ~= producerStaticTemplate then
        if Object.IsValid(producerStaticCoreObject) then
            producerStaticCoreObject:Destroy()
        end
        producerStaticCoreObject = nil
        if staticTemplate then
            local staticObject = REPLICATOR.GetStaticCoreObject(instance)

            if Object.IsValid(staticObject) then
                local staticProducerGroup = staticObject:GetCustomProperty("ProducerGroup")
                if staticProducerGroup then
                    staticProducerGroup = staticProducerGroup:WaitForObject()
                end
                if staticProducerGroup == nil then
                    staticProducerGroup = staticObject
                end
                producerStaticTemplate = staticTemplate
                local params = {
                    parent = staticProducerGroup,
                    networkContext = NetworkContextType.STATIC_CONTEXT
                }
                producerStaticCoreObject = World.SpawnAsset(producerStaticTemplate, params)
                spawnHapppened = true
            end
        else
            producerStaticTemplate = staticTemplate
        end
    end

    return spawnHapppened
end

---Checks if the producer base has all the buffs
---@param buffs string[]
---@return boolean
function CheckHasAllBuffs(buffs)
    for buffId in pairs(buffs) do
        if BUFFS.HasBuff(COMPONENT_ROOT_ID, buffId) == false then
            return false
        end
    end
    return true
end

function IsTableEmpty(buffs)
    return next(buffs) == nil
end

function CheckHasAnyBuffs(buffs)
    for buffId in pairs(buffs) do
        if BUFFS.HasBuff(COMPONENT_ROOT_ID, buffId) then
            return true
        end
    end
    return false
end

function CanKeepBuildingProducer()
    local producerData = GetProducerData()
    if producerData then
        if IsProducerRebuilding() then
            return CheckHasAllBuffs(buffData.requireWhileRebuildingBuffs)
        else
            return CheckHasAllBuffs(buffData.requireWhileBuildingBuffs)
        end
    end
    return false
end

function IsProducerReady()
    return runtimeState.isReadyForCollect
end

function IsProducerRebuilding()
    return runtimeState.isRebuilding
end

function HasStartedBuilding()
    return runtimeState.hasStartedBuilding
end

function HasProducerExpired()
    return runtimeState.hasExpired
end

function HasProducer()
    return runtimeState.producerId ~= nil
end

function GetState()
    ---@class ProducerBaseState
    local result = {}
    result.placeableId = runtimeState.placeableId
    result.position = runtimeState.position
    result.rotation = runtimeState.rotation
    result.buildAmount = runtimeState.buildAmount
    result.numCollects = runtimeState.numCollects
    result.producerId = runtimeState.producerId
    result.expireAmount = runtimeState.expireAmount
    result.hasExpired = runtimeState.hasExpired
    result.hasStartedBuilding = runtimeState.hasStartedBuilding
    result.isReadyForCollect = runtimeState.isReadyForCollect
    result.isRebuilding = runtimeState.isRebuilding
    result.replicatorId = instance.replicatorId
    result.hasProducer = HasProducer()
    result.buffData = buffData
    result.buildRate = buildCounter.rateOfChange
    result.expireRate = expireCounter.rateOfChange
    result.buildTimeRemaining = buildCounter:GetRemainingTimeToMax(runtimeState.time)
    result.expireTimeRemaining = expireCounter:GetRemainingTimeToMax(runtimeState.time)
    result.buffTargetId = COMPONENT_ROOT_ID

    return result
end

function FindProducerIdFromEquipment(toolType, equipmentSettings)
    local itemId = equipmentSettings.ItemId
    if itemId then
        if DATABASE.Producers[itemId] then
            if CanPlaceProducer(itemId, toolType, equipmentSettings) then
                return itemId
            end
        end
        for producerId, producerData in pairs(DATABASE.Producers) do
            if producerData.SourceItemId == itemId then
                if CanPlaceProducer(producerId, toolType, equipmentSettings) then
                    return producerId
                end
            end
        end
    end
end

local producerPreviewTask = nil
local producerPreviewTemplate = nil
local producerPreview = nil

function DestroyProducerPreview()
    Task.Wait(0.1)
    if Object.IsValid(producerPreview) then
        producerPreview:Destroy()
    end
    producerPreview = nil
    producerPreviewTemplate = nil
end

function ShowProducerPreview(producerId)
    if Environment.IsServer() then return end

    local producerData = DATABASE.Producers[producerId]
    if producerData then
        local template = producerData.PlacementPreview
        if template ~= "" and template ~= producerPreviewTemplate then
            if Object.IsValid(producerPreview) then
                producerPreview:Destroy()
            end
            producerPreview = nil
            producerPreviewTemplate = template
            if template then
                local params = { parent = PRODUCER_GROUP }
                producerPreview = World.SpawnAsset(template, params)
                if producerData.HologramMaterial and producerData.HologramMaterial ~= "" then
                    ApplyMaterial(producerPreview:FindDescendantsByType("StaticMesh"), producerData.HologramMaterial, producerData.PlacementColor)
                    ApplyMaterial(producerPreview:FindDescendantsByType("AnimatedMesh"), producerData.HologramMaterial, producerData.PlacementColor)
                end
            end
        end
        if producerPreviewTask then
            producerPreviewTask:Cancel()
        end
        producerPreviewTask = Task.Spawn(DestroyProducerPreview)
    end
end

function ApplyMaterial(meshes, material, color)
    for _, mesh in pairs(meshes) do
        for _, materialSlot in pairs(mesh:GetMaterialSlots()) do
            if materialSlot.slotName then
                mesh:SetMaterialForSlot(material, materialSlot.slotName)
                mesh:SetColor(color)
            end
        end
    end
end

function IsMultipleCollects(producer)
    return producer.NumberOfCollects and (producer.NumberOfCollects == 0 or producer.NumberOfCollects > 1)
end

function TryEquipmentInteract(player, target, toolType, equipmentSettings, doInteract)
    local errorMessage
    if target == COMPONENT_ROOT then
        -- Check we can place any producers
        local itemId = equipmentSettings.ItemId
        local producerId = FindProducerIdFromEquipment(toolType, equipmentSettings)

        if producerId then
            local producerData = PRODUCER_BASES.GetProducerData(producerId)
            if producerData then
                if HasRequiredItems(player, producerData.ToolsConsumedWhenPlaced, equipmentSettings) then
                    Events.Broadcast("CanEquipmentInteract", "PlaceProducer", target, toolType, equipmentSettings)

                    local inventoryId = equipmentSettings.InventoryId
                    local slotIndex = equipmentSettings.SlotIndex
                    local itemData = DATABASE.Items[equipmentSettings.ItemId]

                    ShowProducerPreview(producerId)

                    if itemData and producerData then
                        local amountLeft = INVENTORY.GetAmountInInventory(player, inventoryId, INVENTORY.ItemType.Item, itemId, slotIndex)
                        if amountLeft >= producerData.NumberOfSeeds then
                            if doInteract then
                                PRODUCER_BASES.PlaceProducer(COMPONENT_ROOT_ID, producerId)
                                INVENTORY.RemoveFromInventory(player, inventoryId, INVENTORY.ItemType.Item, itemId, producerData.NumberOfSeeds, slotIndex)
                                amountLeft = amountLeft - producerData.NumberOfSeeds
                                if producerData.PlaceEffects and producerData.PlaceEffects ~= "" then
                                    local params = { position = COMPONENT_ROOT:GetWorldPosition() + producerData.PlaceEffectsOffset }
                                    local effects = World.SpawnAsset(producerData.PlaceEffects, params)
                                    -- Ensure these don't stack up
                                    if effects.lifeSpan == 0 then
                                        effects.lifeSpan = 5
                                    end
                                end
                                -- Handle tool consumption
                                if producerData.ToolsConsumedWhenPlaced and producerData.ToolsConsumedWhenPlaced > 0 then
                                    if equipmentSettings.InventoryId and equipmentSettings.InventoryId ~= "" then
                                        INVENTORY.RemoveFromInventory(player, equipmentSettings.InventoryId, INVENTORY.ItemType.Item, equipmentSettings.ItemId, producerData.ToolsConsumedWhenPlaced, equipmentSettings.SlotIndex)
                                    end
                                end
                                return true, nil
                            end
                        else
                            errorMessage = GetMissingRequirementsMessage(itemId)
                        end
                    end
                    return true, nil
                else
                    errorMessage = GetMissingRequirementsMessage(equipmentSettings.ItemId)
                end
            end
        end

        -- Check Buff
        if CanBuffProducer(toolType, equipmentSettings) then
            local hasRequiredTools = true
            for buffId, buffValidToolTypes in pairs(buffData.buffValidToolTypes) do
                if buffValidToolTypes[toolType] or buffValidToolTypes[equipmentSettings.ItemId] then
                    if not HasRequiredItems(player, buffData.toolsConsumedWhenAdded[buffId], equipmentSettings) then
                        hasRequiredTools = false
                        break
                    end
                end
            end

            if hasRequiredTools then
                Events.Broadcast("CanEquipmentInteract", "BuffProducer", target, toolType, equipmentSettings)

                if doInteract then
                    BuffProducerWithTool(toolType, equipmentSettings)

                    -- Handle tool consumption
                    for buffId, buffValidToolTypes in pairs(buffData.buffValidToolTypes) do
                        if buffData.toolsConsumedWhenAdded[buffId] > 0 and buffValidToolTypes[toolType] or buffValidToolTypes[equipmentSettings.ItemId] then
                            if equipmentSettings.InventoryId and equipmentSettings.InventoryId ~= "" then
                                INVENTORY.RemoveFromInventory(player, equipmentSettings.InventoryId, INVENTORY.ItemType.Item, equipmentSettings.ItemId, buffData.toolsConsumedWhenAdded[buffId], equipmentSettings.SlotIndex)
                                break
                            end
                        end
                    end
                end
                return true, nil
            else
                errorMessage = GetMissingRequirementsMessage(equipmentSettings.ItemId)
            end
        end

        -- Check if we can start building the producer
        if CanStartBuildingProducer(toolType, equipmentSettings) then
            local producerData = GetProducerData()
            if producerData then

                local toolsConsumed = IsProducerRebuilding() and producerData.ToolsConsumedWhenRebuilt or producerData.ToolsConsumedWhenBuilt

                if HasRequiredItems(player, toolsConsumed, equipmentSettings) then
                    Events.Broadcast("CanEquipmentInteract", "BuildProducer", target, toolType, equipmentSettings)

                    if doInteract then
                        PRODUCER_BASES.StartBuildingProducer(COMPONENT_ROOT_ID)

                        -- Handle tool consumption
                        if toolsConsumed and toolsConsumed > 0 then
                            if equipmentSettings.InventoryId and equipmentSettings.InventoryId ~= "" then
                                INVENTORY.RemoveFromInventory(player, equipmentSettings.InventoryId, INVENTORY.ItemType.Item, equipmentSettings.ItemId, producerData.ToolsConsumedWhenBuilt, equipmentSettings.SlotIndex)
                            end
                        end
                    end
                    return true, nil
                else
                    errorMessage = GetMissingRequirementsMessage(equipmentSettings.ItemId)
                end
            end
        end

        -- Check Collect
        if CanCollectProducer(toolType, equipmentSettings) then
            local producerData = GetProducerData()
            if producerData then
                if HasRequiredItems(player, producerData.ToolsConsumedWhenCollected, equipmentSettings) then
                    Events.Broadcast("CanEquipmentInteract", "CollectProducer", target, toolType, equipmentSettings)
                    if doInteract then
                        PRODUCER_BASES.Collect(player, COMPONENT_ROOT_ID)
                        dropsNeedCollecting = true

                        RuntimeStateToInstance()
                        REPLICATOR.ModifyInstance(instance)

                        -- Handle tool consumption
                        if producerData.ToolsConsumedWhenCollected and producerData.ToolsConsumedWhenCollected > 0 then
                            if equipmentSettings.InventoryId and equipmentSettings.InventoryId ~= "" then
                                INVENTORY.RemoveFromInventory(player, equipmentSettings.InventoryId, INVENTORY.ItemType.Item, equipmentSettings.ItemId, producerData.ToolsConsumedWhenCollected, equipmentSettings.SlotIndex)
                            end
                        end
                    end
                    return true, nil
                else
                    errorMessage = GetMissingRequirementsMessage(equipmentSettings.ItemId)
                end
            end
        end

        -- Check Remove Product
        if CanRemoveProducer(toolType, equipmentSettings) then
            local producerData = GetProducerData()
            if producerData then
                if HasRequiredItems(player, producerData.ToolsConsumedWhenDestroyed, equipmentSettings) then
                    Events.Broadcast("CanEquipmentInteract", "RemoveProducer", target, toolType, equipmentSettings)
                    if doInteract then
                                -- Give any drops we might have
                        PRODUCER_BASES.HandleProducerDrops(player, COMPONENT_ROOT_ID)

                        -- Remove the producer
                        PRODUCER_BASES.RemoveProducer(COMPONENT_ROOT_ID)

                        -- Handle tool consumption
                        if producerData.ToolsConsumedWhenDestroyed and producerData.ToolsConsumedWhenDestroyed > 0 then
                            if equipmentSettings.InventoryId and equipmentSettings.InventoryId ~= "" then
                                INVENTORY.RemoveFromInventory(player, equipmentSettings.InventoryId, INVENTORY.ItemType.Item, equipmentSettings.ItemId, producerData.ToolsConsumedWhenDestroyed, equipmentSettings.SlotIndex)
                            end
                        end
                    end
                    return true, nil
                else
                    errorMessage = GetMissingRequirementsMessage(equipmentSettings.ItemId)
                end
            end
        end

        -- Check Remove Base
        if CanRemovePlaceable(player, toolType, equipmentSettings) then
            Events.Broadcast("CanEquipmentInteract", "RemovePlaceable", target, toolType, equipmentSettings)
            if doInteract then
                PRODUCER_BASES.HandleProducerDrops(player, COMPONENT_ROOT_ID)
                RemovePlaceable(player)
            end
            return true, nil
        end

        Events.Broadcast("CanEquipmentInteract", "NoInteraction", target, toolType, equipmentSettings)

        -- Find an appropriate error message
        if doInteract and not errorMessage then
            if HasProducer() then
                local function GetBuffInteractionText(producerData, buffs)
                    local placeableData = GetPlaceableData()
                    for buffId, _ in pairs(buffs) do
                        if not BUFFS.HasBuff(PLACEABLE_ID, buffId) then
                            local data
                            if producerData and producerData.InputBuffs and producerData.InputBuffs[buffId] then
                                data = producerData.InputBuffs[buffId]
                            elseif placeableData and placeableData.InputBuffs and placeableData.InputBuffs[buffId] then
                                data = placeableData.InputBuffs[buffId]
                            end

                            if data and data.InteractionText and data.InteractionText ~= "" then
                                return data.InteractionText
                            end
                        end
                    end
                    return nil
                end

                local producerData = GetProducerData()
                if runtimeState.isReadyForCollect and producerData.CollectInteractionText and producerData.CollectInteractionText ~= "" then
                    errorMessage = producerData.CollectInteractionText
                elseif not runtimeState.hasStartedBuilding then
                    if producerData.BuildInteractionText and producerData.BuildInteractionText ~= "" then
                        errorMessage = producerData.BuildInteractionText
                    elseif not CheckHasAllBuffs(buffData.requireToStartBuildingBuffs) then
                        errorMessage = GetBuffInteractionText(producerData, buffData.requireToStartBuildingBuffs)
                    elseif not IsProducerRebuilding() and not CheckHasAllBuffs(buffData.requireWhileBuildingBuffs) then
                        errorMessage = GetBuffInteractionText(producerData, buffData.requireWhileBuildingBuffs)
                    elseif IsProducerRebuilding() and not CheckHasAllBuffs(buffData.requireWhileRebuildingBuffs) then
                        errorMessage = GetBuffInteractionText(producerData, buffData.requireWhileRebuildingBuffs)
                    elseif producerData.DestroyInteractionText and producerData.DestroyInteractionText ~= "" then
                        errorMessage = producerData.DestroyInteractionText
                    end
                end
            else
                local placeableData = GetPlaceableData()
                if placeableData and placeableData.AddProducerText and placeableData.AddProducerText ~= "" then
                    errorMessage = placeableData.AddProducerText
                end
            end
        end
    end

    return false, errorMessage
end

function CanEquipmentInteract(player, target, toolType, equipmentSettings)
    return TryEquipmentInteract(player, target, toolType, equipmentSettings, false)
end

function EquipmentInteract(player, target, toolType, equipmentSettings)
    return TryEquipmentInteract(player, target, toolType, equipmentSettings, true)
end

function HasRequiredItems(player, requiredToolAmount, equipmentSettings)
    if requiredToolAmount and requiredToolAmount > 0 then
        if equipmentSettings.InventoryId and equipmentSettings.InventoryId ~= "" then
            if not INVENTORY.HasAmountInInventory(player, equipmentSettings.InventoryId, INVENTORY.ItemType.Item, equipmentSettings.ItemId, requiredToolAmount, equipmentSettings.SlotIndex) then
                return false
            end
        end
    end
    return true
end

function GetMissingRequirementsMessage(itemId)
    local message = "Not enough items"
    if DATABASE.Items then
        local itemData = DATABASE.Items[itemId]
        message = string.format("Not enough %s", itemData.Name)
    end
    return message
end

function CanPlaceProducer(producerId, toolType, equipmentSettings)
    if not HasProducer() then
        if not producerId then
            return false
        end
        local producerData = PRODUCER_BASES.GetProducerData(producerId)
        if producerData then
            -- Check that the tool is valid
            if EQUIPMENT.IsValidToolType(producerData.ValidPlaceToolTypes, toolType, equipmentSettings)  then
                -- Check that the seed can be producted in this plot type
                local producerBaseTypes = producerData.ValidProducerBaseTypes
                if producerBaseTypes == nil or producerBaseTypes == "" then
                    return true
                else
                    producerBaseTypes = { CoreString.Split(producerBaseTypes, ",") }
                    for _, producerBaseType in pairs(producerBaseTypes) do
                        if CoreString.Trim(producerBaseType) == CoreString.Trim(DATABASE.Placeables[PLACEABLE_ID].ProducerBaseType) then
                            return true
                        end
                    end
                    return false
                end
            end
        end
    end
    return false
end

function CanBuffProducer(toolType, equipmentSettings)
    for buffId, buffValidToolTypes in pairs(buffData.buffValidToolTypes) do
        if buffValidToolTypes[toolType] or buffValidToolTypes[equipmentSettings.ItemId] then
            -- If we already have the buff, check how much of this buff we have
            if BUFFS.HasBuff(COMPONENT_ROOT_ID) then
                local minAllowedBuffConsumption = buffData.MinAllowedBuffConsumption[buffId] or 0
                local maxAmount = BUFFS.GetBuffSetting(buffId, BUFFS.Settings.MaxStacks) 
                local remainingAmount = BUFFS.GetBuffRemainingAmount(COMPONENT_ROOT_ID, buffId)            
                if maxAmount - remainingAmount > minAllowedBuffConsumption then
                    return false
                end
            end
            return true
        end
    end
    return false
end

function BuffProducerWithTool(toolType, equipmentSettings)
    for buffId, buffValidToolTypes in pairs(buffData.buffValidToolTypes) do
        if buffValidToolTypes[toolType] or buffValidToolTypes[equipmentSettings.ItemId] then
            BUFFS.AddBuff(COMPONENT_ROOT_ID, buffId, GetTime)

            local addBuffEffect = buffData.addBuffEffect[buffId] 
            local addBuffEffectOffset = buffData.addBuffEffectOffset[buffId] or Vector3.ZERO
            local producerData = GetProducerData()
            if addBuffEffect and addBuffEffect ~= "" then
                local params = { position = COMPONENT_ROOT:GetWorldPosition() + addBuffEffectOffset }
                local effects = World.SpawnAsset(addBuffEffect, params)
                -- Ensure these don't stack up
                if effects.lifeSpan == 0 then
                    effects.lifeSpan = 5
                end
            end
        end
    end
    RuntimeStateToInstance()
    REPLICATOR.ModifyInstance(instance)
end

function CanStartBuildingProducer(toolType, equipmentSettings)
    if HasProducer() and not HasStartedBuilding() then
        local producerData = GetProducerData()
        if producerData then
            if CheckHasAllBuffs(buffData.requireToStartBuildingBuffs) then
                local autoBuild = producerData.AutoBuild
                if IsProducerRebuilding() then
                    autoBuild = producerData.AutoRebuild
                end
                if autoBuild then
                    return true
                end
                if toolType then
                    local validBuildToolTypes = IsProducerRebuilding() and producerData.ValidRebuildToolTypes or producerData.ValidBuildToolTypes
                    if EQUIPMENT.IsValidToolType(validBuildToolTypes, toolType, equipmentSettings) then
                        return true
                    end
                end
            end
        end
    end
    return false
end

function CanCollectProducer(toolType, equipmentSettings)
    if HasProducer() and IsProducerReady() then
        local producerData = GetProducerData()
        if EQUIPMENT.IsValidToolType(producerData.ValidCollectToolTypes, toolType, equipmentSettings) then
            return true
        end
    end
    return false
end

function CanRemoveProducer(toolType, equipmentSettings)
    if HasProducer() then
        local placeableData = GetPlaceableData()
        if placeableData.AllowProducerRemoval == false then
            return false
        end
        local producerData = GetProducerData()
        if EQUIPMENT.IsValidToolType(producerData.ValidDestroyToolTypes, toolType, equipmentSettings) then
            return true
        end
    end
    return false
end

function CanRemovePlaceable(player, toolType, equipmentSettings)
    local placeableData = GetPlaceableData()
    if placeableData then
        if not EQUIPMENT.IsValidToolType(placeableData.ValidRemoveToolTypes, toolType, equipmentSettings)  then
            return false
        end

        if not HasProducer() or not placeableData.AllowProducerRemoval then
            if not placeableData.DestroyOnRemove then
                -- Ensure all potential drops can fit into Inventory
                local itemId = instance.placeableId
                local itemData = DATABASE.Items[itemId]
                local itemsToCheck = {}
                local currenciesToCheck = {}

                if itemData then
                    if itemData.IsInventory then
                        local inventoryId, _ = SERIALIZER.ReadString(instance.state)
                        itemId = inventoryId
                    end
                    itemsToCheck[itemId] = 1
                end

                if placeableData.DropPlacementCostsOnRemove and placeableData.Costs and #placeableData.Costs > 0 then
                    for _, costData in pairs(placeableData.Costs) do
                        if costData.ItemId and costData.ItemId ~= "" then
                            itemsToCheck[costData.ItemId] = (itemsToCheck[costData.ItemId] or 0) + costData.Amount
                        elseif costData.CurrencyId and costData.CurrencyId ~= "" then
                            currenciesToCheck[costData.CurrencyId] = (currenciesToCheck[costData.CurrencyId] or 0) + costData.Amount
                        end
                    end
                end

                local canRemove = INVENTORY.CanAddItemsToInventory(player, nil, itemsToCheck)
                if canRemove then
                    canRemove = CURRENCY.HasRoomForCurrencies(player, currenciesToCheck)
                    if canRemove then
                        return true
                    else
                        return false, string.format("Can't remove %s. No room for Currency", itemData.Name)
                    end
                else
                    return false, string.format("Can't remove %s. No room in Inventory", itemData.Name)
                end
            else
                return true
            end
        end
    end
    return false
end

function RemovePlaceable(player)
    local placeableId = instance.placeableId
    local placeableData = GetPlaceableData()
    if placeableData then
        local itemData, itemType, itemId
        if DATABASE.Items then
            itemData = DATABASE.Items[placeableId]
            itemId = placeableId
            itemType = INVENTORY.ItemType.Item
            if itemData and itemData.IsInventory then
                local inventoryId, _ = SERIALIZER.ReadString(instance.state)
                itemId = inventoryId
                itemType = INVENTORY.ItemType.Inventory
            end
        end

        if not placeableData.DestroyOnRemove and itemData then
            if placeableData.DropInWorldOnRemove then
                ITEM_PICKUPS.CreateItemPickup(player, placeableData.DropItemPickupTemplate, runtimeState.position, runtimeState.position, ITEM_PICKUPS.PickupType.Item, itemType, itemId, 1, placeableData.DropsForAllPlayers, true, placeableData.DropTimeoutSeconds)

                if placeableData.DropPlacementCostsOnRemove and placeableData.Costs then
                    local pickupData = {}
                    for _, costData in pairs(placeableData.Costs) do
                        if costData.ItemId and costData.ItemId ~= "" then
                            table.insert(pickupData, ITEM_PICKUPS.CreatePickupData(ITEM_PICKUPS.PickupType.Item, INVENTORY.ItemType.Item, costData.ItemId, costData.Amount, 0))
                        elseif costData.CurrencyId and costData.CurrencyId ~= "" then
                            table.insert(pickupData, ITEM_PICKUPS.CreatePickupData(ITEM_PICKUPS.PickupType.Currency, nil, costData.CurrencyId, costData.Amount, 0))
                        end
                    end

                    if #pickupData > 0 then
                        ITEM_PICKUPS.CreateItemPickups(player, placeableData.DropItemPickupTemplate, runtimeState.position, 0, pickupData, placeableData.DropsForAllPlayers, true, placeableData.DropTimeoutSeconds)
                    end
                end
            else
                INVENTORY.AddToInventory(player, nil, itemType, itemId, 1, 0, false)
                if placeableData.DropPlacementCostsOnRemove and placeableData.Costs and #placeableData.Costs > 0 then
                    for _, costData in pairs(placeableData.Costs) do
                        if costData.ItemId and costData.ItemId ~= "" then
                            INVENTORY.AddToInventory(player, nil, INVENTORY.ItemType.Item, costData.ItemId, costData.Amount, 0, false)
                        elseif costData.CurrencyId and costData.CurrencyId ~= "" then
                            CURRENCY.AddCurrencyAmount(player, costData.CurrencyId, costData.Amount)
                        end
                    end
                end
            end
        end

        if placeableData.RemoveEffects and placeableData.RemoveEffects ~= "" then
            local params = { position = COMPONENT_ROOT:GetWorldPosition() + placeableData.RemoveEffectsOffset }
            local effects = World.SpawnAsset(placeableData.RemoveEffects, params)

            -- Ensure these don't stack up
            if effects.lifeSpan == 0 then
                effects.lifeSpan = 5
            end
        end
    end

    PRODUCER_BASES.HandleProducerDrops(player, COMPONENT_ROOT_ID)
    REPLICATOR.DestroyInstance(instance, false)

    UpdateLinkedBuffs()

    Events.Broadcast(PLACEABLES.Events.PlaceableRemoved, COMPONENT_ROOT_ID, placeableId)
end

function GetPosition()
    return runtimeState.position
end

function OnBuffAdded(buffId)
    BUFFS.SetBuffTimeFunction(COMPONENT_ROOT_ID, buffId, GetTime)
    local overrideDuration = buffData.overrideBuffDurations[buffId]
    if overrideDuration then
        BUFFS.SetBuffDuration(COMPONENT_ROOT_ID, buffId, overrideDuration)
    end

    HandleAutoBuild()
    UpdateBuildRate()
    UpdateExpireRate()
    instanceNeedsEncoding = true
end

function OnBuffRemoved(buffId)
    UpdateBuildRate()
    UpdateExpireRate()
    instanceNeedsEncoding = true
end

function OnBuffRelinked(buffId)
    HandleAutoBuild()
    DoProximityBuffs()
end

function OnHandleBuffs()
    DoProximityBuffs()
end

local TimeSimulator = {}

function TimeSimulator.GetStartTime()
    return runtimeState.time
end

function safe_min(a,b)
    if a == nil and b == nil then return nil end
    if a == nil then return b end
    if b == nil then return a end
    if a < b then return a end
    return b
end

function nil_zero_or_less(a)
    if a == nil then return nil end
    if a <= 0 then return nil end
    return a
end

function TimeSimulator.GetNextTime(prevTime)
    local minRemainingTime = nil
    for _, buffId in ipairs(BUFFS.GetBuffs(COMPONENT_ROOT_ID)) do
        local buffRemainingTime = nil_zero_or_less(BUFFS.GetBuffRemainingTime(COMPONENT_ROOT_ID, buffId, prevTime))
        minRemainingTime = safe_min(buffRemainingTime, minRemainingTime)
    end

    local remainingBuildTime = nil_zero_or_less(buildCounter:GetRemainingTimeToMax(prevTime))
    local remainingExpireTime = nil_zero_or_less(expireCounter:GetRemainingTimeToMax(prevTime))

    minRemainingTime = safe_min(remainingBuildTime, minRemainingTime)
    minRemainingTime = safe_min(remainingExpireTime, minRemainingTime)

    if minRemainingTime then
        return minRemainingTime + prevTime
    end
end

function TimeSimulator.OnStepTime(currentTime)
    -- If the step time was in the past, do nothing
    if currentTime < runtimeState.time then
        return
    end

    runtimeState.time = currentTime
    UpdateRuntimeState()
    HandleAutoCollect()
    BUFFS.HandleFinishedTimedBuffs(COMPONENT_ROOT_ID)
end

function TimeSimulator.OnStepTimeEnd()
    if dropsNeedCollecting then
        dropsNeedCollecting = false
        for player, dropResults in pairs(playerDropResults) do
            if Object.IsValid(player) then
                PRODUCER_BASES.CollectDropResults(player, COMPONENT_ROOT_ID, dropResults)
            end
            -- remove it from the table
            playerDropResults[player] = nil
        end
        -- not sure how to handle drops when theres no player, check with brad
    end

    if UpdateProducerTemplates() then
        Task.Wait()
    end

    if Environment.IsServer() then
        if instanceNeedsEncoding then
            instanceNeedsEncoding = false
            RuntimeStateToInstance()
        end
    end
end

local modifiedListener = instance.modifiedEvent:Connect(OnInstanceModified)

local listeners = {
    Events.Connect(BUFFS.Events.PrepareLinkedBuffs, OnPrepareLinkedBuffs)
}

local placeableFunctionTable = {
    GetState = GetState,
    OnBuffAdded = OnBuffAdded,
    OnBuffRemoved = OnBuffRemoved,
    OnBuffRelinked = OnBuffRelinked,
    OnHandleBuffs = OnHandleBuffs
}

local producerBaseFunctionTable = {
    Collect = Collect,
    GetState = GetState,
    CanPlaceProducer = CanPlaceProducer,
    PlaceProducer = PlaceProducer,
    RemoveProducer = RemoveProducer,
    StartBuildingProducer = StartBuildingProducer,
    HasProducerExpired = HasProducerExpired,
    FindProducerIdFromEquipment = FindProducerIdFromEquipment,
    CheckHasAllBuffs = CheckHasAllBuffs,
    CheckHasAnyBuffs = CheckHasAnyBuffs,
    GetDropResults = GetDropResults
}

local equipmentFunctionTable = {
    CanEquipmentInteract = CanEquipmentInteract,
    EquipmentInteract = EquipmentInteract
}

local buffTargetFunctionTable = {
    GetPosition = GetPosition,
}

PLACEABLES.RegisterPlaceable(COMPONENT_ROOT_ID, placeableFunctionTable)
PRODUCER_BASES.RegisterProducerBase(COMPONENT_ROOT_ID, producerBaseFunctionTable)
EQUIPMENT.RegisterEquipmentTarget(COMPONENT_ROOT, equipmentFunctionTable)
BUFFS.RegisterTarget(COMPONENT_ROOT_ID, buffTargetFunctionTable)
TIME_SIMULATOR.RegisterSystem(COMPONENT_ROOT_ID, TimeSimulator)

COMPONENT_ROOT.destroyEvent:Connect(function()
    PLACEABLES.UnregisterPlaceable(COMPONENT_ROOT_ID)
    PRODUCER_BASES.UnregisterProducerBase(COMPONENT_ROOT_ID)
    EQUIPMENT.UnregisterEquipmentTarget(COMPONENT_ROOT)
    BUFFS.UnregisterTarget(COMPONENT_ROOT_ID)
    TIME_SIMULATOR.UnregisterSystem(COMPONENT_ROOT_ID)
    if modifiedListener then
        modifiedListener:Disconnect()
    end
    for _, listener in pairs(listeners) do
        listener:Disconnect()
    end
    UpdateLinkedBuffs()
end)

ClearBuffData()
InstanceToRuntimeState()
UpdateRuntimeState()
HandleAutoBuild()
UpdateLinkedBuffs()
UpdateProducerTemplateData()
RuntimeStateToInstance()

REPLICATOR.ModifyInstance(instance, true)