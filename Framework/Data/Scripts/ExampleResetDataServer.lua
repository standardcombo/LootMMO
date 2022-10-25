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

-- Internal Properties
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

-- User Exposed Properties
local ENABLED = COMPONENT_ROOT:GetCustomProperty("Enabled")
local RESET_DATA_BINDING = COMPONENT_ROOT:GetCustomProperty("ResetDataBinding")

-- Required APIs
---@type APIInventory
local INVENTORY = require(script:GetCustomProperty("APIInventory"))
---@type APICurrency
local CURRENCY = require(script:GetCustomProperty("APICurrency"))
---@type APIEquipment
local EQUIPMENT = require(script:GetCustomProperty("APIEquipment"))
---@type APIPlayerLots
local PLAYER_LOTS = require(script:GetCustomProperty("APIPlayerLots"))

-- Private Variables
local listeners = {}

function HandleBindingReleased(player, binding)
    if binding == RESET_DATA_BINDING then
        -- Clear all Inventories
        for inventoryId, _ in pairs(INVENTORY.GetInventories()) do
            INVENTORY.ClearInventory(player, inventoryId, true)
        end

        -- Reset Currencies
        for currencyId, _ in pairs(CURRENCY.GetCurrencies()) do
            CURRENCY.SetCurrencyAmount(player, currencyId, CURRENCY.GetSetting(currencyId, CURRENCY.Setting.StartingAmount))
        end

        -- Destroy all Equipment
        EQUIPMENT.UnequipAll(player)

        -- Reset Player Lot
        local lotIds = PLAYER_LOTS.FindPlayerOwnedLots(player.id)
        for _, lotId in ipairs(lotIds) do
            PLAYER_LOTS.ClearPlayerLotSaveData(lotId)
            PLAYER_LOTS.ResetLot(lotId)
            PLAYER_LOTS.SetLotOwner(lotId, player.id)
        end
    end
end

function HandlePlayerJoined(player)
    listeners[player] = player.bindingReleasedEvent:Connect(HandleBindingReleased)
end

function HandlePlayerLeft(player)
    listeners[player]:Disconnect()
    listeners[player] = nil
end

if ENABLED then
    Game.playerJoinedEvent:Connect(HandlePlayerJoined)
    Game.playerLeftEvent:Connect(HandlePlayerLeft)
end