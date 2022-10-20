--[[
Copyright 2019-2020 Manticore Games, Inc. 

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

-- Internal custom properties
local API_A = require(script:GetCustomProperty("APIAbility"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local PANEL = script:GetCustomProperty("Panel"):WaitForObject()
local TEXT_BOX = script:GetCustomProperty("TextBox"):WaitForObject()
local PROGRESS_BAR = script:GetCustomProperty("ProgressBar"):WaitForObject()

-- User exposed properties
local SHOW_NAME = COMPONENT_ROOT:GetCustomProperty("ShowName")
local LOCAL_PLAYER = Game.GetLocalPlayer()

local interruptTime = nil

function OnAbilityInterrupted(player)
    if player == LOCAL_PLAYER then
        TEXT_BOX.text = "Cast Interrupted"
        PROGRESS_BAR:SetBackgroundColor(Color.RED)
        interruptTime = os.clock()
    end
end

function Tick(deltaTime)
    PANEL.visibility = Visibility.FORCE_OFF

    if interruptTime then
        if interruptTime + 0.5 < os.clock() then
            interruptTime = nil
            PROGRESS_BAR:SetBackgroundColor(Color.GRAY)
        else
            PANEL.visibility = Visibility.INHERIT
        end
    else
        local castData = API_A.GetPlayerCastData(LOCAL_PLAYER)

        if castData then
            local totalTime = API_A.GetAbilityCastDuration(LOCAL_PLAYER, castData.abilityName)
            local remainingTime = castData.startTime + totalTime - os.clock()
            PANEL.visibility = Visibility.INHERIT
            PROGRESS_BAR.progress = CoreMath.Clamp(1.0 - remainingTime / totalTime, 0.0, 1.0)
            PROGRESS_BAR:SetFillColor(Color.YELLOW)

            if SHOW_NAME and not interruptTime then
                TEXT_BOX.text = castData.abilityName
            end
        end
    end
end

-- Initialize
PANEL.visibility = Visibility.FORCE_OFF
API_RE.Connect("AI", OnAbilityInterrupted)

if not SHOW_NAME then
    TEXT_BOX.visibility = Visibility.FORCE_OFF
end
