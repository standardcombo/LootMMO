-- Custom
local TEXAS_POKER_CLIENT_API = require(script:GetCustomProperty('TexasPoker_Client_API'))
local TEXAS_HOLDEM_EVENTS = require(script:GetCustomProperty('TexasHoldem_Events'))
local TEXAS_POKER_STRENGTH_RANK = require(script:GetCustomProperty('TexasPoker_Strength_Rank'))
local TEXAS_POKER_ENUMS = require(script:GetCustomProperty('TexasPoker_Enums'))
local TEXAS_POKER_EVALUATOR_ONLINE = require(script:GetCustomProperty('TexasPoker_EvaluatorOnline'))

local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local WIN_BAR = script:GetCustomProperty('WinBar'):WaitForObject()
local TIE_BAR = script:GetCustomProperty('TieBar'):WaitForObject()
local RANK_NAME = script:GetCustomProperty('RankName'):WaitForObject()

local CURRENT_HAND_RANK_CONTAINER = script:GetCustomProperty('Current_Hand_Rank_Container'):WaitForObject()
local TurnUpdates = {
    [TEXAS_POKER_ENUMS.rounds.firstBetting] = true,
    [TEXAS_POKER_ENUMS.rounds.secondBetting] = true,
    [TEXAS_POKER_ENUMS.rounds.thirdBetting] = true,
    [TEXAS_POKER_ENUMS.rounds.fourthBetting] = true
}

if TEXAS_POKER_CLIENT_API.isPlaying() then
    ROOT.visibility = Visibility.INHERIT
end
local function UpdateVisability(isOn)
    if TEXAS_POKER_CLIENT_API.isPlaying() then
        ROOT.visibility = Visibility.INHERIT
    else
        ROOT.visibility = Visibility.FORCE_OFF
    end
end
local function UpdateHand(_, data)
    Task.Spawn(
        function()
            if TurnUpdates[data.roundState] then
                local Evaluation, handName = TEXAS_POKER_STRENGTH_RANK:UpdateHand(data)
                if Evaluation then
                    local wins = math.floor((Evaluation.wins / Evaluation.total) * 20) / 20
                    local ties = Evaluation.ties / Evaluation.total
                    if Object.IsValid(WIN_BAR) then
                        WIN_BAR.progress = wins
                    end
                    if Object.IsValid(TIE_BAR) then
                        TIE_BAR.progress = wins + ties
                    end
                end
                if Object.IsValid(RANK_NAME) then
                    RANK_NAME.text = TEXAS_POKER_ENUMS.rankingNames[handName] or ''
                end
            end
        end,
        1
    )
end

local TPEvents = {
    TEXAS_HOLDEM_EVENTS.stateChangedEvent:Connect(UpdateHand),
    TEXAS_POKER_CLIENT_API.playingChangedEvent:Connect(UpdateVisability)
}

script.destroyEvent:Connect(
    function()
        for key, value in pairs(TPEvents) do
            value:Disconnect()
        end
    end
)
