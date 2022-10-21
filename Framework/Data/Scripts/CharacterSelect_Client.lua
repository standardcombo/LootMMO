local UISCROLL_PANEL = script:GetCustomProperty('UIScrollPanel'):WaitForObject()
local UICONTAINER = script:GetCustomProperty('UIContainer'):WaitForObject()
local NEW_CHARACTER = script:GetCustomProperty('NewCharacter')
local SELECT_CHARACTER = script:GetCustomProperty('SelectCharacter')
local EASE_UI = require(script:GetCustomProperty('EaseUI'))
local LOCAL_PLAYER = Game.GetLocalPlayer()
local CAMERA = script:GetCustomProperty('Camera'):WaitForObject()

local DataKey = 'Cselect'
local ReturnCall = 'RCcall'

local OpenEvent = 'StartSelect'

local SelectCharacterEvent = 'SelectCharacter'
local NewCharacterEvent = 'NewCharacter'
local DeleteCharacterEvent = 'DeleteCharacter'

local ClientSelectCharacterEvent = 'CSelectCharacter'
local ClientNewCharacterEvent = 'CNewCharacter'
local ClientDeleteCharacterEvent = 'CDeleteCharacter'

local SubmitDeleteCharacter = 'CDeleteSelect'
local AskDeletion = 'CAskDelete'
local DenyDeletion = 'CDenyDelete'

local States = {
    Closed = 1,
    Open = 2,
    AwatingResponce = 3,
    DeletingCharcater = 4
}

local UIState = States.Closed

function SetState(newstate)
    UIState = newstate
end
function IsState(state)
    return UIState == state
end

local CursorStack = _G.CursorStack
local appstate = _G.AppState

local SlotCount = 5
local SpawnedPanels = {}

function ConfirmSelection(id)
    if IsState(States.DeletingCharcater) then
        SetState(States.Open)
        Events.BroadcastToServer(DeleteCharacterEvent, id)
    end
end

function CancelSelection()
    if IsState(States.DeletingCharcater) then
        SetState(States.Open)
    end
end

function DestroyCharacter(id)
    if IsState(States.Open) then
        SetState(States.DeletingCharcater)
        Events.Broadcast(SubmitDeleteCharacter, id)
    end
end

function SelectCharacter(id)
    if IsState(States.Open) then
        SetState(States.AwatingResponce)
        Events.BroadcastToServer(SelectCharacterEvent, id)
    end
end
function NewCharacter()
    if IsState(States.Open) then
        SetState(States.AwatingResponce)
        Events.BroadcastToServer(NewCharacterEvent)
    end
end
function ClosePanel()
    if IsState(States.Closed) then
        return
    end
    SetState(States.Closed)
    LOCAL_PLAYER:ClearOverrideCamera()
    for i = 1, #SpawnedPanels, 1 do
        EASE_UI.EaseY(SpawnedPanels[i], -400, .2, EASE_UI.EasingEquation.CUBIC)
    end
    SpawnedPanels = {}
    Task.Wait(.2)
    UICONTAINER.visibility = Visibility.FORCE_OFF
    CursorStack.Disable()
    if appstate.GetLocalState() == appstate.CharacterSelection then
        appstate.SetLocalState(appstate.SocialHub)
    end
end

function OpenPanel()
    local CurrentData = LOCAL_PLAYER:GetPrivateNetworkedData(DataKey)
    UICONTAINER.visibility = Visibility.INHERIT
    CursorStack.Enable()
    LOCAL_PLAYER:SetOverrideCamera(CAMERA, 0)
    for i = 1, SlotCount, 1 do
        local NewPanel = nil
        if CurrentData[i] then
            NewPanel = World.SpawnAsset(SELECT_CHARACTER)
            NewPanel.clientUserData.CharacterData = CurrentData[i]
        else
            NewPanel = World.SpawnAsset(NEW_CHARACTER)
        end
        NewPanel.parent = UISCROLL_PANEL
        NewPanel.y = -400
        table.insert(SpawnedPanels, NewPanel)
        EASE_UI.EaseY(NewPanel, (i - 1) * 200 + 50, .2, EASE_UI.EasingEquation.CUBIC)
        Task.Wait(.03)
    end
    Task.Wait(.2)
    SetState(States.Open)
end

function ReturnCallFunc()
    if IsState(States.AwatingResponce) then
        ClosePanel()
    end
end
function Refresh()
    if IsState(States.Closed) then
        return
    end
    local CurrentData = LOCAL_PLAYER:GetPrivateNetworkedData(DataKey)
    for i = 1, #SpawnedPanels, 1 do
        local currentPanel = SpawnedPanels[i]
        if currentPanel then
            local position = Vector2.New(currentPanel.x, currentPanel.y)
            currentPanel:Destroy()
            local NewPanel
            if CurrentData[i] then
                NewPanel = World.SpawnAsset(SELECT_CHARACTER)
                NewPanel.clientUserData.CharacterData = CurrentData[i]
            else
                NewPanel = World.SpawnAsset(NEW_CHARACTER)
            end
            NewPanel.parent = UISCROLL_PANEL
            NewPanel.x = position.x
            NewPanel.y = position.y
            SpawnedPanels[i] = NewPanel
        end
    end
end

Events.Connect(OpenEvent, OpenPanel)
Events.Connect(ClientSelectCharacterEvent, SelectCharacter)
Events.Connect(ClientNewCharacterEvent, NewCharacter)
Events.Connect(ClientDeleteCharacterEvent, DestroyCharacter)
Events.Connect(ReturnCall, ReturnCallFunc)
Events.Connect(AskDeletion, ConfirmSelection)
Events.Connect(DenyDeletion, CancelSelection)

Events.Connect(
    'AppState.Enter',
    function(player, newState, prevPlayerState)
        if newState == appstate.CharacterSelection then
            OpenPanel()
        end
    end
)
Events.Connect(
    'AppState.Exit',
    function(player, newState, prevPlayerState)
        if newState == appstate.CharacterSelection then
            ClosePanel()
        end
    end
)
LOCAL_PLAYER.privateNetworkedDataChangedEvent:Connect(Refresh)
