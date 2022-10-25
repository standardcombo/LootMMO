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

-- Exit early unless this is a published game
if not Environment.IsHostedGame() then
    return
end

-- Internal Properties
local SCENES = script:GetCustomProperty("Scenes"):WaitForObject()

-- Private Variables
local sceneLookup = {}
local listeners = {}

for _, child in ipairs(SCENES:GetChildren()) do
    if child:GetCustomProperty("SceneName") ~= nil then
        sceneLookup[child:GetCustomProperty("Binding")] = {
            SceneName = child:GetCustomProperty("SceneName"),
            HoldShift = child:GetCustomProperty("HoldShift"),
            HoldCtrl = child:GetCustomProperty("HoldCtrl"),
            HoldAlt = child:GetCustomProperty("HoldAlt")
        }
    end
end

function OnBindingReleased(player, binding)
    if sceneLookup[binding] then
        if sceneLookup[binding].HoldShift and not (player:IsBindingPressed("ability_extra_12") or player:IsBindingPressed("ability_extra_13")) then
            return
        end
        if sceneLookup[binding].HoldCtrl and not (player:IsBindingPressed("ability_extra_10") or player:IsBindingPressed("ability_extra_11")) then
            return
        end
        if sceneLookup[binding].HoldAlt and not (player:IsBindingPressed("ability_extra_14") or player:IsBindingPressed("ability_extra_15")) then
            return
        end

        Game.TransferPlayersToScene(sceneLookup[binding].SceneName, { player })
    end
end

function OnPlayerJoined(player)
    listeners[player] = player.bindingReleasedEvent:Connect(OnBindingReleased)
end

function OnPlayerLeft(player)
    if listeners[player] then
        listeners[player]:Disconnect()
        listeners[player] = nil
    end
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerJoined)