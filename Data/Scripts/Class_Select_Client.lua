local MAIN_CLASSES = script:GetCustomProperty('MainClasses'):WaitForObject()
local SubPanel = script:GetCustomProperty('MainClassAcceptPanel'):WaitForObject()

local classMainSelect = 'classMainSelect'
local classOpen = 'classSelectOpen'

local replyCall = 'ClassRply'

local ReturnCodes = {
    Fail = 1,
    Success = 2
}
local Classes = _G['Character.Classes']

local states = {
    Open = 1,
    Closed = 2,
    SelectingMain = 3,
    AwatingResponce = 4
}
local UIState = states.Closed
local lastClass = nil

function SetState(newstate)
    UIState = newstate
end
function IsState(state)
    return UIState == state
end

local function ShowMainPanel()
    MAIN_CLASSES.visibility = Visibility.INHERIT
end

local function HideMainPanel()
    MAIN_CLASSES.visibility = Visibility.FORCE_OFF
end
local function CloseSubPanel()
    SubPanel.visibility = Visibility.FORCE_OFF
end
local function Close()
    SetState(states.Closed)
    HideMainPanel()
    CloseSubPanel()
end

local function Open()
    if not IsState(states.Closed) then
        return
    end
    SetState(states.Open)
    ShowMainPanel()
end

local function SelectMainClass(Class)
    if not IsState(states.Open) then
        return
    end
    lastClass = Class
    local class = Classes.GetClass(Class)
    if class then
        HideMainPanel()
        SubPanel.visibility = Visibility.INHERIT
        SetState(states.SelectingClass)
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
Events.Connect(replyCall, RecieveAccept)
