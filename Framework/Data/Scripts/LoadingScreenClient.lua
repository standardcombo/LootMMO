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
local ROOT_PANEL = script:GetCustomProperty("RootPanel"):WaitForObject()
local PROGRESS_BAR = script:GetCustomProperty("UIProgressBar"):WaitForObject()
local MESSAGE = script:GetCustomProperty("Message"):WaitForObject()
local LOADING_SCREEN = script:GetCustomProperty("LoadingScreen"):WaitForObject()

-- Private Variables
local isFading = false
local fadeSpeed = 0
local targetProgress = 0

ROOT_PANEL.visibility = Visibility.FORCE_OFF
ROOT_PANEL.opacity = 0
LOADING_SCREEN.visibility = Visibility.INHERIT

function OnShowLoadingScreen(message)
    isFading = true
    fadeSpeed = 5
    MESSAGE.text = message
    ROOT_PANEL.opacity = 1
    ROOT_PANEL.visibility = Visibility.FORCE_ON
    PROGRESS_BAR.progress = 0
    targetProgress = 0
end

function OnHideLoadingScreen()
    targetProgress = 1
    isFading = true
    fadeSpeed = -1
end

function UpdateLoadingScreenProgress(progress)
    targetProgress = progress
end

function Tick(dt)
    if ROOT_PANEL.visibility == Visibility.FORCE_ON then
        PROGRESS_BAR.progress = CoreMath.Lerp(PROGRESS_BAR.progress, targetProgress, (1-0.5^(dt*20)))
    end

    if not isFading then return end

    ROOT_PANEL.opacity = CoreMath.Clamp(ROOT_PANEL.opacity + fadeSpeed*dt)
    if fadeSpeed > 0 and  ROOT_PANEL.opacity == 1 then
        isFading = false
    end
    if fadeSpeed < 0 and ROOT_PANEL.opacity == 0 then
        ROOT_PANEL.visibility = Visibility.FORCE_OFF
        isFading = false
    end
end

Events.Connect("ShowLoadingScreen", OnShowLoadingScreen)
Events.Connect("HideLoadingScreen", OnHideLoadingScreen)
Events.Connect("UpdateLoadingScreenProgress", UpdateLoadingScreenProgress )