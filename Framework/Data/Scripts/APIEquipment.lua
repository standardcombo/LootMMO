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
    This script handles Player equipment. It can be used on the server or client.
--]]

local DEFAULT_HAND_TOOL_ABILITY_TEMPLATE = script:GetCustomProperty("DefaultHandToolAbilityTemplate")
local DEFAULT_INTERACTION_MODULE = require(script:GetCustomProperty("DefaultAPIInteractionModule"))
local EMPTY_CORE_OBJECT_REFERENCE = script:GetCustomProperty("EmptyCoreObjectReference")

---@type APIReplicator
local REPLICATOR = require(script:GetCustomProperty("APIReplicator"))
---@type APIReliableEvents
local RELIABLE_EVENTS = require(script:GetCustomProperty("APIReliableEvents"))
---@type APIPlayerLots
local PLAYER_LOTS = require(script:GetCustomProperty("APIPlayerLots"))

-- The static version of the API
local STATIC_API = nil

-- Constants
local EQUIPMENT_TAG = "EQ_"
local EQUIPMENT_SYNC_KEY = EQUIPMENT_TAG .. "sync"
local ACTION_HAND_TOOL = "HandTool"

-- Private Variables
local targets = {}
local currentEquipmentTarget
local interactionError
local pendingActions = {}
local updateFlags = {}
local equipped = {}
local handTools = {}

---@class APIEquipment
local API = {}

---@class EquipmentSetting
API.Setting = {
    UseHandTool = 1,
    HandToolAbilityTemplate = 2,
    HandToolInteractionModule = 3,
    HandToolType = 4,
    HandToolSelectionOutline = 5,
    HandToolDistance = 6
}

---These short form keys save on storage. Access them like: table[API.Keys.Key]
API.Keys = {
    UpdateFlag = "f",
    Actions = "o",
    Action = "u",
    ActionParams = "p"
}

---Event constants. Access them like: Events.Broadcast(API.Events.EventName, ...)
API.Events = {
    EquipItem = EQUIPMENT_TAG .. "equipItem",
    UnequipItem = EQUIPMENT_TAG .. "unequipItem",
    UnequipAllItems = EQUIPMENT_TAG .. "unequipItems",
    Interact = EQUIPMENT_TAG .. "interacted",
    EquippedItemFromWorld = EQUIPMENT_TAG .. "equippedFromWorld",
    UnequippedItemIntoWorld = EQUIPMENT_TAG .. "unequippedIntoWorld",
    SpawnEquipment = EQUIPMENT_TAG .. "spawn"
}

---@class EquipmentSettings
local settings = {
    [API.Setting.UseHandTool] = true,
    [API.Setting.HandToolAbilityTemplate] = DEFAULT_HAND_TOOL_ABILITY_TEMPLATE,
    [API.Setting.HandToolInteractionModule] = DEFAULT_INTERACTION_MODULE,
    [API.Setting.HandToolType] = "hand",
    [API.Setting.HandToolSelectionOutline] = nil,
    [API.Setting.HandToolDistance] = 1000
}

---Registers an object for equipment interactions with Basic and Advanced Equipment. The function table must include the
---following data:
---{
---    CanEquipmentInteract = function(player, target, toolType, equipmentSettings),
---    EquipmentInteract = function(player, target, toolType, equipmentSettings)
---}
---@param target CoreObject
---@param functionTable table
function API.RegisterEquipmentTarget(target, functionTable)
    targets[target] = functionTable
end

---Stops equipment from being able to interact with the target.
---@param target CoreObject
function API.UnregisterEquipmentTarget(target)
    targets[target] = nil
end

---Updates the current settings with a new set.
---@param newSettings EquipmentSettings
function API.UpdateSettings(newSettings)
    settings = newSettings
end

---Returns a setting value.
---@param setting EquipmentSetting
---@return any
function API.GetSetting(setting)
    return settings[setting]
end

---Returns all registered equipment targets.
---@return table
function API.GetTargets()
    return targets
end

---Returns true if the target is registered for interactions.
---@param target CoreObject
---@return boolean
function API.IsEquipmentTarget(target)
    return GetTargetHandler(target) ~= nil
end

---Will traverse up the hierarchy from the supplied CoreObject and return the first registered target or nil.
---@param target CoreObject
---@return CoreObject|nil
function API.FindEquipmentTargetByAncestors(target)
    while Object.IsValid(target) do
        if API.IsEquipmentTarget(target) then
            return target
        end
        target = target.parent
    end
    return nil
end

---Returns a registered equipment target if one is currently a potential target in the provided Interaction System
---Module and the equipment target can be interacted with. Also returns a reason a target could not be found if relevant.
---@param player CoreObject
---@param interactionModule Script
---@param toolType string
---@param equipmentSettings table
---@return CoreObject|nil
---@return string|nil
function API.GetInteractionTarget(player, interactionModule, toolType, equipmentSettings)
    local interactionTargets = interactionModule.GetPotentialTargets()
    if #interactionTargets > 0 then
        for _, interactionTarget in ipairs(interactionTargets) do
            if Object.IsValid(interactionTarget.CoreObject) and IsTargetInRange(player, interactionTarget.CoreObject, toolType, equipmentSettings) then
                local target, targetStatic = FindTarget(interactionTarget.CoreObject)
                if target then
                    if HasPermission(player, target) then
                        local success, message = API.CanEquipmentInteract(player, target, toolType, equipmentSettings)
                        if success then
                            Events.Broadcast("CanEquipmentInteract", message, target, toolType, equipmentSettings)
                            return target, targetStatic, nil
                        end
                        Events.Broadcast("CanEquipmentInteract", "NoInteraction", target, toolType, equipmentSettings)
                        return target, targetStatic, message
                    else
                        local playerLotId = PLAYER_LOTS.FindLotByAncestors(target)
                        if playerLotId then
                            local owner = PLAYER_LOTS.GetOwner(playerLotId)
                            if owner then
                                return nil, nil, string.format("Only %s can do that", owner.name)
                            end
                        end
                        return nil, nil, "Only the owner can do that"
                    end
                end
            end
        end
    end
    return nil, nil, nil
end

---Returns true if the registered target can interact with the equipment. Also returns a reason the target cannot be
---interacted with if relevant.
---@param player Player
---@param target CoreObject
---@param toolType string
---@param equipmentSettings table
---@return boolean
---@return string|nil
function API.CanEquipmentInteract(player, target, toolType, equipmentSettings)
    if target and API.IsEquipmentTarget(target) then
        return GetTargetHandler(target).CanEquipmentInteract(player, target, toolType, equipmentSettings)
    end
    return false, nil
end

---Interacts with a registered target with a specific equipment. Returns success and error information.
---@param player Player
---@param target CoreObject
---@param toolType string
---@param equipmentSettings table
---@return boolean
---@return string
function API.EquipmentInteract(player, target, toolType, equipmentSettings)
    interactionError = "Invalid Target"
    if API.IsEquipmentTarget(target) then
        local success = false
        success, interactionError = GetTargetHandler(target).EquipmentInteract(player, target, toolType, equipmentSettings)

        if interactionError then
            Events.Broadcast("Error", interactionError)
        end

        Events.Broadcast(API.Events.Interact, success, interactionError, player, target, toolType, equipmentSettings)

        return success, interactionError
    end

    if interactionError then
        Events.Broadcast("Error", interactionError)
    end

    Events.Broadcast(API.Events.Interact, false, interactionError, player, target, toolType, equipmentSettings)

    return false, interactionError
end

---Spawns an Equipment in the world.
---@param equipmentTemplate string
---@param parent CoreObject|nil
---@param position Vector3|nil
---@param rotation Rotation|nil
function API.SpawnEquipment(equipmentTemplate, parent, position, rotation)
    if Environment.IsServer() then
        World.SpawnAsset(equipmentTemplate, { parent = parent, position = position or Vector3.ZERO, rotation = rotation or Rotation.ZERO })
    else
        -- Relay to the server
        RELIABLE_EVENTS.BroadcastToServer(API.Events.SpawnEquipment, equipmentTemplate, parent, position, rotation)
    end
end

---Equips an item to a Player, or toggles an already equipped item off. On the server this returns a reference to the
---Equipment if it was equipped.
---@param player Player
---@param equipmentId string
---@param equipmentTemplate string
function API.Equip(player, equipmentId, equipmentTemplate)
    if Environment.IsServer() then
        local equippedSlots = {}

        -- Check if this is already equipped
        for _, equipmentData in ipairs(equipped[player]) do
            if not equippedSlots[equipmentData.Equipment.socket] then
                equippedSlots[equipmentData.Equipment.socket] = {}
            end

            table.insert(equippedSlots[equipmentData.Equipment.socket], equipmentData)
        end

        -- Equip the item unless it was already equipped, this makes it toggle
        if not API.IsEquipped(player, equipmentId) then
            local equipment = World.SpawnAsset(equipmentTemplate)
            if equipment:IsA("Equipment") then
                if equippedSlots[equipment.socket] then
                    for _, currentEquipmentData in ipairs(equippedSlots[equipment.socket]) do
                        API.Unequip(player, currentEquipmentData.Id)
                    end
                end

                equipment:Equip(player)

                table.insert(equipped[player], {
                    Id = equipmentId,
                    Equipment = equipment,
                    Template = equipmentTemplate
                })

                SyncWithClient(player, API.Events.EquipItem, equipmentId, equipmentTemplate)

                return equipment
            end
        end
    else
        -- Relay to the server
        RELIABLE_EVENTS.BroadcastToServer(API.Events.EquipItem, equipmentId, equipmentTemplate)
    end

    return nil
end

---Unequips an item from a Player.
---@param player Player
---@param equipmentId string
function API.Unequip(player, equipmentId)
    if Environment.IsServer() then
        for index, equipmentData in ipairs(equipped[player]) do
            if equipmentData.Id == equipmentId then
                if Environment.IsServer() then
                    if Object.IsValid(equipmentData.Equipment) then
                        equipmentData.Equipment:Unequip()
                        equipmentData.Equipment:Destroy()
                    end
                end

                table.remove(equipped[player], index)

                SyncWithClient(player, API.Events.UnequipItem, equipmentId)
                break
            end
        end
    else
        -- Relay to the server
        RELIABLE_EVENTS.BroadcastToServer(API.Events.UnequipItem, equipmentId)
    end
end

---Unequips all items from a Player.
---@param player Player
function API.UnequipAll(player)
    if Environment.IsServer() then
        for _, equipmentData in ipairs(equipped[player]) do
            if Object.IsValid(equipmentData.Equipment) then
                equipmentData.Equipment:Unequip()
                equipmentData.Equipment:Destroy()
            end
        end

        equipped[player] = {}

        SyncWithClient(player, API.Events.UnequipAllItems)
    else
        -- Relay to the server
        RELIABLE_EVENTS.BroadcastToServer(API.Events.UnequipAllItems)
    end
end

---Returns all equipped Equipment for a Player.
---@param player Player
---@return table
function API.GetAllEquipment(player)
    return equipped[player]
end

---Returns Equipment for the template if it is currently equipped.
---@param player Player
---@param equipmentId string
function API.GetEquipment(player, equipmentId)
    for _, equipmentData in ipairs(equipped[player]) do
        if equipmentData.Id == equipmentId then
            return equipmentData.Equipment
        end
    end
    return nil
end

---Returns true if the template is currently equipped.
---@param player Player
---@param equipmentId string
function API.IsEquipped(player, equipmentId)
    for _, equipmentData in ipairs(equipped[player]) do
        if equipmentData.Id == equipmentId then
            return true
        end
    end
    return false
end

---Returns true if the supplied tool type exists in the list of valid types.
---@param validToolTypesString string
---@param toolType string
---@param equipmentSettings table
---@return boolean
function API.IsValidToolType(validToolTypesString, toolType, equipmentSettings)
    if not validToolTypesString or validToolTypesString == "" then
        return true
    end

    local validTools = { CoreString.Split(validToolTypesString, ",", { removeEmptyResults  = true }) }
    if #validTools > 0 then
        for _, validToolType in ipairs(validTools) do
            local formattedValidToolType = string.lower(CoreString.Trim(validToolType))
            local itemId = ""
            if equipmentSettings and equipmentSettings.ItemId then
                itemId = string.lower(equipmentSettings.ItemId) or ""
            end

            if formattedValidToolType == string.lower(toolType) or formattedValidToolType == itemId then
                return true
            end
        end
    end
    return false
end

---Runs each frame.
---@param deltaTime number
function API.Update(deltaTime)
    if Environment.IsClient() then
        if API.GetSetting(API.Setting.UseHandTool) then
            local targetStatic
            currentEquipmentTarget, targetStatic, interactionError = API.GetInteractionTarget(Game.GetLocalPlayer(), API.GetSetting(API.Setting.HandToolInteractionModule), API.GetSetting(API.Setting.HandToolType), {})

            if not currentEquipmentTarget or #currentEquipmentTarget:FindDescendantsByType("StaticMesh") > 0 then
                SetSelectionOutline(currentEquipmentTarget)
            else
                SetSelectionOutline(targetStatic)
            end
        end
    end
end

---Returns an equipmentSettings table.
---@param equipment CoreObject
---@param equipmentSettings table
---@return table
function API.GetEquipmentSettings(equipment, equipmentSettings)
    equipmentSettings = equipmentSettings or {}
    equipmentSettings.InventoryId = equipment:GetCustomProperty("InventoryId")
    equipmentSettings.ItemType = equipment:GetCustomProperty("ItemType")
    equipmentSettings.ItemId = equipment:GetCustomProperty("ItemId")
    equipmentSettings.SlotIndex = equipment:GetCustomProperty("SlotIndex")
    equipmentSettings.State = equipment:GetCustomProperty("State")
    return equipmentSettings
end

---Returns the default tool for a Player if there is one.
---@param player Player
---@return Ability
function API.GetDefaultTool(player)
    return handTools[player]
end

---Adds an event to the action queue to replicate on the client.
---@param player Player
---@param action string
function SyncWithClient(player, action, ...)
    if not Environment.IsServer() then return false end

    if not pendingActions[player] then
        pendingActions[player] = {}
    end

    table.insert(pendingActions[player], {
        [API.Keys.Action] = action,
        [API.Keys.ActionParams] = { ... }
    })
end

---Every second this will send any pending Equipment actions to the relevant clients.
function SyncWithClients()
    while true do
        for player, actions in pairs(pendingActions) do
            if Object.IsValid(player) then
                if not updateFlags[player] then
                    updateFlags[player] = 0
                end

                -- Toggle the update flag to ensure data is sent
                updateFlags[player] = 1 - updateFlags[player]

                local actionData = {
                    [API.Keys.UpdateFlag] = updateFlags[player],
                    [API.Keys.Actions] = actions
                }

                local result = player:SetPrivateNetworkedData(EQUIPMENT_SYNC_KEY, actionData)
                if result ~= PrivateNetworkedDataResultCode.SUCCESS then
                    warn(string.format("Could not send Equipment data to client for Player: %s (%s) - Result: %s", player.name, player.id, result))
                    return false
                end
            end
        end

        pendingActions = {}

        Task.Wait(0.25)
    end
end

---Handles incoming actions from the server.
---@param player Player
---@param key string
function HandlePrivateNetworkedDataChanged(player, key)
    if key == EQUIPMENT_SYNC_KEY then
        local actionData = player:GetPrivateNetworkedData(key)
        if actionData then
            local actions = actionData[API.Keys.Actions]
            for _, action in ipairs(actions) do
                if action[API.Keys.Action] == API.Events.EquipItem then
                    local equipmentId = action[API.Keys.ActionParams][1]
                    local equipmentTemplate = action[API.Keys.ActionParams][2]
                    for _, equipment in ipairs(player:GetEquipment()) do
                        if DoesTemplateIdMatch(equipment.sourceTemplateId, equipmentTemplate) then
                            table.insert(equipped[player], {
                                Id = equipmentId,
                                Equipment = equipment,
                                Template = equipmentTemplate
                            })
                            break
                        end
                    end
                elseif action[API.Keys.Action] == API.Events.UnequipItem then
                    local equipmentId = action[API.Keys.ActionParams][1]
                    for index, equipmentData in ipairs(equipped[player]) do
                        if equipmentData.Id == equipmentId then
                            table.remove(equipped[player], index)
                            break
                        end
                    end
                elseif action[API.Keys.Action] == API.Events.UnequipAllItems then
                    equipped[player] = {}
                end
            end
        end
    end
end

---Outlines an object. Used for highlighting the current interaction target.
---@param coreObject CoreObject
function SetSelectionOutline(coreObject)
    local slectionOutline = API.GetSetting(API.Setting.HandToolSelectionOutline)
    if slectionOutline then
        slectionOutline:SetSmartProperty("Enabled", false)
        if Object.IsValid(coreObject) then
            slectionOutline:SetSmartProperty("Object To Outline", coreObject:GetReference())
            slectionOutline.visibility = Visibility.INHERIT
        else
            slectionOutline:SetSmartProperty("Object To Outline", EMPTY_CORE_OBJECT_REFERENCE)
            slectionOutline.visibility = Visibility.FORCE_OFF
        end
        slectionOutline:SetSmartProperty("Enabled", true)
    end
end

---Returns a registered equipment target based on the provided CoreObject and its ancestors.
---@param coreObject CoreObject
---@return CoreObject|nil
function FindTarget(coreObject)
    if not Object.IsValid(coreObject) then return end

    local target = API.FindEquipmentTargetByAncestors(coreObject)
    local targetStatic = nil
    if not target then
        local templateRoot = coreObject
        repeat
            -- Check if this is a replicated target
            templateRoot = templateRoot:FindTemplateRoot()
            local instance = REPLICATOR.GetInstance(templateRoot)
            local replicatedObject = REPLICATOR.GetClientCoreObject(instance)

            if replicatedObject then
                target = API.FindEquipmentTargetByAncestors(replicatedObject)
                targetStatic = templateRoot
            end

            if not target and Environment.IsLocalGame() and not Environment.IsMultiplayerPreview() then
                target = STATIC_API.FindEquipmentTargetByAncestors(coreObject)
                if not target then
                    if replicatedObject then
                        target = STATIC_API.FindEquipmentTargetByAncestors(replicatedObject)
                    end
                end
            end

            if templateRoot then
                templateRoot = templateRoot.parent
            end
        until templateRoot == nil or Object.IsValid(target)
    end
    return target, targetStatic
end

---Return true if the target is in range of the provided tool.
---@param target CoreObject
---@param toolType string
---@param equipmentSettings table
function IsTargetInRange(player, target, toolType, equipmentSettings)
    if toolType == API.GetSetting(API.Setting.HandToolType) then
        return (player:GetWorldPosition() - target:GetWorldPosition()).size <= API.GetSetting(API.Setting.HandToolDistance)
    else
        -- Equipment handles distance
        return true
    end
end

---Returns true if the Player is allowed to interact with the object.
---@param player Player
---@param coreObject CoreObject
---@return boolean
function HasPermission(player, coreObject)
    if coreObject == nil then return false end
    local playerLot = PLAYER_LOTS.FindLotByAncestors(coreObject)
    if playerLot then
        if PLAYER_LOTS.IsOwnerOnly(playerLot) and PLAYER_LOTS.GetOwner(playerLot) ~= player then
            return false
        end
    end
    return true
end

---Returns the interaction target handler while taking Static Context into account.
---@param coreObject CoreObject
---@return table
function GetTargetHandler(coreObject)
    if not Object.IsValid(coreObject) then return end

    local handler = targets[coreObject]
    if not handler and Environment.IsLocalGame() and not Environment.IsMultiplayerPreview() then
        handler = STATIC_API.GetTargets()[coreObject]
    end
    return handler
end

---Creates an entry in the equipped equipment table
---@param player Player
function HandlePlayerJoined(player)
    equipped[player] = {}

    if Environment.IsClient() then
        if player ~= Game.GetLocalPlayer() then return end

        -- Listen for data coming from the server
        player.privateNetworkedDataChangedEvent:Connect(HandlePrivateNetworkedDataChanged)

        -- Check existing keys
        HandlePrivateNetworkedDataChanged(player, EQUIPMENT_SYNC_KEY)
    else
        pendingActions[player] = {}

        local handToolAbilityTemplate = API.GetSetting(API.Setting.HandToolAbilityTemplate)
        if handToolAbilityTemplate then
            handTools[player] = World.SpawnAsset(handToolAbilityTemplate)
            handTools[player].owner = player
        end
    end
end

---Destroys any equipment the Player is wearing when they leave the game.
---@param player Player
function HandlePlayerLeft(player)
    API.UnequipAll(player)
    handTools[player] = nil
end

---Handles a relay from the client.
---@param equipmentTemplate string
---@param parent CoreObject|nil
---@param position Vector3|nil
---@param rotation Rotation|nil
function HandleSpawnEquipment(equipmentTemplate, parent, position, rotation)
    API.SpawnEquipment(equipmentTemplate, parent, position, rotation)
end

---Handles a relay from the client.
---@param player Player
---@param equipmentId string
function HandleEquip(player, equipmentId)
    API.Equip(player, equipmentId)
end

---Handles a relay from the client.
---@param player Player
---@param equipmentId string
function HandleUnequip(player, equipmentId)
    API.Unequip(player, equipmentId)
end

---Handles a relay from the client.
---@param player Player
function HandleUnequipAll(player)
    API.UnequipAll(player)
end

---Handles Equipment being equipped from the world instead of Inventory.
---@param player Player
---@param equipment Equipment
function HandleEquippedFromWorld(player, equipmentId, equipment)
    -- Remove forcibly unequipped equipment
    for index, equipmentData in ipairs(equipped[player]) do
        if not Object.IsValid(equipmentData.Equipment) then
            table.remove(equipped[player], index)
            break
        end
    end

    table.insert(equipped[player], {
        Id = equipmentId,
        Equipment = equipment,
        Template = equipment.sourceTemplateId
    })

    SyncWithClient(player, API.Events.EquipItem, equipmentId, equipment.sourceTemplateId)
end

---Handles Equipment being unequipped into the world instead of Inventory.
---@param player Player
---@param equipment Equipment
function HandleUnequippedIntoWorld(player, equipment)
    local equipmentId
    for index, equipmentData in ipairs(equipped[player]) do
        if DoesTemplateIdMatch(equipmentData.Template, equipment.sourceTemplateId) then
            equipmentId = equipmentData.Id
            table.remove(equipped[player], index)
            break
        end
    end

    local offset = player:GetWorldTransform():GetForwardVector() * 200
    local rayStart = player:GetWorldPosition() + offset
    local rayEnd = offset - Vector3.UP * 5000
    local hitResult = World.Raycast(rayStart, rayEnd, { ignorePlayers = true })

    local position = rayStart
    if hitResult then
        position = hitResult:GetImpactPosition()
    end

    API.SpawnEquipment(equipment.sourceTemplateId, nil, position, player:GetWorldRotation())

    SyncWithClient(player, API.Events.UnequipItem, equipmentId)
end

---Client Only. Handles bindings for the hand tool.
---@param player Player
---@param action string
function HandleInputActionReleased(player, action)
    if player == Game.GetLocalPlayer() and API.GetSetting(API.Setting.UseHandTool) then
        if action == ACTION_HAND_TOOL then
            -- Only continue if the player is not using another Tool or can interact with the Hand Tool
            if equipped[player] and #equipped[player] > 0 and not API.CanEquipmentInteract(player, currentEquipmentTarget, API.GetSetting(API.Setting.HandToolType), {}) then
                return
            end

            if currentEquipmentTarget then
                local success, interactionError = API.EquipmentInteract(player, currentEquipmentTarget, API.GetSetting(API.Setting.HandToolType), {})
                if success then
                    -- Find the hand tool
                    for _, ability in ipairs(player:GetAbilities()) do
                        if DoesTemplateIdMatch(ability.sourceTemplateId, API.GetSetting(API.Setting.HandToolAbilityTemplate)) then
                            ability:Activate()
                            break
                        end
                    end
                elseif interactionError then
                    Events.Broadcast("Error", interactionError)
                end
            elseif interactionError then
                Events.Broadcast("Error", interactionError)
            end
        end
    end
end

---Compares two Template ids using only the info before the colon.
---@param id1 string
---@param id2 string
---@return boolean
function DoesTemplateIdMatch(id1, id2)
    -- Strip everything after the first part of the ids
    id1 = CoreString.Split(id1, ":")
    id2 = CoreString.Split(id2, ":")

    return id1 == id2
end

---Initialize
if Environment.IsServer() then
    Events.ConnectForPlayer(API.Events.EquipItem, HandleEquip)
    Events.ConnectForPlayer(API.Events.UnequipItem, HandleUnequip)
    Events.ConnectForPlayer(API.Events.UnequipAllItems, HandleUnequipAll)
    Events.Connect(API.Events.SpawnEquipment, HandleSpawnEquipment)
    Events.Connect(API.Events.EquippedItemFromWorld, HandleEquippedFromWorld)
    Events.Connect(API.Events.UnequippedItemIntoWorld, HandleUnequippedIntoWorld)
    Game.playerLeftEvent:Connect(HandlePlayerLeft)

    Task.Spawn(SyncWithClients)
elseif Environment.IsClient() then
    Input.actionReleasedEvent:Connect(HandleInputActionReleased)
end

Game.playerJoinedEvent:Connect(HandlePlayerJoined)

function GetStaticAPI()
    _G.StaticContext.Call(function()
        STATIC_API = require(script.id)
    end)
end

if Environment.IsLocalGame() and not Environment.IsMultiplayerPreview() then
    Task.Spawn(GetStaticAPI)
end

return API