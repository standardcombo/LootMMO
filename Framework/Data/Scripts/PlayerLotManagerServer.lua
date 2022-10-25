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
local LOT_TYPE = COMPONENT_ROOT:GetCustomProperty("LotType")
local MAX_OWNED_PER_PLAYER = COMPONENT_ROOT:GetCustomProperty("MaxOwnedPerPlayer")
local ASSIGN_WHEN_PLAYER_JOINS = COMPONENT_ROOT:GetCustomProperty("AssignWhenPlayerJoins")
local RESET_LOTS_WHEN_PLAYER_LEAVES = COMPONENT_ROOT:GetCustomProperty("ResetLotsWhenPlayerLeaves")

if not LOT_TYPE or LOT_TYPE == "" then
    error("The 'LotType' property must be set on " .. COMPONENT_ROOT.name)
end

if MAX_OWNED_PER_PLAYER < 0 then
    MAX_OWNED_PER_PLAYER = 0
end

-- Required APIs
---@type APIPlayerLots
local PLAYER_LOTS = require(script:GetCustomProperty("APIPlayerLots"))

-- Wait for Player Lots
Task.Wait()

function AssignAvailableLot(player)
    PLAYER_LOTS.GetOrAssignLot(player.id, LOT_TYPE, true)
end

function OnPlayerJoined(player)
    if ASSIGN_WHEN_PLAYER_JOINS then
        AssignAvailableLot(player)
    end
end

function OnPlayerLeft(player)
    if RESET_LOTS_WHEN_PLAYER_LEAVES then
        local playerLotIds = PLAYER_LOTS.FindPlayerOwnedLots(player.id, LOT_TYPE)
        for _, lotId in ipairs(playerLotIds) do
            PLAYER_LOTS.ResetLot(lotId)
        end
    end
end

PLAYER_LOTS.SetMaxOwnedLots(LOT_TYPE, MAX_OWNED_PER_PLAYER)

for _, player in ipairs(Game.GetPlayers()) do
    OnPlayerJoined(player)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)