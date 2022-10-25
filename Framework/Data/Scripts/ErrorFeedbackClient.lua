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
    This script listens for Error events and displays feedback to the Player.
--]]

---@type CoreObject
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

local SHOW_IN_CHAT = COMPONENT_ROOT:GetCustomProperty("ShowInChat")
local SHOW_UI = COMPONENT_ROOT:GetCustomProperty("ShowUI")
local ERROR_PANEL = COMPONENT_ROOT:GetCustomProperty("ErrorPanel"):WaitForObject()
local ERROR_TEXT = COMPONENT_ROOT:GetCustomProperty("ErrorText"):WaitForObject()
local ERROR_FADE_DELAY_SECONDS = COMPONENT_ROOT:GetCustomProperty("ErrorFadeDelaySeconds")
local ERROR_FADE_SECONDS = COMPONENT_ROOT:GetCustomProperty("ErrorFadeSeconds")

local uiTask

function HandleError(message)
    if not message then
        warn(string.format("%s fot a nil Error message", script.name))
        return
    end

    if SHOW_IN_CHAT then
        Chat.LocalMessage(message)
    end

    if SHOW_UI then
        if uiTask then
            uiTask:Cancel()
        end

        uiTask = Task.Spawn(function()
            ERROR_PANEL.opacity = 1
            ERROR_TEXT.text = message

            local remainingSeconds = ERROR_FADE_DELAY_SECONDS + ERROR_FADE_SECONDS
            while remainingSeconds > 0 do
                if remainingSeconds <= ERROR_FADE_SECONDS then
                    ERROR_PANEL.opacity = remainingSeconds / ERROR_FADE_SECONDS
                end

                Task.Wait(0.1)
                remainingSeconds = remainingSeconds - 0.1
            end

            ERROR_PANEL.opacity = 0
        end)
    end
end

ERROR_PANEL.opacity = 0

Events.Connect("Error", HandleError)