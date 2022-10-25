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
local NAME_TEXT = script:GetCustomProperty("NameText"):WaitForObject()

-- User Exposed Properties
local TEXT_FOR_NO_OWNER = COMPONENT_ROOT:GetCustomProperty("TextForNoOwner")
local TEXT_FOR_ONLINE_OWNER = COMPONENT_ROOT:GetCustomProperty("TextForOnlineOwner")
local TEXT_FOR_OFFLINE_OWNER = COMPONENT_ROOT:GetCustomProperty("TextForOfflineOwner")

-- Required APIs
---@type APIPlayerLots
local PLAYER_LOTS = require(script:GetCustomProperty("APIPlayerLots"))

-- Wait for Player Lots to register
Task.Wait()

-- Private Variables
local lotId = PLAYER_LOTS.FindLotByAncestors(script)

function Tick()
    if lotId then
        local ownerId = PLAYER_LOTS.GetLotState(lotId).ownerId
        if ownerId then
            local lotOwner = PLAYER_LOTS.GetOwner(lotId)
            if lotOwner then
                local nameText = FormatText(lotOwner)
                if NAME_TEXT.text ~= nameText then
                    NAME_TEXT.text = FormatText(lotOwner)
                end
            elseif not lotOwner and NAME_TEXT.text ~= TEXT_FOR_OFFLINE_OWNER then
                NAME_TEXT.text = TEXT_FOR_OFFLINE_OWNER
            end
        elseif NAME_TEXT.text ~= TEXT_FOR_NO_OWNER then
            NAME_TEXT.text = TEXT_FOR_NO_OWNER
        end
    end

    Task.Wait(0.2)
end

function FormatText(player)
    if TEXT_FOR_ONLINE_OWNER and TEXT_FOR_ONLINE_OWNER ~= "" then
        local playerName = player.name
        if playerName:sub(#playerName, -1) == "s" then
            playerName = playerName .. "'"
        else
            playerName = playerName .. "'s"
        end

        return TEXT_FOR_ONLINE_OWNER:gsub("%{name}", playerName)
    else
        return player.name
    end
end