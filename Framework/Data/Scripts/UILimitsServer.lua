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

-- Required APIs
---@type APIReliableEvents
local RELIABLE_EVENTS = require(script:GetCustomProperty("APIReliableEvents"))
---@type APIInventory
local INVENTORY = require(script:GetCustomProperty("APIInventory"))
---@type APIReplicator
local REPLICATOR = require(script:GetCustomProperty("APIReplicator"))

-- Constants
local EVENT_REQUEST_UPDATE = "RequestLimitsUpdate"
local EVENT_SEND_UPDATE = "LimitsUpdate"

function GetDataSizes(player)
    local totalInventorySize = 0
    local totalReplicatorSize = 0
    local totalOtherSize = 0
    for _, key in ipairs(player:GetPrivateNetworkedDataKeys()) do
        local data = player:GetPrivateNetworkedData(key)
        if INVENTORY.IsInventoryKey(key) then
            totalInventorySize = totalInventorySize + Storage.SizeOfData({ key, data })
        elseif REPLICATOR.IsPlayerPrivateNetworkKey(nil, key) then
            totalReplicatorSize = totalReplicatorSize + Storage.SizeOfData({ key, data })
        else
            totalOtherSize = totalOtherSize + Storage.SizeOfData({ key, data })
        end
    end

    local totalLocalDataSize = 0
    local totalInventoryDataSize = 0

    local localData = Storage.GetPlayerData(player)
    totalLocalDataSize = Storage.SizeOfData(localData)

    for inventoryId, _ in pairs(INVENTORY.GetInventories()) do
        local key = INVENTORY.GetInventoryKey(inventoryId)
        local inventoryData = localData[key]
        if inventoryData then
            totalInventoryDataSize = totalInventoryDataSize + Storage.SizeOfData(inventoryData)
        end
    end

    return totalInventorySize, totalReplicatorSize, totalOtherSize, totalLocalDataSize, totalInventoryDataSize
end

function OnUpdate(player)
    RELIABLE_EVENTS.BroadcastToPlayer(player, EVENT_SEND_UPDATE, GetDataSizes(player))
end

Events.ConnectForPlayer(EVENT_REQUEST_UPDATE, OnUpdate)