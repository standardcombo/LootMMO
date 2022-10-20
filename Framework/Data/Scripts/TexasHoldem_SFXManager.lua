local TEXAS_POKER_ENUMS = require(script:GetCustomProperty('TexasPoker_Enums'))
local TEXAS_HOLDEM_EVENTS = require(script:GetCustomProperty("TexasHoldem_Events"))

local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Custom
local ROOT = script:GetCustomProperty('Root'):WaitForObject() ---@type UIContainer
local CALL = script:GetCustomProperty('Call')
local FOLD = script:GetCustomProperty('Fold')
local CASH_OUT = script:GetCustomProperty('Cash_Out')
local ALL_IN_SFX = script:GetCustomProperty('All_In_SFX')
local TURN_SFX = script:GetCustomProperty('Turn_SFX')

local RAISE = script:GetCustomProperty('Raise')
local BUTTON_PRESSED = script:GetCustomProperty('Button_Pressed')
local BUTTON_RELEASE = script:GetCustomProperty('Button_Release')

local TP_Client = TEXAS_HOLDEM_EVENTS

function PlayerAction(player, action, data)
    local actionTable = {
        [TEXAS_POKER_ENUMS.playerActions.Raise] = RAISE,
        [TEXAS_POKER_ENUMS.playerActions.Call] = CALL,
        [TEXAS_POKER_ENUMS.playerActions.Check] = CALL,
        [TEXAS_POKER_ENUMS.playerActions.Fold] = FOLD,
        [TEXAS_POKER_ENUMS.playerActions.All_in] = ALL_IN_SFX
    }
    if actionTable[action] then
        World.SpawnAsset(actionTable[action])
    end
end

function TurnChanged(turn, oldturn, data)
    if not data.players then return end 
    if data.players[LOCAL_PLAYER.name] then
        local playerturn = data.players[LOCAL_PLAYER.name].slotNumber
        if turn == playerturn then
            Task.Spawn(function()
            
                Task.Wait(.2)
                World.SpawnAsset(TURN_SFX)
            end )
        end
    end
end

function StateChanged(state)
end

local TP_Events = {
    TP_Client.playerActionChangedEvent:Connect(PlayerAction),
    TP_Client.turnChangeEvent:Connect(TurnChanged),
    TP_Client.stateChangedEvent:Connect(StateChanged)
}
script.destroyEvent:Connect(
    function()
        for key, value in pairs(TP_Events) do
            value:Disconnect()
        end
    end
)
