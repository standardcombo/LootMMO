
---@type APIPlaceables
local PLACEABLES = require(script:GetCustomProperty("APIPlaceables"))
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
---@type APISerializer
local SERIALIZER = require(script:GetCustomProperty("APISerializer"))

local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local COMPONENT_ROOT_ID = COMPONENT_ROOT.id

---@type Instance
local instance = REPLICATOR.GetCurrentInstance()

-- If there's no instance, it was spawned for the preview
if instance == nil then
    return
end

local PLACEABLE_ID = instance.placeableId
local PLACEABLE_DATA = DATABASE.Placeables[PLACEABLE_ID]
if PLACEABLE_DATA == nil then
    error ("Unable to find the placeable data in the database")
    return
end

--- Runtime data
local runtimeState = {
    position = COMPONENT_ROOT:GetWorldPosition(),
    rotation = COMPONENT_ROOT:GetWorldRotation(),
    placeableId = instance.placeableId,
    time = REALTIME.GetRealTime(),
}

local buffData = {
    receiveableBuffs = {},
    proximityBuffs = {},
    buffValidToolTypes = {},
    toolsConsumedWhenAdded = {},
    proximityBuffsRadius = {},
    overrideBuffDurations = {},
    proximityBuffsRequired = {},
    addBuffEffect = {},
    addBuffEffectOffset = {},
    proximityBuffsAddAmount = {},
}

local activeProximityBuffs = {}

function GetTime()
    return runtimeState.time
end

--- Reads the instance data into the runtime state
function InstanceToRuntimeState()
    local buffState
    if instance.state == "" then
    else
        buffState = SERIALIZER.ReadString(instance.state)
    end

    runtimeState.time = instance.serverTime

    UpdateBuffData()
    BUFFS.ReadBuffsFromTable(COMPONENT_ROOT_ID, buffState or {}, GetTime)

    UpdateLinkedBuffs()
end

--- Writes the runtime state into the instance data
function RuntimeStateToInstance()
    local buffState = BUFFS.WriteBuffsToTable(COMPONENT_ROOT_ID, GetTime())
    instance.state = SERIALIZER.WriteString(buffState)
    instance.serverTime = runtimeState.time
end

--- Callback when we're recieved a modification to an instance
function OnInstanceModified()
    InstanceToRuntimeState(true)
    runtimeState.position = COMPONENT_ROOT:GetWorldPosition()
    runtimeState.rotation = COMPONENT_ROOT:GetWorldRotation()
end

function GetState()
    ---@class PlaceableState
    local result = {}
    result.placeableId = runtimeState.placeableId
    result.position = runtimeState.position
    result.rotation = runtimeState.rotation
    return result
end

function GetPlaceableData()
    return DATABASE.Placeables[runtimeState.placeableId]
end

function TryEquipmentInteract(player, target, toolType, equipmentSettings, doInteract)
    local errorMessage
    if target == COMPONENT_ROOT then
        -- Check Buff
        local canBuff, canBuffError = CanBuffPlaceable(toolType, equipmentSettings)
        if canBuff then
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
                    BuffPlaceableWithTool(toolType, equipmentSettings)

                    -- Handle tool consumption
                    for buffId, buffValidToolTypes in pairs(buffData.buffValidToolTypes) do
                        if buffValidToolTypes[toolType] or buffValidToolTypes[equipmentSettings.ItemId] then
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

        -- Check Remove
        local canRemove, canRemoveError = CanRemovePlaceable(player, toolType, equipmentSettings)
        if canRemove then
            Events.Broadcast("CanEquipmentInteract", "RemovePlaceable", target, toolType, equipmentSettings)
            if doInteract then
                PLACEABLES.HandlePlaceableDrops(player, COMPONENT_ROOT_ID)
                RemovePlaceable(player)
            end
            return true, nil
        end

        Events.Broadcast("CanEquipmentInteract", "NoInteraction", target, toolType, equipmentSettings)

        -- Find an appropriate error message
        if doInteract and not errorMessage then
            errorMessage = canBuffError or canRemoveError
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

function CanBuffPlaceable(toolType, equipmentSettings)
    for buffId, buffValidToolTypes in pairs(buffData.buffValidToolTypes) do
        if buffValidToolTypes[toolType] or buffValidToolTypes[equipmentSettings.ItemId] then
            -- If we already have the buff, check how much of this buff we have
            if BUFFS.HasBuff(COMPONENT_ROOT_ID) then
                local minAllowedBuffConsumption = buffData.minAllowedBuffConsumption[buffId] or 0
                local maxAmount = BUFFS.GetBuffSetting(buffId, BUFFS.Settings.MaxStacks)
                local remainingAmount = BUFFS.GetBuffRemainingAmount(COMPONENT_ROOT_ID, buffId)
                if maxAmount - remainingAmount > minAllowedBuffConsumption then
                    return false, "Not enough room"
                end
            end
            return true
        end
    end
    return false
end

function BuffPlaceableWithTool(toolType, equipmentSettings)
    for buffId, buffValidToolTypes in pairs(buffData.buffValidToolTypes) do
        if buffValidToolTypes[toolType] or buffValidToolTypes[equipmentSettings.ItemId] then
            BUFFS.AddBuff(COMPONENT_ROOT_ID, buffId, GetTime)

            local addBuffEffect = buffData.addBuffEffect[buffId] 
            local addBuffEffectOffset = buffData.addBuffEffectOffset[buffId] or Vector3.ZERO
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

function CanRemovePlaceable(player, toolType, equipmentSettings)
    local placeableData = GetPlaceableData()
    if placeableData then
        if not EQUIPMENT.IsValidToolType(placeableData.ValidRemoveToolTypes, toolType, equipmentSettings)  then
            return false
        end

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

    REPLICATOR.DestroyInstance(instance, false)
    UpdateLinkedBuffs()

    Events.Broadcast(PLACEABLES.Events.PlaceableRemoved, COMPONENT_ROOT_ID, placeableId)
end

--- Buff system callbacks

function GetPosition()
    return runtimeState.position
end

function OnBuffAdded(buffId)
    BUFFS.SetBuffTimeFunction(COMPONENT_ROOT_ID, buffId, GetTime)
    local overrideDuration = buffData.overrideBuffDurations[buffId]
    if overrideDuration then
        BUFFS.SetBuffDuration(COMPONENT_ROOT_ID, buffId, overrideDuration)
    end
end

function OnBuffRemoved(buffId)
end

function OnBuffRelinked(buffId)
    DoProximityBuffs()
end

function OnHandleBuffs()
    DoProximityBuffs()
end

function SplitStringByCommas(s)
    local results = {}
    for _, subString in pairs( { CoreString.Split(s, ",", { removeEmptyResults = true }) }) do
        table.insert(results, CoreString.Trim(subString))
    end
    return results
end

function ClearBuffData()
    for key in pairs(buffData) do
        if next( buffData[key]) then
            buffData[key] = {}
        end
    end
end

function OnPrepareLinkedBuffs()
    if next(activeProximityBuffs) then
        activeProximityBuffs = {}
    end
end

function ProcessBuffData(buffs)
    if buffs == nil then
        return
    end

    for buffId, data in pairs(buffs) do
        buffData.proximityBuffsRadius[buffId] = data.Radius
        buffData.proximityBuffsAddAmount[buffId] = data.AddAmount

        if data.Radius then
            buffData.proximityBuffs[buffId] = true
        end
        if data.CanReceive then
            buffData.receiveableBuffs[buffId] = true
        end
        if data.OverrideBuffDuration then
            buffData.overrideBuffDurations[buffId] = data.BuffDuration
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
    end
end

---Fill the buff data table
function UpdateBuffData()
    ClearBuffData()
    ProcessBuffData(PLACEABLE_DATA.InputBuffs)
    ProcessBuffData(PLACEABLE_DATA.OutputBuffs)
    BUFFS.ClearTargetRecieveBuffs(COMPONENT_ROOT_ID)
    for buffId in pairs(buffData.receiveableBuffs) do
        BUFFS.AddTargetRecieveBuff(COMPONENT_ROOT_ID,buffId)
    end
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

function DoProximityBuffs()
    if instance.isDestroyed then
        return
    end

    local proximityBuffs = buffData.proximityBuffs
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


function UpdateLinkedBuffs()
    BUFFS.RequestLinkedBuffsUpdate()
end

------ Simulator callbacks

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

function GetStartTime()
    return runtimeState.time
end

function GetNextTime(prevTime)
    local minRemainingTime = nil
    for _, buffId in ipairs(BUFFS.GetBuffs(COMPONENT_ROOT_ID)) do
        local buffRemainingTime = nil_zero_or_less(BUFFS.GetBuffRemainingTime(COMPONENT_ROOT_ID, buffId, prevTime))
        minRemainingTime = safe_min(buffRemainingTime, minRemainingTime)
    end

    if minRemainingTime then
        return minRemainingTime + prevTime
    end
end

function OnStepTime(currentTime)
    -- If the step time was in the past, do nothing
    if currentTime < runtimeState.time then
        return
    end

    runtimeState.time = currentTime
    BUFFS.HandleFinishedTimedBuffs(COMPONENT_ROOT_ID)
end

function OnStepTimeEnd()
end

local placeableFunctionTable = {
    GetState = GetState,
    OnBuffAdded = OnBuffAdded,
    OnBuffRemoved = OnBuffRemoved,
    OnBuffRelinked = OnBuffRelinked,
    OnHandleBuffs = OnHandleBuffs
}

local equipmentFunctionTable = {
    CanEquipmentInteract = CanEquipmentInteract,
    EquipmentInteract = EquipmentInteract,
}

local buffTargetFunctionTable = {
    GetPosition = GetPosition,
}

---@type TimeSimulatorFunctionTable
local timeSimulatorFunctionTable = {
    GetStartTime = GetStartTime,
    GetNextTime = GetNextTime,
    OnStepTime = OnStepTime,
    OnStepTimeEnd = OnStepTimeEnd
}

-- Register
PLACEABLES.RegisterPlaceable(COMPONENT_ROOT_ID, placeableFunctionTable)
EQUIPMENT.RegisterEquipmentTarget(COMPONENT_ROOT, equipmentFunctionTable)
BUFFS.RegisterTarget(COMPONENT_ROOT_ID, buffTargetFunctionTable)
TIME_SIMULATOR.RegisterSystem(COMPONENT_ROOT_ID, timeSimulatorFunctionTable)

-- Events
local listeners = {
    Events.Connect(BUFFS.Events.PrepareLinkedBuffs, OnPrepareLinkedBuffs)
}
local modifiedListener = instance.modifiedEvent:Connect(OnInstanceModified)

COMPONENT_ROOT.destroyEvent:Connect(function()
    PLACEABLES.UnregisterPlaceable(COMPONENT_ROOT_ID)
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
UpdateLinkedBuffs()