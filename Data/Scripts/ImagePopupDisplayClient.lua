--[[
Events.Broadcast("PopupImage", string gameId, int index, string title, string description, [string buttonEvent])
]]

local PANEL = script:GetCustomProperty("Panel"):WaitForObject()
local IMAGE = script:GetCustomProperty("Image"):WaitForObject()
local TITLE_TEXT = script:GetCustomProperty("TitleText"):WaitForObject()
local DESCRIPTION_TEXT = script:GetCustomProperty("DescriptionText"):WaitForObject()
local SUB_TEXT = script:GetCustomProperty("SubText"):WaitForObject()
local ACTION_BUTTON = script:GetCustomProperty("ActionButton"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()
local UI_ID = "PopupImage"

local actionEvent = ""
local isOpen = false

function SetInteractableUI(isInteractable)
    isOpen = isInteractable

    UI.SetCursorVisible(isInteractable)
    UI.SetCanCursorInteractWithUI(isInteractable)

    LOCAL_PLAYER:GetDefaultCamera().isDistanceAdjustable = not isInteractable
    Events.Broadcast("ToggleVisibility", "HUD", not isInteractable)
    Events.BroadcastToServer("ToggleUI", isInteractable)
end

function OpenPanel()
    SetInteractableUI(true)
    PANEL.visibility = Visibility.INHERIT
    
end

function ClosePanel()
    SetInteractableUI(false)
    IMAGE:SetGameScreenshot("")
    Reset()
end

function Reset()
    PANEL.visibility = Visibility.FORCE_OFF
end

function PopupImage(gameId, screenshotIndex, title, description, buttonEvent, subText)
    -- Check if game screenshot image is valid
    local result, _ = pcall(CorePlatform.GetGameInfo, gameId)
    if not result then
        warn("Invalid gameId to use for image popup.")
    else
        IMAGE:SetGameScreenshot(gameId, screenshotIndex)
    end

    -- Set up content
    TITLE_TEXT.text = title
    DESCRIPTION_TEXT.text = description

    if buttonEvent and buttonEvent ~= "" then
        actionEvent = buttonEvent
    else
        actionEvent = ""
    end

    if subText and subText ~= "" then
        SUB_TEXT.text = subText
    else
        SUB_TEXT.text = ""
    end

    Task.Wait()

    -- Open panel after setup
    OpenPanel()
    Events.Broadcast("ToggleUI", UI_ID, true)
end

function OnClicked(whichButton)
    Events.Broadcast("ToggleUI", UI_ID, false)
    if actionEvent ~= "" then
        Events.Broadcast(actionEvent)
    end
end

function OnToggleUI(id, toggle)
    if id == UI_ID and not toggle then
        ClosePanel()
    end
end

-- Initialize
ACTION_BUTTON.clickedEvent:Connect(OnClicked)
Events.Connect("PopupImage", PopupImage)
Events.Connect("ToggleUI", OnToggleUI)

Reset()