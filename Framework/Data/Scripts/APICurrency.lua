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
    This script manages currencies and provides an API for interacting with them. It is mirrored on the server and client
    and can be used from either context.
--]]

---@type APIDatabase
local DATABASE = require(script:GetCustomProperty("APIDatabase"))
---@type APIReliableEvents
local RELIABLE_EVENTS = require(script:GetCustomProperty("APIReliableEvents"))

-- Constants
local CURRENCY_TAG = "CUR_"

-- Private Variables
local currencies = {}

---@class APICurrency
local API = {}

-- These events can be accessed like: Events.Connect(APICurrency.Events.EventName, Handler)
API.Events = {
    -- Internal Events
    AddCurrency = CURRENCY_TAG .. "add",
    RemoveCurrency = CURRENCY_TAG .. "remove",
    SetCurrency = CURRENCY_TAG .. "set",
    -- Public Events
    CurrencyRegistered = CURRENCY_TAG .. "registered",      -- Server Only
    CurrencyUnregistered = CURRENCY_TAG .. "unregistered",  -- Server Only
    CurrencyAdded = CURRENCY_TAG .. "added",
    CurrencyRemoved = CURRENCY_TAG .. "removed",
    CurrencySet = CURRENCY_TAG .. "wasSet",
    CurrencyLoaded = CURRENCY_TAG .. "loaded",
    CurrencySaved = CURRENCY_TAG .. "saved"
}

---@class CurrencySetting
API.Setting = {
    Name = "Name",
    StorageKey = "StorageKey",
    StartingAmount = "StartingAmount",
    MaxAmount = "MaxAmount",
    IconCameraId = "IconCameraId",
    IconAsset = "IconAsset",
    Is3DIcon = "Is3DIcon",
    IsKitbashed2DIcon = "IsKitbashed2DIcon",
    IsImageIcon = "IsImageIcon",
    DropTemplate = "DropTemplate",
    DropItemPickupTemplate = "DropItemPickupTemplate",
    VerboseLogs = "VerboseLogs"
}

API.DefaultSettings = {
    [API.Setting.Name] = "Coins",
    [API.Setting.StorageKey] = nil,
    [API.Setting.StartingAmount] = 0,
    [API.Setting.MaxAmount] = 0,
    [API.Setting.IconCameraId] = "",
    [API.Setting.IconAsset] = "",
    [API.Setting.Is3DIcon] = false,
    [API.Setting.IsKitbashed2DIcon] = false,
    [API.Setting.IsImageIcon] = true,
    [API.Setting.VerboseLogs] = false
}

---Server Only. Registers a currency.
---@param currencyId string
function API.RegisterCurrency(currencyId)
    if not Environment.IsServer() then 
        warn("RegisterCurrency can only be called on the server")
        return
    end

    currencies[currencyId] = {}

    Events.Broadcast(API.Events.CurrencyRegistered, currencyId)

    -- Load this Currency to all current Players
    for _, player in ipairs(Game.GetPlayers()) do
        LoadCurrency(player, currencyId)
    end
end

---Server Only. Unregisters a Currency.
---@param currencyId string
function API.UnregisterCurrency(currencyId)
    if not Environment.IsServer() then 
        warn("UnregisterCurrency can only be called on the server")
        return
    end

    currencies[currencyId] = nil

    Events.Broadcast(API.Events.CurrencyUnregistered, currencyId)
end

---Returns true if a Currency is registered.
---@param currencyId string
---@return boolean
function API.IsCurrencyRegistered(currencyId)
    return currencies[currencyId] ~= nil
end

---Returns true if the Currency has been loaded for the Player.
---@param player Player
---@param currencyId string
---@return boolean
function API.IsCurrencyLoaded(player, currencyId)
    if not API.IsCurrencyRegistered(currencyId) then return false end
    return currencies[currencyId][player] ~= nil
end

---Returns a setting value for a Currency, or a defualt value if the setting cannot be found.
---@param currencyId string
---@param setting CurrencySetting
---@return any
function API.GetSetting(currencyId, setting)
    if not API.IsCurrencyRegistered(currencyId) then
        Warning(currencyId, string.format("Could not get Setting: %s for Currency: %s, make sure it is registered before you try to access it", setting, currencyId))
        return nil
    end

    if DATABASE.Currencies[currencyId][setting] == nil then
        return API.DefaultSettings[setting]
    end

    return DATABASE.Currencies[currencyId][setting]
end

---Returns all registered Currencies.
---@return table
function API.GetCurrencies()
    return currencies
end

---Returns the amount of a Currency that a Player has.
---@param player Player
---@param currencyId string
---@return integer
function API.GetCurrencyAmount(player, currencyId)
    if not API.IsCurrencyRegistered(currencyId) then
        Warning(currencyId, string.format("Could not get amount of Currency: %s, make sure it is registered before you try to access it", currencyId))
        return nil
    end

    if not API.IsCurrencyLoaded(player, currencyId) then
        Warning(currencyId, string.format("Could not get amount of Currency: %s, make sure it is loaded before you try to access it", currencyId))
        return nil
    end

    return currencies[currencyId][player]
end

---Returns true if there is enough room in a Currency to add an amount to it.
---@param player Player
---@param currencyId string
---@param amount integer
---@return boolean
function API.HasRoomForCurrency(player, currencyId, amount)
    local maxAmount = API.GetSetting(currencyId, API.Setting.MaxAmount)
    if maxAmount > 0 and API.GetCurrencyAmount(player, currencyId) + amount > maxAmount then
        return false
    end

    return true
end

---Returns true if a set of Drops can be added to one or more Currencies.
---@param player Player
---@param drops DropResults Output from APIDrops.CalculateDrops()
---@return boolean
function API.HasRoomForCurrencyFromDrops(player, drops)
    if not drops.Currencies then
        warn("Invalid Drops data. Drops must contain a Currencies table containing <currencyId, amount> values")
        return false
    end
    return API.HasRoomForCurrencies(player, drops.Currencies)
end

---Returns true if the list of Currencies and amounts can fit within their maximums.
---@param player Player
---@param currencies table<string, integer> table<currencyId, amount>
---@return boolean
function API.HasRoomForCurrencies(player, currencies)
    for currencyId, amount in pairs(currencies) do
        if not API.HasRoomForCurrency(player, currencyId, amount) then
            return false
        end
    end
    return true
end

---Adds an amount to a Currency for a Player. Returns true if successful.
---@param player Player
---@param currencyId string
---@param amount integer
---@param updateOtherContext boolean
---@return boolean
function API.AddCurrencyAmount(player, currencyId, amount, updateOtherContext)
    if not API.IsCurrencyRegistered(currencyId) then
        Warning(currencyId, string.format("Could not add: %d to Currency: %s, make sure it is registered before you try to access it", amount, currencyId))
        return false
    end

    if not API.IsCurrencyLoaded(player, currencyId) then
        Warning(currencyId, string.format("Could not add: %d to Currency: %s, make sure it is loaded before you try to access it", amount, currencyId))
        return false
    end

    if amount <= 0 then 
        Warning(currencyId, string.format("Amount must be greater than 0 to add to Currency: %s for Player: %s (%s)", currencyId, player.name, player.id))
        return false
    end

    local maxAmount = API.GetSetting(currencyId, API.Setting.MaxAmount)
    local amountAdded = amount

    if maxAmount > 0 and API.GetCurrencyAmount(player, currencyId) + amount > maxAmount then
        amountAdded = math.min(currencies[currencyId][player] + amount, maxAmount)
    end

    currencies[currencyId][player] = currencies[currencyId][player] + amountAdded

    -- Always send event in current context
    Events.Broadcast(API.Events.CurrencyAdded, player, currencyId, amountAdded)

    -- Default to always update the opposite context
    if updateOtherContext == nil then
        updateOtherContext = true
    end

    -- Handle client and server interactions to ensure the API is replicated on both sides
    if Environment.IsServer() then
        -- Save and update the client from the server
        if not SaveCurrency(player, currencyId) then
            return false
        end

        -- Send client information if needed
        SendCurrencyToClient(player, currencyId)
    elseif Environment.IsClient() then
        -- Handle adding currency from the client
        if updateOtherContext then
            RELIABLE_EVENTS.BroadcastToServer(API.Events.AddCurrency, currencyId, amount)
        end
    end

    return true
end

---Removes an amount from a Currency for a Player. Returns true if successful.
---@param player Player
---@param currencyId string
---@param amount integer
---@param updateOtherContext boolean
---@return boolean
function API.RemoveCurrencyAmount(player, currencyId, amount, updateOtherContext)
    if not API.IsCurrencyRegistered(currencyId) then
        Warning(currencyId, string.format("Could not remove: %d from Currency: %s, make sure it is registered before you try to access it", amount, currencyId))
        return false
    end

    if not API.IsCurrencyLoaded(player, currencyId) then
        Warning(currencyId, string.format("Could not remove: %d from Currency: %s, make sure it is loaded before you try to access it", amount, currencyId))
        return false
    end

    if amount <= 0 then 
        Warning(currencyId, string.format("Amount must be greater than 0 to remove from Currency: %s for Player: %s (%s)", currencyId, player.name, player.id))
        return false
    end

    local amountRemoved = amount
    if API.GetCurrencyAmount(player, currencyId) - amount < 0 then
        amountRemoved = math.max(currencies[currencyId][player] - amount, 0)
    end

    currencies[currencyId][player] = currencies[currencyId][player] - amountRemoved

    -- Always send event in current context
    Events.Broadcast(API.Events.CurrencyRemoved, player, currencyId, amountRemoved)

    -- Default to always update the opposite context
    if updateOtherContext == nil then
        updateOtherContext = true
    end

    -- Handle client and server interactions to ensure the API is replicated on both sides
    if Environment.IsServer() then
        -- Save and update the client from the server
        if not SaveCurrency(player, currencyId) then
            return false
        end

        -- Send client information if needed
        SendCurrencyToClient(player, currencyId)
    elseif Environment.IsClient() then
        -- Handle removing currency from the client
        if updateOtherContext then
            RELIABLE_EVENTS.BroadcastToServer(API.Events.RemoveCurrency, currencyId, amount)
        end
    end

    return true
end

---Sets a Currency to an amount for a PLayer. Returns true if successful.
---@param player Player
---@param currencyId string
---@param amount integer
---@param updateOtherContext boolean
---@return boolean
function API.SetCurrencyAmount(player, currencyId, amount, updateOtherContext)
    if not API.IsCurrencyRegistered(currencyId) then
        Warning(currencyId, string.format("Could not set Currency: %s to %d, make sure it is registered before you try to access it", currencyId, amount))
        return false
    end

    if not API.IsCurrencyLoaded(player, currencyId) then
        Warning(currencyId, string.format("Could not set Currency: %s to %d, make sure it is loaded before you try to access it", currencyId, amount))
        return false
    end

    local maxAmount = API.GetSetting(currencyId, API.Setting.MaxAmount)
    local amountSet = amount

    if amount < 0 then
        amountSet = 0
    elseif maxAmount > 0 and amount > maxAmount then
        amountSet = maxAmount
    end

    currencies[currencyId][player] = amountSet

    -- Always send event in current context
    Events.Broadcast(API.Events.CurrencySet, player, currencyId, amountSet)

    -- Default to always update the opposite context
    if updateOtherContext == nil then
        updateOtherContext = true
    end

    -- Handle client and server interactions to ensure the API is replicated on both sides
    if Environment.IsServer() then
        -- Save and update the client from the server
        if not SaveCurrency(player, currencyId) then
            return false
        end

        -- Send client information if needed
        SendCurrencyToClient(player, currencyId)
    elseif Environment.IsClient() then
        -- Handle setting currency from the client
        if updateOtherContext then
            RELIABLE_EVENTS.BroadcastToServer(API.Events.SetCurrency, currencyId, amount)
        end
    end

    return true
end

---Returns a key used for Storage and networking.
---@param currencyId string
---@return string
function API.GetCurrencyKey(currencyId)
    return CURRENCY_TAG .. currencyId
end

---Returns true if the key is a Currency key.
---@param key string
---@return boolean
function API.IsCurrencyKey(key)
    return string.find(key, "^" .. CURRENCY_TAG) ~= nil
end

---Returns the Currency id associated with a Currency key.
---@param key string
---@return string
function API.GetCurrencyIdFromKey(key)
    return string.sub(key, #CURRENCY_TAG + 1)
end

---Loads a Currency amount from Storage for a Player. Creates new data is needed.
---@param player Player
---@param currencyId string
---@return boolean
function LoadCurrency(player, currencyId)
    if not Environment.IsServer() then return false end

    local currencyKey = API.GetCurrencyKey(currencyId)
    local storageKey = API.GetSetting(currencyId, API.Setting.StorageKey)
    local playerData

    if storageKey and storageKey.isAssigned then
        playerData = Storage.GetSharedPlayerData(storageKey, player)
        if not playerData[currencyKey] then
            playerData[currencyKey] = API.GetSetting(currencyId, API.Setting.StartingAmount)
            Storage.SetSharedPlayerData(storageKey, player, playerData)
        end
    else
        playerData = Storage.GetPlayerData(player)
        if not playerData[currencyKey] then
            playerData[currencyKey] = API.GetSetting(currencyId, API.Setting.StartingAmount)
            Storage.SetPlayerData(player, playerData)
        end
    end

    currencies[currencyId][player] = playerData[currencyKey]

    SendCurrencyToClient(player, currencyId)

    Events.Broadcast(API.Events.CurrencyLoaded, player, currencyId)
end

---Saves a Currency amount to Storage for a Player. Returns true if successful.
---@param player Player
---@param currencyId string
---@return boolean
function SaveCurrency(player, currencyId)
    if not Environment.IsServer() then return false end

    local currencyKey = API.GetCurrencyKey(currencyId)
    local storageKey = API.GetSetting(currencyId, API.Setting.StorageKey)

    if storageKey and storageKey.isAssigned then
        local playerData = Storage.GetSharedPlayerData(storageKey, player)
        playerData[currencyKey] = API.GetCurrencyAmount(player, currencyId)

        local result = Storage.SetSharedPlayerData(storageKey, player, playerData)
        if result ~= StorageResultCode.SUCCESS then
            Warning(currencyId, string.format("Could not save Currency: %s for Player: %s (%s) - Result: %s", currencyId, player.name, player.id, result))
            return false
        end
    else
        local playerData = Storage.GetPlayerData(player)
        playerData[currencyKey] = API.GetCurrencyAmount(player, currencyId)

        local result = Storage.SetPlayerData(player, playerData)
        if result ~= StorageResultCode.SUCCESS then
            Warning(currencyId, string.format("Could not save Currency: %s for Player: %s (%s) - Result: %s", currencyId, player.name, player.id, result))
            return false
        end
    end

    Events.Broadcast(API.Events.CurrencySaved, player, currencyId)

    return true
end

---Sends a Currency amount to a Player.
---@param player Player
---@param currencyId string
function SendCurrencyToClient(player, currencyId)
    if not Environment.IsServer() then return end

    local currencyKey = API.GetCurrencyKey(currencyId)
    player:SetResource(currencyKey, currencies[currencyId][player])
end

---Client Only. Recieves Currency amounts from the server.
---@param player Player
---@param key string
---@param value integer
function HandleResourceChanged(player, key, value)
    if API.IsCurrencyKey(key) then
        local currencyId = API.GetCurrencyIdFromKey(key)
        local currencyAmount = player:GetResource(key)

        if not API.IsCurrencyLoaded(player, currencyId) then
            currencies[currencyId] = {
                [player] = currencyAmount
            }

            Events.Broadcast(API.Events.CurrencyLoaded, player, currencyId)
        else
            local difference = currencyAmount - currencies[currencyId][player]
            currencies[currencyId][player] = currencyAmount

            if difference > 0 then
                Events.Broadcast(API.Events.CurrencyAdded, player, currencyId, difference)
            else
                Events.Broadcast(API.Events.CurrencyRemoved, player, currencyId, math.abs(difference))
            end
        end
    end
end

---Server Only. Handles relays from the client.
---@param player Player
---@param currencyId string
---@param amount integer
function HandleCurrencyAddRequest(player, currencyId, amount)
    if not Environment.IsServer() then return end

    API.AddCurrencyAmount(player, currencyId, amount, false)
end

---Server Only. Handles relays from the client.
---@param player Player
---@param currencyId string
---@param amount integer
function HandleCurrencyRemoveRequest(player, currencyId, amount)
    if not Environment.IsServer() then return end

    API.RemoveCurrencyAmount(player, currencyId, amount, false)
end

---Server Only. Handles relays from the client.
---@param player Player
---@param currencyId string
---@param amount integer
function HandleCurrencySetRequest(player, currencyId, amount)
    if not Environment.IsServer() then return end

    API.SetCurrencyAmount(player, currencyId, amount, false)
end

---Server Only. Loads currencys for a new Player.
---@param player Player
function OnPlayerJoined(player)
    for currencyId, _ in pairs(currencies) do
        LoadCurrency(player, currencyId)
    end
end

---Unloads all registered Currencies for a Player when they leave.
---@param player Player
function OnPlayerLeft(player)
    for _, currency in pairs(currencies) do
        currency[player] = nil
    end
end

---A wrapper around warn() to allow for toggling it with an Currency setting "VerboseLogs".
---@param currencyId string
---@param message string
function Warning(currencyId, message)
    if API.IsCurrencyRegistered(currencyId) and API.GetSetting(currencyId, API.Setting.VerboseLogs) then
        warn(string.format("%s\n%s", message, CoreDebug.GetStackTrace()))
    else
        warn(message)
    end
end

-- Handle client requests
if Environment.IsServer() then
    Events.ConnectForPlayer(API.Events.AddCurrency, HandleCurrencyAddRequest)
    Events.ConnectForPlayer(API.Events.RemoveCurrency, HandleCurrencyRemoveRequest)
    Events.ConnectForPlayer(API.Events.SetCurrency, HandleCurrencySetRequest)

    Game.playerJoinedEvent:Connect(OnPlayerJoined)
else
    local player = Game.GetLocalPlayer()

    -- Listen for data coming from the server
    player.resourceChangedEvent:Connect(HandleResourceChanged)

    for key, _ in pairs(player:GetResources()) do
        if API.IsCurrencyKey(key) then
            HandleResourceChanged(player, key, player:GetResource(key))
        end
    end
end

Game.playerLeftEvent:Connect(OnPlayerLeft)

return API