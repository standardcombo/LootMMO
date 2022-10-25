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
    This script handles showing and hiding screens that have been registered in the database. It will automatically
    listen for their open and close bindings or you can use events to manage screens.

    If a screen has a Core Reference custom property on the root called "Controller" that can reference a script inside
    the screen, any additional parameters passed to ShowScreen() will be passed into an Initialize() function if it
    exists on the Controller.
--]]

---@type CoreObject
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

---@type APIDatabase
local DATABASE = require(script:GetCustomProperty("APIDatabase"))

local SCREEN_CONTAINER = COMPONENT_ROOT:GetCustomProperty("ScreenContainer"):WaitForObject()

-- Constants
local UI_TAG = "UI_"
local EVENT_SHOW_SCREEN = UI_TAG .. "showScreen"
local EVENT_HIDE_SCREEN = UI_TAG .. "hideScreen"
local EVENT_SET_ACTIVE_SCREEN = UI_TAG .. "setActiveScreen"

-- Private Variables
---@type table<string, ScreenInfo>
local screenLookup = {}
local openScreens = {}
local lastCursorInteractState
local lastCursorVisibility

---Listens for data changes and adds current screen data to a lookup.
function SetupScreens()
    DATABASE.RegisterDataChangeHandler(HandleDataChanged)
    HandleDataChanged()
end

---Shows a screen if it isn't already showing.
---@param screenId string
function ShowScreen(screenId, ...)
    local screenInfo = screenLookup[screenId]
    if screenInfo and not screenInfo.IsShowing then
        if screenInfo.Data.ScreenTemplate ~= "" then
            -- Spawn the screen
            screenInfo.Screen = World.SpawnAsset(screenInfo.Data.ScreenTemplate, { parent = SCREEN_CONTAINER })
            screenInfo.Screen.destroyEvent:Connect(HandleScreenDestroyed)
        elseif screenInfo.Screen then
            -- Show the screen
            screenInfo.Screen.visibility = Visibility.FORCE_ON
        end

        if screenInfo.Screen then
            screenInfo.IsShowing = true

            if not IsAnyScreenShowing() then
                lastCursorInteractState = UI.CanCursorInteractWithUI()
                lastCursorVisibility = UI.IsCursorVisible()
            end

            screenInfo.Screen.x = screenInfo.LastScreenX
            screenInfo.Screen.y = screenInfo.LastScreenY

            -- Initialize the screen if possible
            local screenControllerRef = screenInfo.Screen:GetCustomProperty("Controller")
            if screenControllerRef and screenControllerRef.isAssigned then
                local screenController = screenControllerRef:WaitForObject().context
                if screenController and screenController.Initialize then
                    screenController.Initialize(...)
                end
            end

            table.insert(openScreens, 1, screenId)

            UI.SetCanCursorInteractWithUI(screenInfo.Data.ShowCursor)
            UI.SetCursorVisible(screenInfo.Data.ShowCursor)
        end
    else
        warn(string.format("No screen data found for screen id: %s", screenId))
    end
end

---Hides a screen if it is showing.
---@param screenId string
function HideScreen(screenId)
    local screenInfo = screenLookup[screenId]
    if screenInfo and screenInfo.IsShowing then
        screenInfo.LastScreenX = screenInfo.Screen.x
        screenInfo.LastScreenY = screenInfo.Screen.y

        if screenInfo.Data.ScreenTemplate ~= "" then
            -- Destroy the screen
            if Object.IsValid(screenInfo.Screen) then
                screenInfo.Screen:Destroy()
                screenInfo.Screen = nil
            end
        elseif screenInfo.Data.ScreenReference ~= nil then
            -- Hide the screen
            screenInfo.Screen.visibility = Visibility.FORCE_OFF
        end

        screenInfo.IsShowing = false

        for index, openScreenId in ipairs(openScreens) do
            if openScreenId == screenId then
                table.remove(openScreens, index)
                break
            end
        end

        if not IsAnyScreenShowing() then
            UI.SetCanCursorInteractWithUI(lastCursorInteractState)
            UI.SetCursorVisible(lastCursorVisibility)
        end
    end
end

---Returns true if a screen is showing.
---@return boolean
function IsAnyScreenShowing()
    return #openScreens > 0
end

function HandleScreenButtonClicked(button)
    for screenId, screenInfo in pairs(screenLookup) do
        if screenInfo.Data.ScreenToggleButton == button then
            if screenInfo.IsShowing then
                HideScreen(screenId)
            else
                ShowScreen(screenId)
            end
            return
        end
    end
end

---Adds screen data that is loaded after initialization.
function HandleDataChanged()
    if DATABASE.Screens then
        for dataId, data in pairs(DATABASE.Screens) do
            if type(data) == "table" then
                if not screenLookup[dataId] then
                    ---@class ScreenInfo
                    screenLookup[dataId] = {
                        Data = data,
                        Screen = nil,
                        IsShowing = false,
                        LastScreenX = 0,
                        LastScreenY = 0,
                        ButtonListener = nil
                    }

                    if data.ScreenToggleButton then
                        screenLookup[dataId].ButtonListener = data.ScreenToggleButton.clickedEvent:Connect(HandleScreenButtonClicked)
                    end
                end
            end
        end
    end
end

---Cleans up screen state for destroyed screens.
---@param screen CoreObject
function HandleScreenDestroyed(screen)
    for screenId, screenInfo in pairs(screenLookup) do
        if screenInfo.IsShowing and screenInfo.Screen == screen then
            screenInfo.LastScreenX = screen.x
            screenInfo.LastScreenY = screen.y

            screenInfo.IsShowing = false
            screenInfo.Screen = nil

            for index, openScreenId in ipairs(openScreens) do
                if openScreenId == screenId then
                    table.remove(openScreens, index)
                    break
                end
            end

            if not IsAnyScreenShowing() then
                UI.SetCanCursorInteractWithUI(lastCursorInteractState)
                UI.SetCursorVisible(lastCursorVisibility)
            end
        end
    end
end

---Opens or closes a screen if the binding matches its data.
---@param player Player
---@param binding string
function HandleBindingReleased(player, binding)
    for screenId, screenInfo in pairs(screenLookup) do
        if screenInfo.IsShowing and screenInfo.Data.CloseBinding == binding then
            HideScreen(screenId)
        elseif not screenInfo.IsShowing and screenInfo.Data.OpenBinding == binding then
            if screenInfo.Data.OpenScreenParams and #screenInfo.Data.OpenScreenParams > 0 then
                ShowScreen(screenId, table.unpack(screenInfo.Data.OpenScreenParams))
            else
                ShowScreen(screenId)
            end
        end
    end
end

---Shows a screen if it isn't already showing.
---@param screenId string
function HandleShowScreen(screenId, ...)
    local screenInfo = screenLookup[screenId]
    if screenInfo and not screenInfo.IsShowing then
        ShowScreen(screenId, ...)
    end
end

---Hides a screen is it is showing.
---@param screenId string
function HandleHideScreen(screenId)
    local screenInfo = screenLookup[screenId]
    if screenInfo and screenInfo.IsShowing then
        HideScreen(screenId)
    end
end

function HandleSetActiveScreen(screenId)
    for index, openScreenId in ipairs(openScreens) do
        if openScreenId == screenId then
            table.remove(openScreens, index)
            table.insert(openScreens, 1, screenId)
            break
        end
    end
end

function HandleEscapePressed(player, params)
    if IsAnyScreenShowing() then
        params.openPauseMenu = false
        HideScreen(openScreens[1])
    end
end

SetupScreens()

Game.GetLocalPlayer().bindingReleasedEvent:Connect(HandleBindingReleased)

Input.escapeHook:Connect(HandleEscapePressed)

Events.Connect(EVENT_SHOW_SCREEN, HandleShowScreen)
Events.Connect(EVENT_HIDE_SCREEN, HandleHideScreen)
Events.Connect(EVENT_SET_ACTIVE_SCREEN, HandleSetActiveScreen)