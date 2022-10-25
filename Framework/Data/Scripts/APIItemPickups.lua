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
    This script will spawn and manage Item Pickups. It supports spawning them for the local Player or all Players and
    also supports limiting the pickup to be picked up once. These options, when combined, offer a lot of freedom in how
    items are dropped on the ground. It will also detect new players and spawn any active item pickups for them.
--]]

---@type APIInventory
local INVENTORY = require(script:GetCustomProperty("APIInventory"))
---@type APICurrency
local CURRENCY = require(script:GetCustomProperty("APICurrency"))
---@type APIReliableEvents
local RELIABLE_EVENTS = require(script:GetCustomProperty("APIReliableEvents"))

-- Constants
local PICKUPS_TAG = "PU_"

-- Private Variables
local pickupId = 0
---@type table<integer, ActivePickupData>
local activePickups = {}
local queuedPickupsForCollection = {}

---@class APIItemPickups
local API = {}

API.PickupType = {
    Item = 1,
    Currency = 2
}

API.Events = {
    DropItem = PICKUPS_TAG .. "d",
    DropItems = PICKUPS_TAG .. "m",
    PickupItems = PICKUPS_TAG .. "p",
    RemoveItemPickups = PICKUPS_TAG .. "r",
    ItemPickupCollected = PICKUPS_TAG .. "c"
}

---Creates an Item Pickup for one or all Players.
---@param player Player|nil The Player prompting the creation of this pickup if available
---@param pickupTemplate string The template to spawn for this Pickup, it must include an InventoryPickupComponentClient
---@param initialPosition Vector3 The position the pickup will spawn at
---@param finalPosition Vector3 The position the pickup will end up at
---@param pickupType integer The APIItemPickups.PickupType of the pickup
---@param contentType integer The type of the contents (APIInventory.ItemType for Items)
---@param contentId string The content id
---@param amount integer The amount contained in the pickup
---@param dropForAllPlayers boolean If true, this pickup will drop for all Players
---@param singlePickup boolean If true, this pickup can only be collected by a single Player even if dropped for all Players
---@param pickupTimeoutSeconds number Pickups will be destroyed when this duration passes, 0 means they will not auto destroy
function API.CreateItemPickup(player, pickupTemplate, initialPosition, finalPosition, pickupType, contentType, contentId, amount, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)
    -- Check for template
    if not pickupTemplate or pickupTemplate == "" then
        warn("An Item Pickup Template must be provided")
        return
    end

    -- Simplify the pickup template id
    pickupTemplate = GetSimpleTemplateId(pickupTemplate)

    -- Depending on environment either relay or create the pickup
    if Environment.IsServer() then
        CreateItemPickup(player, pickupTemplate, initialPosition, finalPosition, pickupType, contentType, contentId, amount, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)
    else
        -- Relay to the server
        RELIABLE_EVENTS.BroadcastToServer(API.Events.DropItem, nil, pickupTemplate, initialPosition, finalPosition, pickupType, contentType, contentId, amount, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)
    end
end

---Creates one or more Item Pickups for one or all Players.
---@param player Player|nil The Player prompting the creation of these pickups if available
---@param pickupTemplate string The template to spawn for these pickups, it must include an InventoryPickupComponentClient
---@param initialPosition Vector3 The position the pickups will spawn at
---@param radius number The maxiumum distance the pickups can move to from the initial position
---@param pickupData PickupData[] A table of pickup data (Item Type, Item Id, Amount, Delay)
---@param dropForAllPlayers boolean If true, this pickup will drop for all Players
---@param singlePickup boolean If true, these pickups can only be collected by a single Player even if dropped for all Players
---@param pickupTimeoutSeconds number Pickups will be destroyed when this duration passes, 0 means they will not auto destroy
function API.CreateItemPickups(player, pickupTemplate, initialPosition, radius, pickupData, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)
    -- Check for template
    if not pickupTemplate or pickupTemplate == "" then
        warn("An Item Pickup Template must be provided")
        return
    end

    -- Simplify the pickup template id
    pickupTemplate = GetSimpleTemplateId(pickupTemplate)

    -- Depending on environment either relay or create the pickup
    if Environment.IsServer() then
        CreateItemPickups(player, pickupTemplate, initialPosition, radius, pickupData, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)
    else
        -- Relay to the server. Pickup data is generally too large to send via event, so we split into pickups at this point
        Task.Spawn(function()
            for _, pickup in ipairs(pickupData) do
                local angle = math.random() * math.pi * 2;
                local x = math.cos(angle) * radius;
                local y = math.sin(angle) * radius;
                local finalPosition = initialPosition + Vector3.New(x, y, 0)

                RELIABLE_EVENTS.BroadcastToServer(API.Events.DropItem, nil, pickupTemplate, initialPosition, finalPosition, pickup.PickupType, pickup.Type, pickup.Id, pickup.Amount, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)

                if pickup.Delay and pickup.Delay > 0 then
                    Task.Wait(pickup.Delay)
                end
            end
        end)
    end
end

---Creates one or more Item Pickups for a set of DropResults for one or all Players.
---@param player Player|nil The Player prompting the creation of these pickups if available
---@param drops DropResults The APIDrops.DropResults to turn into Item Pickups
---@param pickupTemplate string The template to spawn for these pickups, it must include an InventoryPickupComponentClient
---@param initialPosition Vector3 The position the pickup will spawn at
---@param dropMinDistance number The minimum distance the pickups will move
---@param dropMaxDistance number The maximum distance the pickups will move
---@param dropForAllPlayers boolean If true, the pickups will drop for all Players
---@param singlePickup boolean If true, these pickups can only be collected by a single Player even if dropped for all Players
---@param pickupTimeoutSeconds number Pickups will be destroyed when this duration passes, 0 means they will not auto destroy
---@param maxPickupsPerDrop integer A drop with an amount greater than 1 will be split into multiple pickups up to this maximum
function API.CreateItemPickupsForDrops(player, drops, pickupTemplate, initialPosition, dropMinDistance, dropMaxDistance, dropForAllPlayers, singlePickup, pickupTimeoutSeconds, maxPickupsPerDrop)
    -- Check for template
    if not pickupTemplate or pickupTemplate == "" then
        warn("An Item Pickup Template must be provided")
        return
    end

    if dropMinDistance < 0 then
        dropMinDistance = 0
    end

    if dropMaxDistance < dropMinDistance then
        dropMaxDistance = dropMinDistance
    end

    if pickupTimeoutSeconds < 0 then
        pickupTimeoutSeconds = 0
    end

    if maxPickupsPerDrop < 1 then
        maxPickupsPerDrop = 1
    end

    local distanceDifference = dropMaxDistance - dropMinDistance
    for itemId, amount in pairs(drops.Items) do
        if maxPickupsPerDrop > 1 then
            -- Split the drop into multiple pickups
            local pickups = {}
            local remaining = amount
            local pickupNum = 0
            while remaining > 0 do
                local chunk = math.ceil(amount / maxPickupsPerDrop)
                if chunk > remaining then
                    chunk = remaining
                end

                remaining = remaining - chunk

                table.insert(pickups, API.CreatePickupData(API.PickupType.Item, INVENTORY.ItemType.Item, itemId, chunk, 0.2 * pickupNum))

                pickupNum = pickupNum + 1
            end

            API.CreateItemPickups(player, pickupTemplate, initialPosition, math.random(dropMinDistance, dropMaxDistance), pickups, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)
        else
            -- Use a single pickup
            local rayStart = initialPosition + Vector3.New(dropMinDistance + math.random(-distanceDifference, distanceDifference), dropMinDistance + math.random(-distanceDifference, distanceDifference), 0)
            local rayEnd = rayStart + Vector3.New(0, 0, -1000)
            local hitResult = World.Raycast(rayStart, rayEnd, { ignorePlayers = true })
            local finalPosition = initialPosition

            if hitResult then
                finalPosition = hitResult:GetImpactPosition()
            end

            API.CreateItemPickup(player, pickupTemplate, initialPosition, finalPosition, API.PickupType.Item, INVENTORY.ItemType.Item, itemId, amount, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)
        end
    end

    for currencyId, amount in pairs(drops.Currencies) do
        if maxPickupsPerDrop > 1 then
            -- Split the drop into multiple pickups
            local pickups = {}
            local remaining = amount
            local pickupNum = 0
            while remaining > 0 do
                local chunk = math.ceil(amount / maxPickupsPerDrop)
                if chunk > remaining then
                    chunk = remaining
                end

                remaining = remaining - chunk

                table.insert(pickups, API.CreatePickupData(API.PickupType.Currency, nil, currencyId, chunk, 0.2 * pickupNum))

                pickupNum = pickupNum + 1
            end

            API.CreateItemPickups(player, pickupTemplate, initialPosition, math.random(dropMinDistance, dropMaxDistance), pickups, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)
        else
            -- Use a single pickup
            local rayStart = initialPosition + Vector3.New(dropMinDistance + math.random(-distanceDifference, distanceDifference), dropMinDistance + math.random(-distanceDifference, distanceDifference), 0)
            local rayEnd = rayStart + Vector3.New(0, 0, -1000)
            local hitResult = World.Raycast(rayStart, rayEnd, { ignorePlayers = true })
            local finalPosition = initialPosition

            if hitResult then
                finalPosition = hitResult:GetImpactPosition()
            end

            API.CreateItemPickup(player, pickupTemplate, initialPosition, finalPosition, API.PickupType.Currency, nil, currencyId, amount, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)
        end
    end
end

---Returns a table formatted to work with CreateItemPickups().
---@param pickupType integer
---@param contentType integer
---@param contentId string
---@param amount integer
---@param delay number
---@return PickupData
function API.CreatePickupData(pickupType, contentType, contentId, amount, delay)
    ---@class PickupData
    return {
        PickupType = pickupType,
        Type = contentType,
        Id = contentId,
        Amount = amount,
        Delay = delay
    }
end

---Returns true if the Item Pickup can be collected.
---@param player Player
---@param id integer
---@return boolean
function API.CanCollectItemPickup(player, id)
    local canPickup = activePickups[id] ~= nil and not activePickups[id].Players[player]
    local errorMessage
    if canPickup then
        canPickup, errorMessage = INVENTORY.CanAddToInventory(player, nil, activePickups[id].Type, activePickups[id].Id, activePickups[id].Amount, 0, false)
    end
    return canPickup, errorMessage
end

---Collects the Item Pickup.
---@param player Player
---@param id integer
---@param consolidatedIds integer[]
function API.CollectItemPickups(player, id, consolidatedIds)
    consolidatedIds = consolidatedIds or {}

    local pickupIds = { id }
    for _, additionalPickupId in ipairs(consolidatedIds) do
        table.insert(pickupIds, additionalPickupId)
    end

    local removedPickupIds = {}
    for _, itemPickupId in ipairs(pickupIds) do
        if API.CanCollectItemPickup(player, itemPickupId) then
            if Environment.IsServer() then
                if activePickups[itemPickupId].PickupType == API.PickupType.Item then
                    -- Give item to Player
                    INVENTORY.AddToInventory(player, nil, activePickups[itemPickupId].Type, activePickups[itemPickupId].Id, activePickups[itemPickupId].Amount, 0, false)
                elseif activePickups[itemPickupId].PickupType == API.PickupType.Currency then
                    -- Give Currency to Player
                    CURRENCY.AddCurrencyAmount(player, activePickups[itemPickupId].Id, activePickups[itemPickupId].Amount)
                end

                -- Track the Player
                activePickups[itemPickupId].Players[player] = true

                -- Remove this pickup if it can only be collected once
                if not activePickups[itemPickupId].DropForAllPlayers or activePickups[itemPickupId].SinglePickup then
                    activePickups[itemPickupId] = nil
                    table.insert(removedPickupIds, itemPickupId)
                end
            else
                AddQueuedPickup(player, itemPickupId)
            end
        end
    end

    if Environment.IsServer() and #removedPickupIds > 0 then
        RELIABLE_EVENTS.BroadcastToAllPlayers(API.Events.RemoveItemPickups, player, removedPickupIds)
    end
end

function AddQueuedPickup(player, id)
    -- Consolidate
    local consolidated = false
    for _, queuedPickupData in ipairs(queuedPickupsForCollection) do
        local pickupData = activePickups[queuedPickupData.Id]
        local newPickupData = activePickups[id]

        if pickupData.Type == newPickupData.Type and pickupData.Id == newPickupData.Id then
            pickupData.Amount = pickupData.Amount + newPickupData.Amount
            activePickups[id].Players[player] = true
            table.insert(queuedPickupData.ConsolidatedIds, id)
            consolidated = true
            break
        end
    end

    if not consolidated then
        table.insert(queuedPickupsForCollection, {
            Id = id,
            Player = player,
            ConsolidatedIds = {}
        })
    end
end

---Client Only. Collects any queued Item Pickups.
function CollectQueuedPickups()
    while true do
        if #queuedPickupsForCollection > 0 then
            local queuedPickupData = table.remove(queuedPickupsForCollection, 1)
            local id = queuedPickupData.Id
            local player = queuedPickupData.Player

            -- Relay to server
            RELIABLE_EVENTS.BroadcastToServer(API.Events.PickupItems, id, queuedPickupData.ConsolidatedIds)
            Events.Broadcast(API.Events.ItemPickupCollected, player, activePickups[id].PickupType, activePickups[id].Type, activePickups[id].Id, activePickups[id].Amount)

            -- Track the Player
            activePickups[id].Players[player] = true

            -- Remove this pickup if it can only be collected once
            if not activePickups[id].DropForAllPlayers or activePickups[id].SinglePickup then
                activePickups[id] = nil
            end
        end

        Task.Wait(0.5)
    end
end

---Server Only. Registers and sends pickup information to one or all clients.
---@param player Player|nil
---@param pickupTemplate string
---@param initialPosition Vector3
---@param finalPosition Vector3
---@param pickupType integer
---@param contentType integer
---@param contentId string
---@param amount integer
---@param dropForAllPlayers boolean
---@param singlePickup boolean
---@param pickupTimeoutSeconds number
function CreateItemPickup(player, pickupTemplate, initialPosition, finalPosition, pickupType, contentType, contentId, amount, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)
    if not Environment.IsServer() then
        warn("Item Pickups can only be created on the server")
        return
    end

    -- Increment pickup id
    pickupId = pickupId + 1

    AddActivePickup(pickupId, pickupTemplate, initialPosition, finalPosition, pickupType, contentType, contentId, amount, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)

    -- If no specific Player was provided, drop the Pickup for all Players instead of doing nothing.
    if dropForAllPlayers or not player then
        -- Spawn the pickup for all Players
        RELIABLE_EVENTS.BroadcastToAllPlayers(API.Events.DropItem, pickupId, pickupTemplate, initialPosition, finalPosition, pickupType, contentType, contentId, amount, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)
    else
        -- Spawn the pickup for one Player
        RELIABLE_EVENTS.BroadcastToPlayer(player, API.Events.DropItem, pickupId, pickupTemplate, initialPosition, finalPosition, pickupType, contentType, contentId, amount, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)
    end
end

---Server Only. Registers and sends multiple pickup information to one or all clients.
---@param player Player|nil
---@param pickupTemplate string
---@param initialPosition Vector3
---@param radius number
---@param pickupData table 
---@param dropForAllPlayers boolean
---@param singlePickup boolean
---@param pickupTimeoutSeconds number
function CreateItemPickups(player, pickupTemplate, initialPosition, radius, pickupData, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)
    if not Environment.IsServer() then
        warn("Item Pickups can only be created on the server")
        return
    end

    Task.Spawn(function()
        for _, pickup in ipairs(pickupData) do
            local angle = math.random() * math.pi * 2;
            local x = math.cos(angle) * radius;
            local y = math.sin(angle) * radius;
            local finalPosition = initialPosition + Vector3.New(x, y, 0)

            -- Increment pickup id
            pickupId = pickupId + 1

            AddActivePickup(pickupId, pickupTemplate, initialPosition, finalPosition, pickup.PickupType, pickup.Type, pickup.Id, pickup.Amount, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)

            -- If no specific Player was provided, drop the Pickup for all Players instead of doing nothing.
            if dropForAllPlayers or not player then
                -- Spawn the pickup for all Players
                RELIABLE_EVENTS.BroadcastToAllPlayers(API.Events.DropItem, pickupId, pickupTemplate, initialPosition, finalPosition, pickup.PickupType, pickup.Type, pickup.Id, pickup.Amount, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)
            else
                -- Spawn the pickup for one Player
                RELIABLE_EVENTS.BroadcastToPlayer(player, API.Events.DropItem, pickupId, pickupTemplate, initialPosition, finalPosition, pickup.PickupType, pickup.Type, pickup.Id, pickup.Amount, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)
            end

            if pickup.Delay then
                -- Make sure this doesn't get throttled
                if #pickupData >= 10 and pickup.Delay < 0.2 then
                    pickup.Delay = 0.2
                end

                if pickup.Delay > 0 then
                    Task.Wait(pickup.Delay)
                end
            end
        end
    end)
end

---Client Only. Spawns and initializes the Item Pickup.
---@param id integer
---@param pickupTemplate string
---@param initialPosition Vector3
---@param finalPosition Vector3
---@param pickupType integer
---@param contentType integer
---@param contentId string
---@param amount integer
---@param dropForAllPlayers boolean
---@param singlePickup boolean
---@param pickupTimeoutSeconds number
function SpawnItemPickup(id, pickupTemplate, initialPosition, finalPosition, pickupType, contentType, contentId, amount, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)
    if not Environment.IsClient() then
        warn("Item Pickups can only be spawned on the client")
        return
    end

    local itemPickup = World.SpawnAsset(pickupTemplate, { position = initialPosition })
    local inventoryPickupComponentRef = itemPickup:GetCustomProperty("InventoryPickupComponent")

    itemPickup.lifeSpan = pickupTimeoutSeconds or 0

    if inventoryPickupComponentRef and inventoryPickupComponentRef.isAssigned then
        local inventoryPickupComponent = inventoryPickupComponentRef:WaitForObject()

        ---@type APIInteractionManager
        local INPUT = require(script:GetCustomProperty("APIInteractionManager"))
        INPUT.SetData(itemPickup, inventoryPickupComponent, id, pickupType, contentType, contentId, amount, finalPosition)
    end

    -- Track this pickup on the client
    AddActivePickup(id, pickupTemplate, initialPosition, finalPosition, pickupType, contentType, contentId, amount, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)

    activePickups[id].ItemPickup = itemPickup
end

---Adds a new active pickup.
---@param id integer
---@param pickupTemplate string
---@param initialPosition Vector3
---@param finalPosition Vector3
---@param pickupType integer
---@param contentType integer
---@param contentId string
---@param amount integer
---@param dropForAllPlayers boolean
---@param singlePickup boolean
---@param pickupTimeoutSeconds number
function AddActivePickup(id, pickupTemplate, initialPosition, finalPosition, pickupType, contentType, contentId, amount, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)
    ---@class ActivePickupData
    activePickups[id] = {
        DropForAllPlayers = dropForAllPlayers,
        PickupTimeoutSeconds = pickupTimeoutSeconds,
        SinglePickup = singlePickup,
        Players = {},
        Template = pickupTemplate,
        InitialPosition = initialPosition,
        FinalPosition = finalPosition,
        PickupType = pickupType,
        Type = contentType,
        Id = contentId,
        Amount = amount,
        ItemPickup = nil
    }
end

---Server Only. Creates or spawns an Item Pickup depending on Environment.
---@param player Player|nil
---@param id integer
---@param pickupTemplate string
---@param initialPosition Vector3
---@param finalPosition Vector3
---@param pickupType integer
---@param contentType integer
---@param contentId string
---@param amount integer
---@param dropForAllPlayers boolean
---@param singlePickup boolean
---@param pickupTimeoutSeconds number
function HandleItemDropped(player, id, pickupTemplate, initialPosition, finalPosition, pickupType, contentType, contentId, amount, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)
    if Environment.IsServer() then
        -- Handle server relays
        CreateItemPickup(player, pickupTemplate, initialPosition, finalPosition, pickupType, contentType, contentId, amount, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)
    else
        -- Spawn a pickup
        SpawnItemPickup(id, pickupTemplate, initialPosition, finalPosition, pickupType, contentType, contentId, amount, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)
    end
end

---Server Only. Creates or spawns multiple Item Pickups depending on Environment.
---@param player Player|nil
---@param id integer
---@param pickupTemplate string
---@param initialPosition Vector3
---@param radius number
---@param pickupData PickupData
---@param dropForAllPlayers boolean
---@param singlePickup boolean
---@param pickupTimeoutSeconds number
function HandleItemsDropped(player, id, pickupTemplate, initialPosition, radius, pickupData, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)
    if Environment.IsServer() then
        -- Handle server relays
        CreateItemPickups(player, pickupTemplate, initialPosition, radius, pickupData, dropForAllPlayers, singlePickup, pickupTimeoutSeconds)
    end
end

---Server Only. A relay from the client that will collect an Item Pickup if possible.
---@param id integer
---@param consolidatedIds integer[]
function HandleItemsPickedUp(player, id, consolidatedIds)
    API.CollectItemPickups(player, id, consolidatedIds)
end

---Client Only. Removes a pickup if it exists.
---@param player Player
---@param ids integer[]
function HandleRemoveItemPickups(player, ids)
    for _, id in ipairs(ids) do
        if activePickups[id] and Object.IsValid(activePickups[id].ItemPickup) then
            -- Only broadcast the collect for non local Players since it has already been sent locally
            if player ~= Game.GetLocalPlayer() then
                Events.Broadcast(API.Events.ItemPickupCollected, player, activePickups[id].PickupType, activePickups[id].Type, activePickups[id].Id, activePickups[id].Amount)
            end

            local itemPickup = activePickups[id].ItemPickup
            activePickups[id] = nil
            itemPickup:Destroy()
        end
    end
end

---Returns the section prior to a ":" in a template muid.
---@param templateId string
---@return string
function GetSimpleTemplateId(templateId)
    local chunks = { CoreString.Split(templateId, ":") }
    return chunks[1]
end

if Environment.IsServer() then
    Events.ConnectForPlayer(API.Events.DropItem, HandleItemDropped)
    Events.ConnectForPlayer(API.Events.DropItems, HandleItemsDropped)
    Events.ConnectForPlayer(API.Events.PickupItems, HandleItemsPickedUp)
else
    Events.Connect(API.Events.DropItem, function(...)
        HandleItemDropped(Game.GetLocalPlayer(), ...)
    end)
    Events.Connect(API.Events.RemoveItemPickups, HandleRemoveItemPickups)
    Task.Spawn(CollectQueuedPickups)
end

return API