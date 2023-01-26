--[[
    Info Message Popup Client
    
    This script is used to display a message on screen for a certain amount of time.
    
    ShowMessage(message, timeUntilFade, fadeTime)
    
    The first parameter is the message.
    The second parameter is the amount of time the message is displayed on screen.
    The third parameter is the fade speed.

    The custom properties on the script are used as default in case the parameters are not provided.
    
    by: Luapi
    v1.0.0
]]
local EaseUI = require(script:GetCustomProperty("EaseUI"))
local MESSAGE_PANEL = script.parent
local MESSAGE_TEXT = script:GetCustomProperty("Message_TEXT"):WaitForObject()
local DEFAULT_FADE_TIMER = script:GetCustomProperty("DefaultFadeTimer")
local TIME_UNTIL_FADE = script:GetCustomProperty("TimeUntilFade")
local showingMessageTask = nil

local API = {}
_G.MessagePopup = API

function API.ShowMessage(message, timeUntilFade, fadeTime)
    if message == nil then
        warn("No message provided.")
        return
    end
    if not fadeTime or fadeTime < 0 then
        fadeTime = DEFAULT_FADE_TIMER or 1
    end
    if not timeUntilFade or timeUntilFade < 0 then
        timeUntilFade = TIME_UNTIL_FADE or 1
    end
    if showingMessageTask then
        MESSAGE_PANEL.visibility = Visibility.FORCE_OFF
        MESSAGE_PANEL.opacity = 1
        EaseUI.ClearTask(MESSAGE_PANEL, "opacity")
        showingMessageTask:Cancel()
        showingMessageTask = nil
    end
    MESSAGE_TEXT.text = message
    MESSAGE_PANEL.visibility = Visibility.INHERIT
    MESSAGE_PANEL.opacity = 1
    showingMessageTask = Task.Spawn(function()
        EaseUI.EaseOpacity(MESSAGE_PANEL, 0, fadeTime)
    end, timeUntilFade or 0)
end