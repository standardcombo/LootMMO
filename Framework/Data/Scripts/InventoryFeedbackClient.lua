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
    This script listens for Inventory added / removed events and displays feedback to the Player.
--]]

---@type CoreObject
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

---@type APIDatabase
local DATABASE = require(script:GetCustomProperty("APIDatabase"))
---@type APIItemPickups
local ITEM_PICKUPS = require(script:GetCustomProperty("APIItemPickups"))

local SHOW_IN_CHAT = COMPONENT_ROOT:GetCustomProperty("ShowInChat")
local SHOW_FLY_UP_TEXT = COMPONENT_ROOT:GetCustomProperty("ShowFlyUpText")
local TEXT_COLOR = COMPONENT_ROOT:GetCustomProperty("TextColor")
local TEXT_OFFSET = COMPONENT_ROOT:GetCustomProperty("TextOffset")
local TEXT_SECONDS = COMPONENT_ROOT:GetCustomProperty("TextSeconds")
local TEXT_IS_BIG = COMPONENT_ROOT:GetCustomProperty("TextIsBig")
local TEXT_FONT = COMPONENT_ROOT:GetCustomProperty("TextFont")

if TEXT_SECONDS < 0 then
    TEXT_SECONDS = 0
end

-- Called when a Player picks up a drop that the client is aware of
function HandlePickupCollected(player, pickupType, type, id, amount)
    if not DATABASE.Items then
        warn("\"Items\" data does not exist. Do you have an Inventory Template in your scene?")
        return
    end

    local data
    if pickupType == ITEM_PICKUPS.PickupType.Item then
        data = DATABASE.Items[id]
    elseif pickupType == ITEM_PICKUPS.PickupType.Currency then
        data = DATABASE.Currencies[id]
    end

    if data then
        local message = string.format("%s x%d", data.Name, amount)

        if SHOW_IN_CHAT then
            Chat.LocalMessage(message)
        end

        if SHOW_FLY_UP_TEXT then
            UI.ShowFlyUpText(message, player:GetWorldPosition() + TEXT_OFFSET, { 
                color = TEXT_COLOR,
                duration = TEXT_SECONDS,
                isBig = TEXT_IS_BIG,
                font = TEXT_FONT
            })
        end
    end
end

Events.Connect(ITEM_PICKUPS.Events.ItemPickupCollected, HandlePickupCollected)