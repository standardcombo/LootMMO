local TexasPoker_API = require(script:GetCustomProperty('TexasPoker_API'))

function JoinGame(player, id, value)
    TexasPoker_API.PlayerJoin(id, player, value)
end

function SpectateGame(player, id)
    TexasPoker_API.PlayerSpectate(id, player)
end

function RequestInfo(player, id)
    local info = TexasPoker_API.RequestInfo(id, player)
    Events.BroadcastToPlayer(player, 'Poker_SendInfo', info)
end

function LeaveGame(player)
    TexasPoker_API.PlayerLeave(player)
end

function Raise(player, amount)
    TexasPoker_API.Raise(player, amount)
end

function Call(player)
    TexasPoker_API.Call(player)
end

function Fold(player)
    TexasPoker_API.Fold(player)
end

function ShowCards(player)
    TexasPoker_API.ShowCards(player)
end

Game.playerLeftEvent:Connect(LeaveGame)
Events.ConnectForPlayer('TexasPoker_RequestGameInfo', RequestInfo)
Events.ConnectForPlayer('TexasPoker_JoinGame', JoinGame)
Events.ConnectForPlayer('TexasPoker_LeaveGame', LeaveGame)
Events.ConnectForPlayer('TexasPoker_Fold', Fold)
Events.ConnectForPlayer('TexasPoker_Raise', Raise)
Events.ConnectForPlayer('TexasPoker_Call', Call)
Events.ConnectForPlayer('TexasPoker_Spectate', SpectateGame)
Events.ConnectForPlayer('TexasPoker_ShowCard', ShowCards)
