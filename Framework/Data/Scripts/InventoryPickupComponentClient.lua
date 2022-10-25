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
    This script can be attached to an object to turn it into a pickup. When picked up by a Player the associated item
    will be added to their Inventory.
--]]

if not script.isClientOnly then
    warn("Item Pickups must be spawned or placed into a ClientContext")
    return
end

-- Internal Variables
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
---@type APIInventory
local INVENTORY = require(script:GetCustomProperty("APIInventory"))
---@type APICurrency
local CURRENCY = require(script:GetCustomProperty("APICurrency"))
---@type APIDatabase
local DATABASE = require(script:GetCustomProperty("APIDatabase"))
---@type APIItemPickups
local ITEM_PICKUPS = require(script:GetCustomProperty("APIItemPickups"))

local INTERACTION_MODULE = COMPONENT_ROOT:GetCustomProperty("APIInteractionModule")
local SUB_TARGET = COMPONENT_ROOT:GetCustomProperty("SubTarget"):WaitForObject()
local PRESS_BINDING = COMPONENT_ROOT:GetCustomProperty("PressBinding")
local ITEM_ID = COMPONENT_ROOT:GetCustomProperty("ItemId")
local CURRENCY_ID = COMPONENT_ROOT:GetCustomProperty("CurrencyId")
local AMOUNT = COMPONENT_ROOT:GetCustomProperty("Amount")
local SPAWN_VISUAL = COMPONENT_ROOT:GetCustomProperty("SpawnVisual")
local PICKUP_ON_HOVER_BEGIN = COMPONENT_ROOT:GetCustomProperty("PickupOnHoverBegin")
local PICKUP_ON_HOVER_END = COMPONENT_ROOT:GetCustomProperty("PickupOnHoverEnd")
local PICKUP_ON_PRESS_BEGIN = COMPONENT_ROOT:GetCustomProperty("PickupOnPressBegin")
local PICKUP_ON_PRESS_END = COMPONENT_ROOT:GetCustomProperty("PickupOnPressEnd")
local FOLLOW_DELAY = COMPONENT_ROOT:GetCustomProperty("FollowDelay")
local FOLLOW_DURATION = COMPONENT_ROOT:GetCustomProperty("FollowDuration")
local COLLECT_SOUND_TEMPLATE = COMPONENT_ROOT:GetCustomProperty("CollectSoundTemplate")

-- Private Variables
local pickupPlayer
local pickupId
local finalPosition = COMPONENT_ROOT:GetWorldPosition()
local pickupType
local contentType
local spawnAnimationTask

if INTERACTION_MODULE == nil or INTERACTION_MODULE == "" then
    warn(string.format("An INTERACTION Module must be set on Component: %s (%s)", script.name, script.id))
    return
end

if AMOUNT < 0 then
    AMOUNT = 1
end

if FOLLOW_DELAY < 0 then
    FOLLOW_DELAY = 0
end

local INTERACTION = require(INTERACTION_MODULE)

function OnHoverBegin(position, normal)
    if PICKUP_ON_HOVER_BEGIN then
        Pickup()
    end
end

function OnHoverEnd(position, normal)
    if PICKUP_ON_HOVER_END then
        Pickup()
    end
end

function OnPressBegin(binding, position, normal)
    if PICKUP_ON_PRESS_BEGIN and (PRESS_BINDING == "" or PRESS_BINDING == binding) then
        Pickup()
    end
end

function OnPressEnd(binding, position, normal, wasDragging)
    if PICKUP_ON_PRESS_END and not wasDragging and (PRESS_BINDING == "" or PRESS_BINDING == binding) then
        Pickup()
    end
end

function OnSetData(component, id, pType, type, contentId, amount, finalPos)
    if component == script then
        pickupType = pType
        pickupId = id
        contentType = type

        if pickupType == ITEM_PICKUPS.PickupType.Item then
            ITEM_ID = contentId
        elseif pickupType == ITEM_PICKUPS.PickupType.Currency then
            CURRENCY_ID = contentId
        end

        AMOUNT = amount
        finalPosition = finalPos

        if SPAWN_VISUAL then
            SpawnItem()
        end
    end
end

function SpawnItem()
    local data
    if pickupType == ITEM_PICKUPS.PickupType.Item then
        local baseItemId = INVENTORY.GetContainerItemId(ITEM_ID)
        if DATABASE.Items then
            data = DATABASE.Items[baseItemId]
        end

        if not data then
            warn(string.format("Could not find data for Item: %s in script: %s (id: %s)", baseItemId, script.name, script.id))
            return
        end
    elseif pickupType == ITEM_PICKUPS.PickupType.Currency then
        if DATABASE.Currencies then
            data = DATABASE.Currencies[CURRENCY_ID]
        end

        if not data then
            warn(string.format("Could not find data for Currency: %s in script: %s (id: %s)", CURRENCY_ID, script.name, script.id))
            return
        end
    end

    if data.DropTemplate then
        World.SpawnAsset(data.DropTemplate, { parent = COMPONENT_ROOT })
    else
        warn(string.format("No DropTemplate data for pickup in script: %s (id: %s)", script.name, script.id))
    end

    COMPONENT_ROOT:MoveTo(finalPosition, 0, false)
end

function Pickup()
    -- Don't allow multiple pick ups
    if pickupPlayer then return end

    pickupPlayer = Game.GetLocalPlayer()

    -- Don't pickup items that can no longer be picked up
    if pickupId then
        local success, errorMessage = ITEM_PICKUPS.CanCollectItemPickup(pickupPlayer, pickupId)
        if not success then
            pickupPlayer = nil
            if errorMessage then
                Events.Broadcast("Error", errorMessage)
            end
            return
        end
    end

    INTERACTION.UnregisterTarget(COMPONENT_ROOT)

    Task.Spawn(function()
        if FOLLOW_DELAY > 0 then
            Task.Wait(FOLLOW_DELAY)
        end

        if spawnAnimationTask then
            spawnAnimationTask:Cancel()
            spawnAnimationTask = nil
        end

        if FOLLOW_DURATION > 0 then
            if Object.IsValid(COMPONENT_ROOT) then
                local remaining = FOLLOW_DURATION
                local initialPosition = COMPONENT_ROOT:GetWorldPosition()

                while remaining > 0 do
                    if Object.IsValid(COMPONENT_ROOT) and Object.IsValid(pickupPlayer) then
                        local ratio = remaining / FOLLOW_DURATION
                        local position = Vector3.Lerp(initialPosition, pickupPlayer:GetWorldPosition(), 1.0 - ratio)

                        COMPONENT_ROOT:MoveTo(position, 0)
                    end

                    remaining = remaining - 1 / 30

                    Task.Wait()
                end

                AddItem()
            end
        else
            AddItem()
        end
    end)
end

function AddItem()
    -- Destroy it so the handler will add the item
    if Object.IsValid(COMPONENT_ROOT) then
        COMPONENT_ROOT:Destroy()
    end
end

-- This will award the item if it ends up being destroyed before it reaches the Player
function HandleDestroyed()
    INTERACTION.UnregisterTarget(COMPONENT_ROOT)

    if spawnAnimationTask then
        spawnAnimationTask:Cancel()
        spawnAnimationTask = nil
    end

    -- Add the item if we have a valid player
    if Object.IsValid(pickupPlayer) then
        -- If this has a pickup id assigned use the Item Pickup API
        if pickupId then
            if ITEM_PICKUPS.CanCollectItemPickup(pickupPlayer, pickupId) then
                ITEM_PICKUPS.CollectItemPickups(pickupPlayer, pickupId)
            end
        else
            if pickupType == ITEM_PICKUPS.PickupType.Item then
                INVENTORY.AddToInventory(pickupPlayer, nil, INVENTORY.ItemType.Item, ITEM_ID, AMOUNT, 0, false)

                -- Broadcast the pickup here since this is an unregistered pickup
                Events.Broadcast(ITEM_PICKUPS.Events.ItemPickupCollected, pickupPlayer, pickupType, contentType, ITEM_ID, AMOUNT)
            elseif pickupType == ITEM_PICKUPS.PickupType.Currency then
                CURRENCY.AddCurrencyAmount(pickupPlayer, CURRENCY_ID, AMOUNT)

                -- Broadcast the pickup here since this is an unregistered pickup
                Events.Broadcast(ITEM_PICKUPS.Events.ItemPickupCollected, pickupPlayer, pickupType, contentType, CURRENCY_ID, AMOUNT)
            end
        end

        if COLLECT_SOUND_TEMPLATE then
            World.SpawnAsset(COLLECT_SOUND_TEMPLATE, { position = COMPONENT_ROOT:GetWorldPosition() })
        end
    end

    pickupPlayer = nil
end

if ITEM_ID and ITEM_ID ~= "" then
    pickupType = ITEM_PICKUPS.PickupType.Item
    contentType = INVENTORY.ItemType.Item

    if SPAWN_VISUAL then
        SpawnItem()
    end
elseif CURRENCY_ID and CURRENCY_ID ~= "" then
    pickupType = ITEM_PICKUPS.PickupType.Currency

    if SPAWN_VISUAL then
        SpawnItem()
    end
end

local functionTable = {
    HoverBegin = OnHoverBegin,
    HoverEnd = OnHoverEnd,
    PressBegin = OnPressBegin,
    PressEnd = OnPressEnd,
    SetData = OnSetData
}

-- Register with the INTERACTION module. This can fail if any of the parameters are invalid
if not INTERACTION.RegisterTarget(COMPONENT_ROOT, SUB_TARGET, functionTable) then
    warn(string.format("Could not initialize %s (%s)", script.name, script.id))
    return
end

COMPONENT_ROOT.destroyEvent:Connect(HandleDestroyed)