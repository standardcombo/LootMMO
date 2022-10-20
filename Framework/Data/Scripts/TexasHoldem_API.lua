local TexasPoker_BackEnd = require(script:GetCustomProperty('TexasPoker_BackEnd'))
local CardCC_DeckAPI = require(script:GetCustomProperty('CardCC_DeckAPI'))
local CardCC_DatabaseApi = require(script:GetCustomProperty('CardCC_DatabaseApi'))
local database = CardCC_DatabaseApi.WaitForDatabase('PlayingCard')
local TexasPoker_Settings = require(script:GetCustomProperty('TexasPoker_Settings'))
local TEXAS_HOLDEM_EVENTS = require(script:GetCustomProperty('TexasHoldem_Events'))
local TexasPoker_Enums = require(script:GetCustomProperty('TexasPoker_Enums'))

local RunningGames = {}

while not _G.CC_Util do
    Task.Wait()
end
local luaEvents = _G.CC_Util:WaitForlibrary('Lua Event')
database:WaitUntilSetup()

local api = {
    newGameCreatedEvent = luaEvents.New()
}
function api.FindGame(id)
    return RunningGames[id]
end
function api.NewGame(options)
    options = options or {}
    local newGame = setmetatable({}, {__index = TexasPoker_BackEnd})
    local seed = RandomStream.New()
    newGame.id = options.id or tostring(seed:GetNumber())
    newGame.players = {}
    newGame.spectating = {}
    newGame.centerCards = {}
    newGame.pots = {}
    for key, value in pairs(TexasPoker_Settings) do
        newGame[key] = options[key] or value
    end
    newGame.playerJoinedEvent = luaEvents.New()
    newGame.playerLeftEvent = luaEvents.New()
    newGame.spectateJoinedEvent = luaEvents.New()
    newGame.spectateLeftEvent = luaEvents.New()
    newGame.payOutEvent = luaEvents.New()
    newGame.newGameEvent = luaEvents.New()
    newGame.networkDataEvent = luaEvents.New()
    newGame.playerJoinedEvent = luaEvents.New()
    newGame.roundUpdate = luaEvents.New()
    newGame.deck = CardCC_DeckAPI.New()
    newGame.showingCards = {}
    local deck = database:ReturnAllCards()
    newGame.deck.maxCards = 600
    for index, value in ipairs(deck) do
        local clone = database:Clone(value.id)
        newGame.deck:Add(clone)
    end
    newGame.usableCards = {}
    newGame:NewGame()
    RunningGames[newGame.id] = newGame
    api.newGameCreatedEvent:Trigger(newGame)
    return newGame
end

function api.PlayerInGame(game, player)
    if not game then
        return
    end
    if game.players[player] or game.spectating[player] then
        return true
    end
end

function api.SearchGames(player)
    for key, game in pairs(RunningGames) do
        if api.PlayerInGame(game, player) then
            return game
        end
    end
end

function api.RequestInfo(gameId)
    local game = api.FindGame(gameId)
    if not game then
        return
    end
    return game:RequestInfo()
end

function api.PlayerSpectate(gameId, player)
    local game = api.FindGame(gameId)
    if not game then
        return
    end
    return game:SpectateGame(player)
end

function api.PlayerLeave(player)
    for key, value in pairs(RunningGames) do
        if api.PlayerInGame(value, player) then
            value:PlayerLeave(player)
            return
        end
    end
end
function api.PlayerJoin(gameId, player, value)
    local game = api.FindGame(gameId)
    if not game then
        return
    end
    return game:PlayerJoin(player, value)
end
function api.GameEnd(gameId)
    if RunningGames[gameId] then
        RunningGames[gameId]:GameEnd()
        RunningGames[gameId] = nil
    end
end

function api.MinRaise(player, game)
    game = game or api.SearchGames(player)
    if not game then
        return
    end
    game:Raise(player, game.roundBet)
end

function api.Raise(player, amount, game)
    game = game or api.SearchGames(player)
    if not game then
        return
    end
    game:Raise(player, amount)
end
function api.Fold(player, game)
    game = game or api.SearchGames(player)
    if not game then
        return
    end

    game:Fold(player)
end
function api.Call(player, game)
    game = game or api.SearchGames(player)
    if not game then
        return
    end
    game:Call(player)
end

function api.ShowCards(player)
    local game = api.SearchGames(player)
    if not game then
        return
    end
    game:ShowCards(player)
end

return api
