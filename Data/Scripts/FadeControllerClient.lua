local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local FADE_PANEL = script:GetCustomProperty("FadePanel"):WaitForObject()
local FADE_IMAGE = script:GetCustomProperty("FadeImage"):WaitForObject()

local AUTO_FADE_OUT = ROOT:GetCustomProperty("AutoFadeOut")
local DEFAULT_FADE_IN_TIME = ROOT:GetCustomProperty("DefaultFadeInTime")
local DEFAULT_FADE_OUT_TIME = ROOT:GetCustomProperty("DefaultFadeOutTime")
local DEFAULT_COLOR = ROOT:GetCustomProperty("DefaultColor")

local FADE_IN_CURVE = ROOT:GetCustomProperty("FadeInCurve")
local FADE_OUT_CURVE = ROOT:GetCustomProperty("FadeOutCurve")

local EVENT_FADE_TRANSITION = ROOT:GetCustomProperty("EventFadeTransitionListener")
local EVENT_FADE_IN = ROOT:GetCustomProperty("EventFadeInListener")
local EVENT_FADE_OUT = ROOT:GetCustomProperty("EventFadeOutListener")

local fadeColor = DEFAULT_COLOR
local isFadingIn = false
local fadeDuration = nil
local timer = nil

local function OnFadeIn(fadeTime, color)
    FADE_PANEL.opacity = 1

    fadeColor = color or DEFAULT_COLOR
    FADE_IMAGE:SetColor(fadeColor)

    isFadingIn = true
    fadeDuration = fadeTime or DEFAULT_FADE_IN_TIME
    fadeDuration = math.max(0.1, fadeDuration)

    timer = fadeDuration
end

local function OnFadeOut(fadeTime, color)
    FADE_PANEL.opacity = 1

    fadeColor = color or DEFAULT_COLOR
    FADE_IMAGE:SetColor(fadeColor)

    isFadingIn = false
    fadeDuration = fadeTime or DEFAULT_FADE_OUT_TIME
    fadeDuration = math.max(0.1, fadeDuration)

    timer = fadeDuration
end

local function OnFadeTransition(fadeToTime, fadeOutTime, color)
    OnFadeIn(fadeToTime, color)
    while timer do
        Task.Wait(0)
    end
    OnFadeOut(fadeOutTime, color)
end

function Tick(dt)
    if not timer then return end
    if timer > 0 then
        timer = timer - dt

        local arg = 1.0 - CoreMath.Clamp(timer / fadeDuration)
        if isFadingIn then
            FADE_PANEL.opacity = FADE_IN_CURVE:GetValue(arg)
        else
            FADE_PANEL.opacity = FADE_OUT_CURVE:GetValue(arg)
        end
    else
        timer = nil
        if isFadingIn then
            FADE_PANEL.opacity = 1
        else
            FADE_PANEL.opacity = 0
        end
    end
end

-- Initialize
Events.Connect(EVENT_FADE_IN, OnFadeIn)
Events.Connect(EVENT_FADE_OUT, OnFadeOut)
Events.Connect(EVENT_FADE_TRANSITION, OnFadeTransition)

if AUTO_FADE_OUT then
    FADE_PANEL.opacity = 1
    OnFadeOut()
end
