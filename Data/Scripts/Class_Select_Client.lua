local backEvent = 'classBack'
local acceptEvent = 'classAccept'
local classMainSelect = 'classMainSelect'
local classOpen = 'classSelectOpen'

local classConfirmSelection = 'CCselection'
local replyCall = 'ClassRply'

local ReturnCodes = {
    Fail = 1,
    Success = 2
}

local EASE_UI = require(script:GetCustomProperty('EaseUI'))
local UICONTAINER = script:GetCustomProperty('UIContainer'):WaitForObject()
local MAIN_CLASSES = script:GetCustomProperty('MainClasses'):WaitForObject()
local CLASS_PANEL = script:GetCustomProperty('ClassPanel')

local Classes = _G['Character.Classes']
local CursorStack = _G.CursorStack

local states = {
    Open = 1,
    Closed = 2,
    SelectingMain = 3,
    SelectingClass = 4,
    AwatingResponce = 5
}
local UIState = states.Closed

local SubPanel = nil
local lastClass = nil
function SetState(newstate)
    UIState = newstate
end
function IsState(state)
    return UIState == state
end

local function ShowMainPanel()
    local ScreenWitdth = UI.GetScreenSize()
    EASE_UI.EaseX(MAIN_CLASSES, (ScreenWitdth.x + MAIN_CLASSES.width) / 2, .2, EASE_UI.EasingEquation.CUBIC)
end

local function HideMainPanel()
    EASE_UI.EaseX(MAIN_CLASSES, 0, .2, EASE_UI.EasingEquation.CUBIC)
end
local function CloseSubPanel()
    EASE_UI.EaseX(SubPanel, 0, .2, EASE_UI.EasingEquation.CUBIC)
    Task.Wait(.2)
    SubPanel:Destroy()
end
local function Close()
    SetState(states.Closed)
    HideMainPanel()
    CloseSubPanel()
    CursorStack.Disable()
end

local function Open()
    if not IsState(states.Closed) then
        return
    end
    SetState(states.Open)
    ShowMainPanel()
    CursorStack.Enable()
end

local function SelectMainClass(Class)
    if not IsState(states.Open) then
        return
    end
    lastClass = Class
    local class = Classes.GetClass(Class)
    if class then
        HideMainPanel()
        SubPanel = World.SpawnAsset(CLASS_PANEL)
        SubPanel.clientUserData.class = Class
        SubPanel.parent = UICONTAINER
        Task.Wait()
        local ScreenWitdth = UI.GetScreenSize()
        EASE_UI.EaseX(SubPanel, (ScreenWitdth.x + SubPanel.width) / 2, .2, EASE_UI.EasingEquation.CUBIC)
        SetState(states.SelectingClass)
    end
end

local function Accept()
    if IsState(states.SelectingClass) then
        SetState(states.AwatingResponce)
        Events.BroadcastToServer(classConfirmSelection, lastClass)
    end
end

local function Back()
    if IsState(states.SelectingClass) then
        ShowMainPanel()
        CloseSubPanel()
        SetState(states.Open)
    end
end

local function RecieveAccept()
    if not IsState(states.AwatingResponce) then
        return
    end
    Close()
end

Events.Connect(classOpen, Open)
Events.Connect(classMainSelect, SelectMainClass)
Events.Connect(acceptEvent, Accept)
Events.Connect(backEvent, Back)
Events.Connect(replyCall, RecieveAccept)  
