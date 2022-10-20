local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local PROGRESS_BAR = script:GetCustomProperty("ProgressBar"):WaitForObject()
local LEVELUP_BLINKER = script:GetCustomProperty("LevelUpBlinker"):WaitForObject()
local HOVER_BUTTON = script:GetCustomProperty("HoverButton"):WaitForObject()
local SEGMENTS_ROOT = script:GetCustomProperty("SegmentsRoot"):WaitForObject()
local MATCH_WIDTH_OBJECT = script:GetCustomProperty("MatchWidthObject"):WaitForObject()
local TOOLTIP_ROOT = script:GetCustomProperty("ToolTipRoot"):WaitForObject()
local TOOLTIP_LEVEL = script:GetCustomProperty("ToolTipLevelText"):WaitForObject()
local TOOLTIP_EXPERIENCE = script:GetCustomProperty("ToolTipExperienceText"):WaitForObject()
local SFX_LEVELUP = script:GetCustomProperty("SFX_LevelUp"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()
while not LOCAL_PLAYER.clientUserData.statSheet do Task.Wait() end
local statSheet = LOCAL_PLAYER.clientUserData.statSheet

-- Animation parameters.
local PROGRESS_ANIMATION_DURATION = 0.5
local LEVELUP_ANIMATION_DURATION = 0.2
local LEVELUP_ANIMATION_CYCLES = 1
local LEVELUP_ANIMATION_MAX_ALPHA = LEVELUP_BLINKER:GetColor().a

-- Flag so that we avoid playing any animations on the first experience gained when it is loaded from the server.
local hasBeenInitialized = false

-- Progress bar animation state.
local progressLerpStart = statSheet:GetLevel() + statSheet:GetLevelProgress()
local progressLerpStop = progressLerpStart
local progressLerpTimer = 0
local currentLevel = 1
-- Level up animation state.
local blinkTimer = nil

local function InitializeControlWidth()
    Task.Wait()
    script.parent.width = MATCH_WIDTH_OBJECT.width
    local markers = SEGMENTS_ROOT:GetChildren()
    local spacing = script.parent.width / (#markers + 1)
    local half = (#markers + 1) // 2
    for i,marker in ipairs(markers) do
        local x = spacing * (i - half)
        marker.x = x
    end
end

local function UpdateToolTipText()
    TOOLTIP_LEVEL.text = string.format("Level %d", statSheet:GetLevel())
    if statSheet:IsMaxLevel() then
        TOOLTIP_EXPERIENCE.text = string.format("max level")
    else
        TOOLTIP_EXPERIENCE.text = string.format("%d to next level", statSheet:GetLevelExperienceRemaining())
    end
end

local function UpdateProgressTargets()
    local currentLevelProgress = statSheet:IsMaxLevel() and 0. or statSheet:GetLevelProgress()
    local currentProgressSum = statSheet:GetLevel() + currentLevelProgress
    if currentProgressSum ~= progressLerpStop then
        if hasBeenInitialized then
            -- Once the xp bar has been initialized, any further changes represent organic xp gains, which we want to animate.
            progressLerpStart = progressLerpStop
            progressLerpStop = currentProgressSum
            progressLerpTimer = 0
        else
            -- If the xp bar has not yet been initialized, we want to just quietly update it to the correct value.
            progressLerpStart = currentProgressSum
            progressLerpStop = currentProgressSum
            progressLerpTimer = math.huge
            currentLevel = statSheet:GetLevel()
            hasBeenInitialized = true
        end
    end
end

local function UpdateProgressAnimation(dt)
    if progressLerpTimer <= PROGRESS_ANIMATION_DURATION then
        progressLerpTimer = progressLerpTimer + dt
        local lerpAmount = CoreMath.Clamp(progressLerpTimer / PROGRESS_ANIMATION_DURATION)
        local level,progress = math.modf(CoreMath.Lerp(progressLerpStart, progressLerpStop, lerpAmount))
        -- Anytime we wrap around is a level crossing.
        if level > currentLevel then
            blinkTimer = 0
            SFX_LEVELUP:Play()
            API_RE.Broadcast("DisplayLocalPlayerLevelUp")
        end
        -- Update.
        currentLevel = level
        PROGRESS_BAR.progress = progress
    else
        local _,progress = math.modf(progressLerpStop)
        PROGRESS_BAR.progress = progress
    end
end

local function UpdateLevelUpAnimation(dt)
    if blinkTimer and blinkTimer <= LEVELUP_ANIMATION_DURATION then
        blinkTimer = blinkTimer + dt
        local blinkAmount = 1.0 - 0.5 * math.cos(2 * math.pi * LEVELUP_ANIMATION_CYCLES * blinkTimer / LEVELUP_ANIMATION_DURATION)
        local color = LEVELUP_BLINKER:GetColor()
        color.a = blinkAmount * LEVELUP_ANIMATION_MAX_ALPHA
        LEVELUP_BLINKER:SetColor(color)
        LEVELUP_BLINKER.visibility = Visibility.INHERIT
    else
        blinkTimer = nil
        LEVELUP_BLINKER.visibility = Visibility.FORCE_OFF
    end
end

function Tick(dt)
    UpdateToolTipText()
    UpdateProgressTargets()
    UpdateProgressAnimation(dt)
    UpdateLevelUpAnimation(dt)
end

-- Connect hover button to trigger tooltip.
HOVER_BUTTON.hoveredEvent:Connect(function() TOOLTIP_ROOT.visibility = Visibility.INHERIT end)
HOVER_BUTTON.unhoveredEvent:Connect(function() TOOLTIP_ROOT.visibility = Visibility.FORCE_OFF end)

InitializeControlWidth()