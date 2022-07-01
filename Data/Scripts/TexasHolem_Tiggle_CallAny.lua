local TexasPoker_APIClient = require(script:GetCustomProperty('TexasPoker_APIClient'))
local TexasPoker_Enums = require(script:GetCustomProperty('TexasPoker_Enums'))
local TEXAS_HOLDEM_EVENTS = require(script:GetCustomProperty('TexasHoldem_Events'))

local Root = script:GetCustomProperty('Root'):WaitForObject()
local Button = script:GetCustomProperty('CheckBox'):WaitForObject()
local LOCAL_PLAYER = Game.GetLocalPlayer()

local oldData

while not Button.clientUserData.CheckBox do
    Task.Wait()
end

local CheckBox = Button.clientUserData.CheckBox

local TP_Client = TEXAS_HOLDEM_EVENTS
function Uncheck()
    CheckBox:SetToggle(false)
end

function UpdateCallText(data)
    if
        (data.players[LOCAL_PLAYER.name] or {}) and
            (data.players[LOCAL_PLAYER.name] or {}).state == TexasPoker_Enums.PlayerStates.Fold
     then
        return
    end

    oldData = data
end

function TurnCall(turn, _, data)
    if not data.players then
        return
    end
    if (data.players[LOCAL_PLAYER.name] or {}).slotNumber == turn then
        if CheckBox:GetToggle() then
            TexasPoker_APIClient.Call()
        end
    end
end

function Call(_, data)
    if (data.players[LOCAL_PLAYER.name] or {}).slotNumber == data.turn then
        if CheckBox:GetToggle() then
            TexasPoker_APIClient.Call()
        end
    end
end

local function ToggleUncheck(Box)
    if Box == CheckBox then
        return
    end
    Uncheck()
end

local TP_Events = {
    TP_Client.updateEvent:Connect(UpdateCallText),
    TP_Client.turnChangeEvent:Connect(TurnCall),
    TP_Client.stateChangedEvent:Connect(Call),
    TP_Client.newGameEvent:Connect(Uncheck),
    TP_Client.gameEndEvent:Connect(Uncheck),
    TP_Client.preMoveChangedEvent:Connect(ToggleUncheck)
}

script.destroyEvent:Connect(
    function()
        for key, value in pairs(TP_Events) do
            value:Disconnect()
        end
    end
)

CheckBox.changedEvent:Connect(
    function(value)
        if value then
            TP_Client.preMoveChangedEvent:Trigger(CheckBox)
        end
        if value and oldData and (oldData.players[LOCAL_PLAYER.name] or {}).slotNumber == oldData.turn then
            TexasPoker_APIClient.Call()
        end
    end
)
