-- Internal custom properties
local API = require(script:GetCustomProperty("API"))
local L = require(script:GetCustomProperty("APILocale"))
local EASE_UI = require(script:GetCustomProperty("EaseUI"))
local EVENTS_SETTINGS = require(script:GetCustomProperty("GameEventsSettings"))
local HELPER_TAG = script:GetCustomProperty("HelperTag")
local PANEL = script:GetCustomProperty("Panel"):WaitForObject()
local INSTRUCTION_PANEL = script:GetCustomProperty("InstructionPanel"):WaitForObject()
local GAME_INFO_PANEL = script:GetCustomProperty("GameInfoPanel"):WaitForObject()
local CLOSE_BUTTON = script:GetCustomProperty("CloseButton"):WaitForObject()
local PLAY_BUTTON = script:GetCustomProperty("PlayButton"):WaitForObject()

local EVENTS_PANEL = script:GetCustomProperty("EventsPanel"):WaitForObject()
local TAGS_PANEL = script:GetCustomProperty("TagsPanel"):WaitForObject()
local GAME_IMAGE = script:GetCustomProperty("GameImage"):WaitForObject()
local GAME_NAME_TEXT = script:GetCustomProperty("GameName"):WaitForObject()
local CREATOR_NAME_TEXT = script:GetCustomProperty("CreatorName"):WaitForObject()
local CREATOR_IMAGE = script:GetCustomProperty("CreatorImage"):WaitForObject()
local DESCRIPTION_TEXT = script:GetCustomProperty("Description"):WaitForObject()

local GET = function(obj, property) return obj:GetCustomProperty(property):WaitForObject() end

local EVENT_NAME_TEXT = GET(EVENTS_PANEL, "EventName")
local EVENT_DATE_TEXT = GET(EVENTS_PANEL, "EventDate")
local EVENT_ICON = GET(EVENTS_PANEL, "EventIcon")
local RSVP_BUTTON = GET(EVENTS_PANEL, "RegisterButton")

local INSTRUCTION_GAME_NAME = GET(INSTRUCTION_PANEL, "GameName")
local INSTRUCTION_EVENT_PANEL = GET(INSTRUCTION_PANEL, "EventPanel")

-- Coinstant variables
local LOCAL_PLAYER = Game.GetLocalPlayer()

local MAX_TAGS_COUNT = 5
local DESCRIPTION_MAX_ROW = 625
local TRANSITION_DURATION = 0.2
local INTERACTIVITY_COOLDOWN = 1.2

local PANEL_ORIGINAL_HEIGHT = PANEL.height
local PANEL_HEIGHT = PANEL_ORIGINAL_HEIGHT
local PANEL_HEIGHT_WO_EVENTS = PANEL.height - 115
local PANEL_WIDTH = PANEL.width

INSTRUCTION_PANEL_ORIGINAL_HEIGHT = INSTRUCTION_PANEL.height
INSTRUCTION_PANEL_HEIGHT = INSTRUCTION_PANEL_ORIGINAL_HEIGHT
INSTRUCTION_PANEL_WO_HEIGHT = INSTRUCTION_PANEL.height - INSTRUCTION_EVENT_PANEL.height - 5

local UI_ID = "PortalDisplay"

-- Internal variables
local lastTriggerInteractivityTime = time()
local isTriggerInteractable = false
local currentTrigger = nil
local isPanelOpen = false
local eventCollection = nil

function OpenPanel()
    Reset()
    isPanelOpen = true

    SetInteractableUI(true)

    PANEL.width = 1
    PANEL.height = 1
    PANEL.visibility = Visibility.INHERIT

    EASE_UI.EaseWidth(PANEL, PANEL_WIDTH, TRANSITION_DURATION)
    EASE_UI.EaseHeight(PANEL, PANEL_HEIGHT, TRANSITION_DURATION)

    local trigger = LOCAL_PLAYER.clientUserData.portalEntranceTrigger
    local portalCamera = trigger:GetCustomProperty("PortalCamera"):WaitForObject()
    LOCAL_PLAYER:SetOverrideCamera(portalCamera, TRANSITION_DURATION)

    Task.Wait(TRANSITION_DURATION)
    GAME_INFO_PANEL.visibility = Visibility.INHERIT
end

function ClosePanel()
    isPanelOpen = false
    SetInteractableUI(false)

    GAME_INFO_PANEL.visibility = Visibility.FORCE_OFF

    EASE_UI.EaseWidth(PANEL, 1, TRANSITION_DURATION)
    EASE_UI.EaseHeight(PANEL, 1, TRANSITION_DURATION)

    LOCAL_PLAYER:ClearOverrideCamera(TRANSITION_DURATION)

    lastTriggerInteractivityTime = time()

    Task.Wait(TRANSITION_DURATION + 0.1)
    PANEL.visibility = Visibility.FORCE_OFF

    if LOCAL_PLAYER.clientUserData.portalEntranceTrigger then
        if LOCAL_PLAYER.clientUserData.portalEntranceTrigger:IsOverlapping(LOCAL_PLAYER) then
            SetInteractableTrigger(true)
        end
        LOCAL_PLAYER.clientUserData.portalEntranceTrigger = nil
    end
end

function SetInteractableUI(isInteractable)
    UI.SetCursorVisible(isInteractable)
    UI.SetCanCursorInteractWithUI(isInteractable)

--    Task.Wait()
    LOCAL_PLAYER:GetDefaultCamera().isDistanceAdjustable = not isInteractable

    UI.SetSocialMenuEnabled(not isInteractable)

    Events.Broadcast("ToggleVisibility", "HUD", not isInteractable)
    Events.BroadcastToServer("ToggleUI", isInteractable)
end

function SetGameInfoUI(trigger)
    local gameId = API.GetTriggerGameID(trigger)
    local gameResult, gameInfo = pcall(CorePlatform.GetGameInfo, gameId)
    if not gameResult then
        error("Couldn't find game for portal. Invalid gameId.")
        return
    end
    local tags = gameInfo:GetTags()

    local tagPadding = 0
    for index, child in ipairs(TAGS_PANEL:GetChildren()) do
        local tag = tags[index]
        if tag then
            child.text = tag
            child.width = string.len(tag) * CoreMath.Round(child.fontSize / 1.3) + 10
            child.x = tagPadding
    
            child.visibility = Visibility.INHERIT
            tagPadding = tagPadding + child.width + 1
        else
            child.visibility = Visibility.FORCE_OFF
        end
    end

    GAME_IMAGE:SetGameScreenshot(gameId, 1)
    GAME_NAME_TEXT.text = gameInfo.name
    CREATOR_NAME_TEXT.text = gameInfo.ownerName
    DESCRIPTION_TEXT.text = gameInfo.description
    CREATOR_IMAGE:SetPlayerProfile(gameInfo.ownerId)

    local descriptionRow = CoreMath.Round(string.len(gameInfo.description) / DESCRIPTION_MAX_ROW) * DESCRIPTION_TEXT.fontSize
    DESCRIPTION_TEXT.height = descriptionRow * DESCRIPTION_TEXT.fontSize * 2

    if gameInfo.isQueueEnabled then
        PLAY_BUTTON.text = L["JOIN QUEUE"]
    else
        PLAY_BUTTON.text = L["PLAY"]
    end
end

function CheckEvent(gameId)
    _, eventCollection = pcall(CorePlatform.GetGameEventsForGame, gameId)

    -- Set event info from the game
    if eventCollection and #eventCollection:GetResults() > 0 then
        local event = eventCollection:GetResults()[1]
        EVENT_NAME_TEXT.text = event.name

        INSTRUCTION_PANEL.height = INSTRUCTION_PANEL_WO_HEIGHT
        INSTRUCTION_EVENT_PANEL.visibility = Visibility.FORCE_OFF

        if event.state == CoreGameEventState.ACTIVE then
            EVENT_NAME_TEXT:SetColor(EVENTS_SETTINGS.ACTIVE_COLOR)
            EVENT_ICON:SetColor(EVENTS_SETTINGS.ACTIVE_COLOR)
            EVENT_DATE_TEXT.text = os.date("Ends: %x at %I:%M %p", event:GetEndDateTime().secondsSinceEpoch)

            INSTRUCTION_PANEL.height = INSTRUCTION_PANEL_ORIGINAL_HEIGHT
            INSTRUCTION_EVENT_PANEL.visibility = Visibility.INHERIT

        elseif event.state == CoreGameEventState.SCHEDULED then
            EVENT_NAME_TEXT:SetColor(EVENTS_SETTINGS.FUTURE_COLOR)
            EVENT_ICON:SetColor(EVENTS_SETTINGS.FUTURE_COLOR)
            EVENT_DATE_TEXT.text = os.date("Starts: %x at %I:%M %p", event:GetStartDateTime().secondsSinceEpoch)
        else
            EVENT_NAME_TEXT:SetColor(EVENTS_SETTINGS.CANCELLED_COLOR)
            EVENT_ICON:SetColor(EVENTS_SETTINGS.CANCELLED_COLOR)
            EVENT_DATE_TEXT.text = "Cancelled"
        end
        PANEL_HEIGHT = PANEL_ORIGINAL_HEIGHT
        RSVP_BUTTON.isInteractable = true
        RSVP_BUTTON.eventId = event.id
        return
    else
        PANEL_HEIGHT = PANEL_HEIGHT_WO_EVENTS
        RSVP_BUTTON.isInteractable = false
    end
end

function SetInteractableTrigger(isInteractable)
    if isInteractable then
        if Object.IsValid(currentTrigger) then
            local gameId = API.GetTriggerGameID(currentTrigger)
            local gameInfo = CorePlatform.GetGameInfo(gameId)
            if gameId and gameInfo then
                INSTRUCTION_GAME_NAME.text = gameInfo.name
                Task.Spawn(function() CheckEvent(gameId) end)
            else
                INSTRUCTION_GAME_NAME.text = ""

                INSTRUCTION_PANEL.height = INSTRUCTION_PANEL_WO_HEIGHT
                INSTRUCTION_EVENT_PANEL.visibility = Visibility.FORCE_OFF
            end
        else
            INSTRUCTION_GAME_NAME.text = ""

            INSTRUCTION_PANEL.height = INSTRUCTION_PANEL_WO_HEIGHT
            INSTRUCTION_EVENT_PANEL.visibility = Visibility.FORCE_OFF
        end
        INSTRUCTION_PANEL.visibility = Visibility.INHERIT
    else
        INSTRUCTION_PANEL.visibility = Visibility.FORCE_OFF

        INSTRUCTION_PANEL.height = INSTRUCTION_PANEL_WO_HEIGHT
        INSTRUCTION_EVENT_PANEL.visibility = Visibility.FORCE_OFF
    end
    isTriggerInteractable = isInteractable
end

function PlayPortalSequence(player)    
    local stats = player.clientUserData.portalStats

    if stats then
        local gameInfo = CorePlatform.GetGameInfo(stats.gameID)

        -- No need to play portal sequence if it's a queued game
        if gameInfo.isQueueEnabled then
            Events.BroadcastToServer("PP", stats.gameID)
        else
            Events.Broadcast("PortalSequence", player, stats)
        end
    end
end

function OnClicked(button)
    if button == PLAY_BUTTON then
        PlayPortalSequence(LOCAL_PLAYER)
    end
    Events.Broadcast("ToggleUI", UI_ID, false)
    ClosePanel()
end

function OnBeginOverlap(trigger, player)
    if player ~= LOCAL_PLAYER then return end

    if Object.IsValid(currentTrigger) then
        OnEndOverlap(trigger, player)
    end

    currentTrigger = trigger
    SetInteractableTrigger(true)
end

function OnInteracted(trigger, player)
    if player ~= LOCAL_PLAYER then return end

    player.clientUserData.portalEntranceTrigger = trigger

    SetInteractableTrigger(false)
    SetGameInfoUI(trigger)
    OpenPanel()
end

function CloseInteraction()
    SetInteractableTrigger(false)
    if isPanelOpen then
        ClosePanel()
    end
end

function OnEndOverlap(trigger, player)
    if player ~= LOCAL_PLAYER then return end

    CloseInteraction()
    
    player.clientUserData.portalEntranceTrigger = nil
    currentTrigger = nil
end

function OnActionPressed(player, action)
    if player ~= LOCAL_PLAYER then return end

    -- Prevents players to spam the portal or open close button
    if time() - lastTriggerInteractivityTime < INTERACTIVITY_COOLDOWN then
        return
    end

    -- Press RMB to open or close
    if action == "Aim" and currentTrigger then
        if isTriggerInteractable then
            Events.Broadcast("ToggleUI", UI_ID, true)
            OnInteracted(currentTrigger, player)
        else
            Events.Broadcast("ToggleUI", UI_ID, false)
            ClosePanel()
        end
    end

    -- Press f to portal
    if action == "Interact" and isTriggerInteractable then
        Events.Broadcast("ToggleUI", UI_ID, false)
        PlayPortalSequence(player)
        SetInteractableTrigger(false)
    end
end

function Init()
    local portalEntranceTriggers = API.GetAllPortalEntranceTriggers()
    for _, trigger in ipairs(portalEntranceTriggers) do
        trigger.beginOverlapEvent:Connect(OnBeginOverlap)
        trigger.interactedEvent:Connect(OnInteracted)
        trigger.endOverlapEvent:Connect(OnEndOverlap)
    end

    for i = 1, MAX_TAGS_COUNT do
        local instance = World.SpawnAsset(HELPER_TAG, {parent = TAGS_PANEL})
        instance.text = ""
    end
end

function Reset()
    INSTRUCTION_PANEL.visibility = Visibility.FORCE_OFF
    INSTRUCTION_PANEL.height = INSTRUCTION_PANEL_WO_HEIGHT
    INSTRUCTION_EVENT_PANEL.visibility = Visibility.FORCE_OFF

    GAME_INFO_PANEL.visibility = Visibility.FORCE_OFF
    PANEL.visibility = Visibility.FORCE_OFF
end

function OnToggleUI(uniqueId, toggle)
	if uniqueId ~= UI_ID and toggle then
        if isPanelOpen then
            CloseInteraction()
        end
	end
	if uniqueId == UI_ID and not toggle then
        if isPanelOpen then
            CloseInteraction()
        end
	end
end

function OnPortalsRefresh(collectionID)
    local stats = LOCAL_PLAYER.clientUserData.portalStats
    if stats and stats.collectionID == collectionID and isPanelOpen then
        CloseInteraction()
        Events.Broadcast("SubBannerMessage", "PORTALS REFRESHED", 2.5, stats.color)
    end
end

-- Initialize
PLAY_BUTTON.clickedEvent:Connect(OnClicked)
CLOSE_BUTTON.clickedEvent:Connect(OnClicked)

Input.actionPressedEvent:Connect(OnActionPressed)
Events.Connect("ToggleUI", OnToggleUI)
Events.Connect("PortalsRefresh", OnPortalsRefresh)

-- Initialize
Reset()

Task.Wait(1)
while not API.AreAllPortalsLoaded() do
    Task.Wait()
end
Init()