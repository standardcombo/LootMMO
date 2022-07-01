local TEXAS_POKER_EVALUATOR_ONLINE = require(script:GetCustomProperty('TexasPoker_EvaluatorOnline'))
local TEXAS_HOLDEM_EVENTS = require(script:GetCustomProperty('TexasHoldem_Events'))
local TEXAS_POKER_ENUMS = require(script:GetCustomProperty('TexasPoker_Enums'))
local CardCC_DatabaseApi = require(script:GetCustomProperty('CardCC_DatabaseApi'))
local CARD_CC_DECK_API = require(script:GetCustomProperty('CardCC_DeckAPI'))

local database = CardCC_DatabaseApi.WaitForDatabase('PlayingCard')
database:WaitUntilSetup()
local deck = CARD_CC_DECK_API.New({maxCards = 999})
local cards = database:ReturnAllCards()
for key, value in pairs(cards) do
    deck:Add(value)
end
local LOCALPLAYER = Game.GetLocalPlayer()

local function Evaluate(playerCards, centerCards)
    local strength = TEXAS_POKER_EVALUATOR_ONLINE.GetHandStrength(playerCards, centerCards, deck.inventory)
    return strength
end

local function UpdateHand(data)
    if not data.players[LOCALPLAYER.name] then
        return
    end
    local playerCards = {}
    local centerCards = {}
    for key, card in pairs(data.players[LOCALPLAYER.name].cards) do
        table.insert(playerCards, database:Clone(card))
    end
    for key, card in pairs(data.centerCards) do
        table.insert(centerCards, database:Clone(card))
    end
 
    return Evaluate(playerCards, centerCards)
end

local function RankHand(data)
    if not data.players[LOCALPLAYER.name] then
        return
    end
    local hand = {}
    for key, card in pairs(data.players[LOCALPLAYER.name].cards) do
        table.insert(hand, database:Clone(card))
    end
    for key, card in pairs(data.centerCards) do
        table.insert(hand, database:Clone(card))
    end

    local a, handname, score = TEXAS_POKER_EVALUATOR_ONLINE.EvaluateDeck(hand)
    return handname
end

local RankAPI = {}

function RankAPI:UpdateHand(data)
    return UpdateHand(data), RankHand(data)
end

return RankAPI
