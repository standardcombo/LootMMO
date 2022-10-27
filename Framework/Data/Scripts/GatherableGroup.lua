-- Static scripts need to ensure API scripts have been loaded in the correct contexts
local REQUIRED_VERSION = 1
while not _G.AreFrameworkDependenciesLoaded do
    Task.Wait()
end

if not _G.CheckFrameworkVersionUpToDate(REQUIRED_VERSION) then
    return
end

local MODULE = require( script:GetCustomProperty("ModuleManager") )
function LOOT_DROP_FACTORY() return MODULE.Get("standardcombo.NPCKit.LootDropFactory") end

local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

---@type APIGatherables
local API = require(script:GetCustomProperty("APIGatherables"))
---@type APIReplicator
local API_REPLICATOR = require(script:GetCustomProperty("APIReplicator"))
---@type APIBitField
local BitField = require(script:GetCustomProperty("BitField"))
---@type APIActiveCoreObjects
local API_ACTIVE = require(script:GetCustomProperty("APIActiveCoreObjects"))
---@type APIEquipment
local EQUIPMENT = require(script:GetCustomProperty("APIEquipment"))
---@type APIDatabase
local DATABASE = require(script:GetCustomProperty("APIDatabase"))
-- ---@type APICurrency
-- local CURRENCY = require(script:GetCustomProperty("APICurrency"))
-- ---@type APIItemPickups
-- local ITEM_PICKUPS = require(script:GetCustomProperty("APIItemPickups"))
-- ---@type APIDrops
-- local DROPS = require(script:GetCustomProperty("APIDrops"))
-- ---@type APIInventory
-- local INVENTORY = require(script:GetCustomProperty("APIInventory"))

local GROUP = script:GetCustomProperty("Group"):WaitForObject()

local RESPAWN = COMPONENT_ROOT:GetCustomProperty("Respawn")
local RESPAWN_PLAYER_MIN_DISTANCE = COMPONENT_ROOT:GetCustomProperty("RespawnPlayerMinDistance")
local RESPAWN_PLAYER_MAX_DISTANCE = COMPONENT_ROOT:GetCustomProperty("RespawnPlayerMaxDistance")
local RESPAWN_WHEN_NOT_VISIBLE = COMPONENT_ROOT:GetCustomProperty("RespawnWhenNotVisible")
local RANDOM_SPAWN = COMPONENT_ROOT:GetCustomProperty("RandomSpawn")
local RANDOM_SPAWN_PERCENT = COMPONENT_ROOT:GetCustomProperty("RandomSpawnPercent")

if not RESPAWN_PLAYER_MIN_DISTANCE or RESPAWN_PLAYER_MIN_DISTANCE < 0 then
    RESPAWN_PLAYER_MIN_DISTANCE = 0
end

if not RESPAWN_PLAYER_MAX_DISTANCE or RESPAWN_PLAYER_MAX_DISTANCE < RESPAWN_PLAYER_MIN_DISTANCE then
    RESPAWN_PLAYER_MAX_DISTANCE = RESPAWN_PLAYER_MIN_DISTANCE
end

if not RANDOM_SPAWN_PERCENT then
    RANDOM_SPAWN_PERCENT = 100
end

RANDOM_SPAWN_PERCENT = CoreMath.Clamp(RANDOM_SPAWN_PERCENT, 0, 100)

local IsSinglePlayer = (Environment.IsLocalGame() and not Environment.IsMultiplayerPreview()) or Environment.IsSinglePlayerPreview()

---@type gatherableEntry[]
local entries = {}

---@type table<CoreObject, integer>
local coreObjectToIndex = {}

local isActive = true
local pendingRespawns = {}
local needsUpdating = false

-- Find our instance
local instance = API_REPLICATOR.GetCurrentInstance()

-- If our object already exists in the replicator, we might need to wait
if instance == nil then
    instance = API_REPLICATOR.WaitForInstance(script.parent, 10)
    if instance == nil then
        return
    end
end

function GetCustomPropertyInParents(coreObject, property)
    local value = coreObject:GetCustomProperty(property)
    if value == nil then
        if coreObject.parent == nil then
            return nil
        end
        return GetCustomPropertyInParents(coreObject.parent, property)
    else
        return value
    end
end

local bitIndex = 0

function GetNumberOfBits(value)
    if value <= 2 then return 1 end
    if value <= 4 then return 2 end
    if value <= 8 then return 3 end
    if value <= 16 then return 4 end
    if value <= 32 then return 5 end
    error("You have more than 32 states for one item, this isn't supported")
end

function IsEntryDestroyable(entry)
    local state = GetEntryState(entry)
    if state == entry.gatheredStateIndex or state == entry.numberOfStates then
        return false
    end
    return true
end

function IsEntryDestroyedOrGathered(entry)
    return not IsEntryDestroyable(entry)
end

function CanEquipmentInteract(player, target, toolType, equipmentSettings)
    if API_REPLICATOR.IsReplicatorLocked(instance.replicatorId) then
        return false, nil
    end

    for _, entry in pairs(entries) do
        if entry.staticCoreObject == target and IsEntryDestroyable(entry) then
            local isValid = true

            -- Check for a valid Tool type
            if entry.data and entry.data.ValidGatheringToolTypes then
                isValid = EQUIPMENT.IsValidToolType(entry.data.ValidGatheringToolTypes, toolType, equipmentSettings)
            end
            if isValid then
                -- If this Gatherable consumes tools, validate that
                if entry.data and entry.data.ToolsConsumedPerGather and entry.data.ToolsConsumedPerGather > 0 then
                    if equipmentSettings.InventoryId and equipmentSettings.InventoryId ~= "" then
                        if not INVENTORY.HasAmountInInventory(player, equipmentSettings.InventoryId, INVENTORY.ItemType.Item, equipmentSettings.ItemId, entry.data.ToolsConsumedPerGather, equipmentSettings.SlotIndex) then
                            local message = "Not enough items"
                            if DATABASE.Items then
                                local itemData = DATABASE.Items[equipmentSettings.ItemId]
                                message = string.format("Not enough %s", itemData.Name)
                            end
                            return false, message
                        end
                    end
                end

                Events.Broadcast("CanEquipmentInteract", "GatherFromGatherable", target, toolType, equipmentSettings)
                return true, nil
            else
                local message = ""
                if entry.data.InteractionError and entry.data.InteractionError ~= "" then
                    message = entry.data.InteractionError
                elseif entry.data.ValidGatheringToolTypes and entry.data.ValidGatheringToolTypes ~= "" then
                    message = string.format("Use %s on this", entry.data.ValidGatheringToolTypes)
                end
                return false, message
            end
        end
    end
    return false, nil
end

function EquipmentInteract(player, target, toolType, equipmentSettings)
    if API_REPLICATOR.IsReplicatorLocked(instance.replicatorId) then
        return false, nil
    end

    for _, entry in pairs(entries) do
        if entry.staticCoreObject == target and IsEntryDestroyable(entry)  then
            local canGather, errorMessage = CanEquipmentInteract(player, target, toolType, equipmentSettings)
            if not canGather then
                return false, errorMessage
            end

            -- Consume the Tools if required
            if entry.data and entry.data.ToolsConsumedPerGather and entry.data.ToolsConsumedPerGather > 0 then
                if equipmentSettings.InventoryId and equipmentSettings.InventoryId ~= "" then
                    if Environment.IsClient() then
                        ---@type APIInventory
                        local CLIENT_INVENTORY = require(script:GetCustomProperty("APIInventory"))
                        CLIENT_INVENTORY.RemoveFromInventory(player, equipmentSettings.InventoryId, INVENTORY.ItemType.Item, equipmentSettings.ItemId, entry.data.ToolsConsumedPerGather, equipmentSettings.SlotIndex, false)
                    end
                end
            end

            DestroyGatherableAtIndex(player, entry.index)
            return true, nil
        end
    end
    return false, "Can not gather this"
end

function AddEntriesFromGroup(group)
    for index, child in ipairs(group:GetChildren()) do
        if child:IsA("StaticMesh") or child:IsA("Script") or child:GetCustomProperty("State1") or child:GetCustomProperty("GatherableId") then
            if child ~= script then
                ---@class gatherableEntry
                local entry = {}
                entry.bitIndex = bitIndex
                entry.gatherableId = child:GetCustomProperty("GatherableId")
                entry.states = {
                    Static = {},
                    Server = {},
                    Client = {}
                }

                -- Check for existing data
                if entry.gatherableId and entry.gatherableId ~= "" and DATABASE.Gatherables and DATABASE.Gatherables[entry.gatherableId] then
                    entry.data = DATABASE.Gatherables[entry.gatherableId]
                else
                    -- Generate data from the child if it doesn't exist in the Database
                    entry.data = DATABASE.ParseCoreObject(child, true, false)
                end

                for i = 1, 32 do
                    entry.states.Static[i] = entry.data["State" .. tostring(i)]
                    entry.states.Client[i] = entry.data["State" .. tostring(i) .. "_Client"]
                    entry.states.Server[i] = entry.data["State" .. tostring(i) .. "_Server"]

                    -- Currently requiring every state to have a static template for interaction
                    if entry.states.Static[i] == nil then
                        break
                    end
                end

                if child == child:FindTemplateRoot() then
                    entry.states.Static[1] = child.sourceTemplateId
                end

                entry.gatheredStateIndex = #entry.states.Static + 1

                if entry.data.GatheredState then
                    entry.states.Static[entry.gatheredStateIndex] = entry.data.GatheredState
                end

                if entry.data.GatheredState_Client then
                    entry.states.Client[entry.gatheredStateIndex] = entry.data.GatheredState_Client
                end

                if entry.data.GatheredState_Server then
                    entry.states.Server[entry.gatheredStateIndex] = entry.data.GatheredState_Server
                end

                entry.hasTemplatedStates = #entry.states.Static > 0

                local numberOfStates = #entry.states.Static + 1

                -- We need at least 2 states, normal and destroyed
                if numberOfStates < 2 then
                    numberOfStates = 2
                end

                entry.lootID = child:GetCustomProperty("LootID")
                entry.transform = child:GetTransform()
                entry.worldTransform = child:GetWorldTransform()
                entry.staticCoreObject = child
                entry.parent = child.parent
                entry.state = 1
                entry.numberOfStates = numberOfStates
                entry.destroyedTime = time()
                entry.bitLength = GetNumberOfBits(entry.numberOfStates)
                table.insert(entries, entry)

                entry.index = #entries
                coreObjectToIndex[child] = entry.index
                bitIndex = bitIndex + entry.bitLength

                EQUIPMENT.RegisterEquipmentTarget(entry.staticCoreObject, {
                    CanEquipmentInteract = CanEquipmentInteract,
                    EquipmentInteract = EquipmentInteract
                })

                if entry.hasTemplatedStates and entry.data.SpawnTemplateOnLoad then
                    entry.state = nil
                    if Object.IsValid(entry.staticCoreObject) then
                        entry.staticCoreObject:Destroy()
                        coreObjectToIndex[entry.staticCoreObject] = nil
                        entry.staticCoreObject = nil
                    end
                end
            end
        else
            AddEntriesFromGroup(child)
        end
        if index % 1000 == 0 then
            Task.Wait()
        end
    end
end

-- Setup our entries
AddEntriesFromGroup(GROUP)

local BIT_COUNT = bitIndex + 1
local bitField = BitField.New(BIT_COUNT)

-- Updates the instance with our bit field
function WriteToInstance()
    instance.state = bitField.raw
end

-- Loads the bit field from the instance
function LoadFromInstance()
    if instance.state and instance.state ~= "" then
        bitField = BitField.New(BIT_COUNT, instance.state)
    else
        bitField = BitField.New(BIT_COUNT)
    end
end

-- Spawns or destroys core objects based on the bitField
function RefreshCoreObjects()
    for index, entry in ipairs(entries) do
        local state = GetEntryState(entry)
        if not isActive then
            state = nil
        end

        if state ~= entry.state then
            local isFirstSpawn = entry.state == nil
            entry.state = state
            DestroyIndex(index)
            SpawnIndex(index, entry, state, isFirstSpawn)
        end
    end
end

function RandomSpawnObjects()
    local numberSpawned = GetSpawnedObjectCount()
    local totalToSpawn = CoreMath.Round(#entries * (RANDOM_SPAWN_PERCENT / 100))
    local availableIndexes = {}

    if numberSpawned < totalToSpawn then -- We need to spawn more!
        for index, entry in ipairs(entries) do
            local state = GetEntryState(entry)
            if state == entry.numberOfStates or state == entry.gatheredStateIndex then
                table.insert(availableIndexes, index)
            end
        end
        while numberSpawned < totalToSpawn and #availableIndexes > 0 do
            local index = table.remove(availableIndexes, math.random(1, #availableIndexes))
            local entry = entries[index]
            SetEntryState(entry, 1)
            numberSpawned = numberSpawned + 1
        end

        WriteToInstance()
        API_REPLICATOR.ModifyInstance(instance, true)
    elseif numberSpawned > totalToSpawn then -- We need to unspawn
        for index, entry in ipairs(entries) do
            local state = GetEntryState(entry)
            if state < entry.numberOfStates then
                table.insert(availableIndexes, index)
            end
        end
        while numberSpawned > totalToSpawn do
            local index = table.remove(availableIndexes, math.random(1, #availableIndexes))
            local entry = entries[index]
            SetEntryState(entry, entry.numberOfStates)
            numberSpawned = numberSpawned - 1
        end

        WriteToInstance()
        API_REPLICATOR.ModifyInstance(instance, true)
    end
end

function GetSpawnedObjectCount()
    local total = 0
    for _, entry in pairs(entries) do
        local state = GetEntryState(entry)
        if state < entry.numberOfStates or state == entry.gatheredStateIndex then
            total = total + 1
        end
    end

    return total
end

-- Additional functionality that should be in BitField

-- Find the largest value
function GetMaxBitValue(bitCount)
    return (1 << bitCount) - 1
end

-- Find a value based on a number of bits
function GetBitValue(index, bitCount)
    local value = 0
    for i=1, bitCount do
        value = (value << 1) + (bitField:Get(index+i-1) and 1 or 0)
    end
    return value
end

-- Sets multiple bits on a bit field
function SetBitValue(index, value, bitCount)
    assert(value >= 0 and value <= GetMaxBitValue(bitCount))

    for i=1, bitCount do
        local shift = (bitCount-i)
        local boolean = ((1 << shift & value) >> shift) == 1
        bitField:Set(index+i-1, boolean)
    end
end

-- Writes the value into the bit field for an entry
function SetEntryState(entry, value)
    SetBitValue(entry.bitIndex, value-1, entry.bitLength)
end

-- Gets the value from the bit field for an entry
function GetEntryState(entry)
    return GetBitValue(entry.bitIndex, entry.bitLength)+1
end

-- Server function
function OnPlayerDestroyGatherable(player, replicatorId, instanceId, index)
    if instance and instance.replicatorId == replicatorId and instance.id == instanceId then
        local entry = entries[index]
        if entry == nil then
            return
        end

        if entry.staticCoreObject == nil then
            return
        end

        local value = GetEntryState(entry)
        if value < entry.numberOfStates then
            value = math.min(value + 1, entry.numberOfStates, entry.gatheredStateIndex)

            SetEntryState(entry, value)

            WriteToInstance()
            API_REPLICATOR.ModifyInstance(instance, true)

            if entry.data.DropEveryGather then
                DropGatherable(player, entry)
            else
                if value >= math.min(entry.numberOfStates, entry.gatheredStateIndex) then
                    DropGatherable(player, entry)
                end
            end

            Events.Broadcast(API.EVENT_GATHERABLE_GATHERED, player, entry)
            if value >= math.min(entry.numberOfStates, entry.gatheredStateIndex) then
                entries[index].destroyedTime = time()
                AddPendingRespawn(entry)

                Events.Broadcast(API.EVENT_GATHERABLE_DESTROYED, player, entry)
            end
        end
    end
end

-- Client function
function DestroyGatherableAtIndex(player, index)
    local entry = entries[index]
    if entry == nil then
        return
    end

    local coreObject = entry.staticCoreObject
    if coreObject == nil then
        return
    end

    local state =  GetEntryState(entry)
    if state < math.min(entry.numberOfStates, entry.gatheredStateIndex) then
        if entry.data.GatherEffects and entry.data.GatherEffects ~= "" then
            local offset = entry.data.GatherEffectsOffset or Vector3.ZERO
            local effects = World.SpawnAsset(entry.data.GatherEffects, { position = coreObject:GetWorldPosition() + offset, rotation = coreObject:GetWorldRotation() })

            -- Ensure these don't stack up
            if effects.lifeSpan == 0 then
                effects.lifeSpan = 5
            end
        end
    end

    if Environment.IsLocalGame() and not Environment.IsMultiplayerPreview() then
        -- In single player preview mode we're accessing the same static data so we dont want
        -- to modify it twice
    else
        -- Published game or multiplayer preview, we're fine to modify this
        local value = GetEntryState(entry)
        value = math.min(value + 1, entry.numberOfStates, entry.gatheredStateIndex)

        SetEntryState(entry, value)

        Events.Broadcast(API.EVENT_GATHERABLE_GATHERED, player, entry)
        if value >= entry.numberOfStates then
            entries[index].destroyedTime = time()
            AddPendingRespawn(entry)

            Events.Broadcast(API.EVENT_GATHERABLE_DESTROYED, player, entry)
        end
    end

    WriteToInstance()
    API_REPLICATOR.ModifyInstance(instance, true)

    if Environment.IsClient() then
        --- This function is in the 'client' environment so we need to do the require here otherwise
        --- we'll get the server version of the the API
        local RELIABLE_EVENTS = require(script:GetCustomProperty("APIReliableEvents"))
        RELIABLE_EVENTS.BroadcastToServer("DestroyGatherable", instance.replicatorId, instance.id, index)
    end
end

function DropGatherable(player, entry)
-- Code for lootfactory goes here
    if entry.data.Drops then
        local lootDropFactory = LOOT_DROP_FACTORY()
        
        if lootDropFactory and lootDropFactory.VERSION and lootDropFactory.VERSION >= 2.0 then
            local params = {
                object = entry.staticCoreObject,
                killer = player,
                lootId = entry.lootID, --The string the lootfactory checks the data table for
                position = entry.staticCoreObject:GetWorldPosition(),
                rotation = entry.staticCoreObject:GetWorldRotation(),
                resourceType = "XP",
                resourceAmount = 1,
            }
            lootDropFactory.Drop(params)
            
            return
        end
    end
    -- -- Give resources
    -- if REWARD_RESOURCE_TYPE and Object.IsValid(killer) and killer:IsA("Player") then
    --     killer:AddResource(REWARD_RESOURCE_TYPE, REWARD_RESOURCE_AMOUNT)
    -- end

    -- -- Drop loot
    -- if LOOT_ID ~= "" and lootDropFactory then
    --     local pos = script:GetWorldPosition()
    --     lootDropFactory.Drop(LOOT_ID, pos)
    -- end

    -- local position = entry.staticCoreObject:GetWorldPosition()
    -- LOOT_DROP_FACTORY().Drop("Common", position)

    -- if entry.data.Drops then
    --     if not INVENTORY.IsAnyInventoryRegistered(false) then
    --         warn("No Inventory could be found. Do you have an Inventory Template in the scene?")
    --         return
    --     end

    --     local drops = DROPS.CalculateDrops(entry.data.Drops)
    --     if entry.data.DropOnGather then
    --         ITEM_PICKUPS.CreateItemPickupsForDrops(
    --             player,
    --             drops,
    --             entry.data.DropItemPickupTemplate,
    --             entry.staticCoreObject:GetWorldPosition(),
    --             entry.data.DropMinDistance,
    --             entry.data.DropMaxDistance,
    --             entry.data.DropForAllPlayers,
    --             entry.data.SinglePlayerDrops,
    --             entry.data.DropTimeoutSeconds,
    --             entry.data.MaxPickupsPerDrop
    --         )
    --     else
    --         for itemId, amount in pairs(drops.Items) do
    --             INVENTORY.AddToInventory(player, nil, INVENTORY.ItemType.Item, itemId, amount, 0, false)
    --         end

    --         for currencyId, amount in pairs(drops.Currencies) do
    --             CURRENCY.AddCurrencyAmount(player, currencyId, amount)
    --         end
    --     end
    -- end
end

function FindGatherableIndex(coreObject)
    local o = coreObject
    while o ~= nil do
        if coreObjectToIndex[o] then
            break
        end
        o = o.parent
    end
    if o==nil then return nil end
    return coreObjectToIndex[o]
end

function GetGatherableAtIndex(index)
    local entry = entries[index]

    ---@class gatherable
    local result = {
        groupId = GROUP.id,
        index = index,
        staticCoreObject = entry.staticCoreObject,
        clientCoreObject = entry.clientCoreObject,
        serverCoreObject = entry.serverCoreObject,
        gatherableData = entry.data,
        isGatherable = GetEntryState(entry) < math.min(entry.numberOfStates, entry.gatheredStateIndex)
    }
    return result
end

function GetState()
    local result = {
        name = COMPONENT_ROOT.name,
        group = GROUP,
        instance = instance,
        replicatorId = instance.replicatorId
    }
    return result
end

function DestroyIndex(index)
    local entry = entries[index]
    if Object.IsValid(entry.staticCoreObject) then
        EQUIPMENT.UnregisterEquipmentTarget(entry.staticCoreObject)
        entry.staticCoreObject:Destroy()
        coreObjectToIndex[entry.staticCoreObject] = nil
        entry.staticCoreObject = nil

        if entry.clientCoreObject then
            entry.clientCoreObject:Destroy()
            entry.clientCoreObject = nil
        end

        if entry.serverCoreObject then
            entry.serverCoreObject:Destroy()
            entry.serverCoreObject = nil
        end
    end
end

function SpawnIndex(index, entry, state, isFirstSpawn)
    local params = {
        parent = entry.parent,
        position = entry.transform:GetPosition(),
        rotation = entry.transform:GetRotation(),
        scale = entry.transform:GetScale()
    }

    if entry.states.Static[state] then
        entry.staticCoreObject = World.SpawnAsset(entry.states.Static[state], params)
        coreObjectToIndex[entry.staticCoreObject] = index

        EQUIPMENT.RegisterEquipmentTarget(entry.staticCoreObject, {
            CanEquipmentInteract = CanEquipmentInteract,
            EquipmentInteract = EquipmentInteract
        })
    end

    if Environment.IsClient() or IsSinglePlayer then
        if not isFirstSpawn and entry.state == 1 and entry.data.RespawnEffects and entry.data.RespawnEffects ~= "" then
            local offset = entry.data.RespawnEffectsOffset or Vector3.ZERO
            local effects = World.SpawnAsset(entry.data.RespawnEffects, { position = entry.worldTransform:GetPosition() + offset })

            -- Ensure these don't stack up
            if effects.lifeSpan == 0 then
                effects.lifeSpan = 5
            end
        end

        if entry.states.Client[state] then
            entry.clientCoreObject = World.SpawnAsset(entry.states.Client[state], params)
        end
    end

    if Environment.IsServer() then
        if entry.states.Server[state] then
            entry.serverCoreObject = World.SpawnAsset(entry.states.Server[state], params)
        end
    end
end

function OnInstanceModified(modifiedInstance)
    if modifiedInstance == instance then
        LoadFromInstance()
        needsUpdating = true
    end
end

function OnActivationChanged(coreObject, newIsActive)
    isActive = newIsActive
    needsUpdating = true
end

function AddPendingRespawn(entry)
    -- Only adding for normal spawns since random spawn needs to check everything
    if RESPAWN and not RANDOM_SPAWN then
        pendingRespawns[entry] = true
    end
end

function RespawnGatherables()
    local didRespawn = false
    if RANDOM_SPAWN then
        local numberSpawned = GetSpawnedObjectCount()
        local totalToSpawn = CoreMath.Round(#entries * (RANDOM_SPAWN_PERCENT / 100))
        local availableEntries = {}

        for _, entry in pairs(entries) do
            if entry.gatheredStateIndex then
                local delay = entry.data.DestroyGatheredStateDelaySeconds or 0
                if GetEntryState(entry) == entry.gatheredStateIndex and entry.destroyedTime + delay < time() then
                    SetEntryState(entry, entry.numberOfStates)
                else
                    table.insert(availableEntries, entry)
                end
            else
                table.insert(availableEntries, entry)
            end
        end

        while #availableEntries > 0 and numberSpawned < totalToSpawn do
            local entry = table.remove(availableEntries, math.random(1, #availableEntries))
            local spawned = RespawnGatherable(entry)
            if spawned then
                pendingRespawns[entry] = nil
                numberSpawned = numberSpawned + 1
                didRespawn = true
            end
        end
    else
        for entry, _ in pairs(pendingRespawns) do
            local spawned = RespawnGatherable(entry)
            if spawned then
                pendingRespawns[entry] = nil
                didRespawn = true
            end
        end
    end

    if didRespawn then
        WriteToInstance()
        API_REPLICATOR.ModifyInstance(instance, true)
    end
end

function RespawnGatherable(entry)
    if entry.hasTemplatedStates and entry.data.RespawnSeconds then
        if IsEntryDestroyedOrGathered(entry) then
            if time() - entry.destroyedTime > entry.data.RespawnSeconds then
                local canSpawn = true
                for _, player in ipairs(Game.GetPlayers()) do
                    local playerDistance = (entry.worldTransform:GetPosition() - player:GetWorldPosition()).size
                    if canSpawn and RESPAWN_PLAYER_MIN_DISTANCE > 0 then
                        if playerDistance < RESPAWN_PLAYER_MIN_DISTANCE then
                            canSpawn = false
                            break
                        end
                    end

                    if canSpawn and RESPAWN_WHEN_NOT_VISIBLE and playerDistance < RESPAWN_PLAYER_MAX_DISTANCE then
                        local objToPlayer = (entry.worldTransform:GetPosition() - player:GetWorldPosition()):GetNormalized()
                        local lookForward = (player:GetLookWorldRotation() * Vector3.FORWARD):GetNormalized()

                        if objToPlayer .. lookForward > 0 and (objToPlayer ^ lookForward).size < math.sin(math.rad(90)) then
                            canSpawn = false
                            break
                        end
                    end
                end

                if canSpawn then
                    SetEntryState(entry, 1)
                    Events.Broadcast(API.EVENT_GATHERABLE_RESPAWNED, entry)
                    return true
                end
            end
        end
    end
    return false
end

function Tick()
    if Environment.IsServer() and RESPAWN then
        RespawnGatherables()
    end

    if needsUpdating then
        needsUpdating = false
        RefreshCoreObjects()
    end
end

function HandleReset(gatherableGroupId)
    if gatherableGroupId == COMPONENT_ROOT.id or IsChildGroupOfParent(gatherableGroupId) then
        for _, entry in ipairs(entries) do
            SetEntryState(entry, 1)
        end

        WriteToInstance()
        API_REPLICATOR.ModifyInstance(instance, true)
    end
end

function IsChildGroupOfParent(gatherableGroupId)
    local parent = COMPONENT_ROOT.parent
    while parent ~= nil do
        if parent.id == gatherableGroupId then
            return true
        end
        parent = parent.parent
    end
    return false
end

local functionTable = {
    FindGatherableIndex = FindGatherableIndex,
    GetGatherableAtIndex = GetGatherableAtIndex,
    DestroyGatherableAtIndex = DestroyGatherableAtIndex,
    GetState = GetState
}

API.RegisterGatherableGroup(GROUP.id, functionTable)

local modifiedListener = Events.Connect("GatherableModified", OnInstanceModified)
local resetListener = Events.Connect(API.EVENT_RESET_GATHERABLE_GROUP, HandleReset)

API_ACTIVE.ConnectToActivationChange(script, OnActivationChanged)
isActive = API_ACTIVE.IsActive(script)

local onDestroyListener = nil
Events.Broadcast("ServerFunction", function()
    onDestroyListener = Events.ConnectForPlayer("DestroyGatherable", OnPlayerDestroyGatherable)
end)

script.destroyEvent:Connect(
    function()
        modifiedListener:Disconnect()
        resetListener:Disconnect()

        if onDestroyListener then
            onDestroyListener:Disconnect()
        end
    end
)

LoadFromInstance()
RefreshCoreObjects()

if Environment.IsServer() and RANDOM_SPAWN then
    RandomSpawnObjects()
end