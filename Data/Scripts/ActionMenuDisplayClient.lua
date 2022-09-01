-- Internal properties
local DATABASE = require(script:GetCustomProperty("APIDatabase"))
local CONTROLLER = require(script:GetCustomProperty("APIPlayerController"))

local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local OPTIONS_PANEL = script:GetCustomProperty("Panel"):WaitForObject()
local OPTIONS_SCROLL_PANEL = script:GetCustomProperty("OptionsScrollPanel"):WaitForObject()
local CONTEXT_PANEL = script:GetCustomProperty("ContextPanel"):WaitForObject()
local CONTEXT_SCROLL_PANEL = script:GetCustomProperty("ContextScrollPanel"):WaitForObject()
local HELPER = script:GetCustomProperty("Helper")

local GET = function(obj, property) return obj:GetCustomProperty(property):WaitForObject() end

-- Constant variables
local LOCAL_PLAYER = Game.GetLocalPlayer()
local UI_ID = "ActionMenu"

local HEADER_HEIGHT = 60
local FOOTER_HEIGHT = 15
local OPTIONS_PANEL_MAX_HEIGHT = ROOT:GetCustomProperty("OptionsPanelMaxHeight") or 300
local CONTEXT_PANEL_MAX_HEIGHT = ROOT:GetCustomProperty("ContextPanelMaxHeight") or 250

-- Internal variables
local selectedButton = nil
local selectedContextButton = nil

-- Databse can only be used with pairs, so this function aims to convert it into index and keys
-- The data must have custom int property Index
function ResortKeyedData(keyedData)
    local indexedData = {}
    for key, _ in pairs(keyedData) do
        table.insert(indexedData, key)
    end
    table.sort(indexedData, function(key1, key2)
        return keyedData[key1].Index < keyedData[key2].Index
    end)
    return indexedData
end

function ClearChildren(parent)
    for index, value in ipairs(parent:GetChildren()) do
        value:Destroy()
    end
end

function OnContextButtonClicked(button)
    local optionData = button.clientUserData.optionData
    if optionData then
        if optionData.ActionId then
            Events.BroadcastToServer("PlayerAction", optionData.ActionId)
        end
        if optionData.IsChatMessage then
            if optionData.Message then
                Events.BroadcastToServer("ChatBroadcast", LOCAL_PLAYER, optionData.Message)
            else
                Events.BroadcastToServer("ChatBroadcast", LOCAL_PLAYER, optionData.Name)
            end
        end
        if optionData.StatusId then
            Events.BroadcastToServer("PlayerStatus", optionData.StatusId)
        end
        if optionData.UIId then
            Task.Spawn(function()
                Events.Broadcast("ToggleUI", optionData.UIId, optionData.Open)
            end, .1)
        end
    end

    -- TODO: Tie in action, chat, dance, nameplate status
    Events.Broadcast("ToggleUI", UI_ID, false)
end

function FormatButtonName(optionData)
    if optionData.IsChatMessage then
        return optionData.Name
    end
    return optionData.Name
end

function RefreshContextMenu()
    -- By default the context panel is off
    if selectedButton == nil then
        CONTEXT_PANEL.visibility = Visibility.FORCE_OFF
        return
    end
    CONTEXT_PANEL.visibility = Visibility.INHERIT

    local dataItemId = selectedButton.clientUserData.dataItemId
    local contextData = ResortKeyedData(DATABASE.ActionOptions[dataItemId])
    local contentHeight = 0

    for i, actionId in ipairs(contextData) do
        local buttonInstance = World.SpawnAsset(HELPER, {parent = CONTEXT_SCROLL_PANEL})
        buttonInstance.y = (i-1) * (buttonInstance.height + 5)

        local optionData = DATABASE.ActionOptions[dataItemId][actionId]

        buttonInstance.clientUserData.optionData = optionData
        buttonInstance.clickedEvent:Connect(OnContextButtonClicked)

        GET(buttonInstance, "Text").text = FormatButtonName(optionData)
        if optionData.Icon then
            GET(buttonInstance, "Icon").visibility = Visibility.INHERIT
            GET(buttonInstance, "Icon"):SetImage(optionData.Icon)
        else
            GET(buttonInstance, "Icon").visibility = Visibility.FORCE_OFF
        end
        GET(buttonInstance, "ArrowIcon").visibility = Visibility.FORCE_OFF
        GET(buttonInstance, "SelectedPanel").visibility = Visibility.FORCE_OFF

        contentHeight = buttonInstance.y + buttonInstance.height
    end

    -- Set max height of panel
    CONTEXT_PANEL.height = contentHeight + FOOTER_HEIGHT * 2
    if CONTEXT_PANEL.height > CONTEXT_PANEL_MAX_HEIGHT then
        CONTEXT_PANEL.height = CONTEXT_PANEL_MAX_HEIGHT
    end
end

function OnOptionButtonClicked(button)
    ClearChildren(CONTEXT_SCROLL_PANEL)

    selectedButton = button
    for i, buttonInstance in ipairs(OPTIONS_SCROLL_PANEL:GetChildren()) do
        if selectedButton == buttonInstance then
            GET(buttonInstance, "SelectedPanel").visibility = Visibility.INHERIT
        else
            GET(buttonInstance, "SelectedPanel").visibility = Visibility.FORCE_OFF
        end
    end

    RefreshContextMenu()

    CONTEXT_PANEL.y = button.y + HEADER_HEIGHT - CONTEXT_SCROLL_PANEL.scrollPosition - 10
end

-- Resetting scroll positions of both panels and refereshing context menu
function Reset()
    -- Reset button selected states
    for i, buttonInstance in ipairs(OPTIONS_SCROLL_PANEL:GetChildren()) do
        GET(buttonInstance, "SelectedPanel").visibility = Visibility.FORCE_OFF
    end

    selectedButton = nil
    OPTIONS_SCROLL_PANEL.scrollPosition = 0
    CONTEXT_SCROLL_PANEL.scrollPosition = 0

    CONTEXT_PANEL.visibility = Visibility.FORCE_OFF

    RefreshContextMenu()
end

function Init()
    -- Toggle all off and clearing up children of all contents
    OPTIONS_PANEL.visibility = Visibility.FORCE_OFF
    CONTEXT_PANEL.visibility = Visibility.FORCE_OFF

    ClearChildren(OPTIONS_SCROLL_PANEL)

    -- Create action type buttons and cache content height
    local optionsData = ResortKeyedData(DATABASE.ActionTypes)
    local contentHeight = 0
    for i, key in ipairs(optionsData) do
        local buttonInstance = World.SpawnAsset(HELPER, {parent = OPTIONS_SCROLL_PANEL})
        buttonInstance.y = (i-1) * (buttonInstance.height + 5)

        buttonInstance.clientUserData.dataItemId = key
        buttonInstance.clickedEvent:Connect(OnOptionButtonClicked)

        local optionData = DATABASE.ActionTypes[key]

        GET(buttonInstance, "Text").text = optionData.Name
        if optionData.Icon then
            GET(buttonInstance, "Icon").visibility = Visibility.INHERIT
            GET(buttonInstance, "Icon"):SetImage(optionData.Icon)
        else
            GET(buttonInstance, "Icon").visibility = Visibility.FORCE_OFF
        end
        GET(buttonInstance, "ArrowIcon").visibility = Visibility.INHERIT
        GET(buttonInstance, "SelectedPanel").visibility = Visibility.FORCE_OFF

        contentHeight = buttonInstance.y + buttonInstance.height
    end

    -- Set max height of panel
    OPTIONS_PANEL.height = HEADER_HEIGHT + contentHeight + FOOTER_HEIGHT
    if OPTIONS_PANEL.height > OPTIONS_PANEL_MAX_HEIGHT then
        OPTIONS_PANEL.height = OPTIONS_PANEL_MAX_HEIGHT
    end
end

function OnToggleUI(uniqueId, toggle)
	if uniqueId == UI_ID and toggle then
		Reset()
    end
end

-- Initialize
Events.Connect("ToggleUI", OnToggleUI)
Init()