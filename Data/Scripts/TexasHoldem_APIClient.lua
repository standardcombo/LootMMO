local API = {}
function API.Fold()
    Events.BroadcastToServer('TexasPoker_Fold')
end

function API.Raise(amount)
    Events.BroadcastToServer('TexasPoker_Raise', amount)
end

function API.MinRaise(amount)
    Events.BroadcastToServer('TexasPoker_Raise', amount)
end
function API.Call()
    Events.BroadcastToServer('TexasPoker_Call')
end

function API.Leave()
    Events.BroadcastToServer('TexasPoker_LeaveGame')
end

function API.Join(gameid, value)
    Events.BroadcastToServer('TexasPoker_LeaveGame', gameid, value)
end
function API.ShowCards()
    Events.BroadcastToServer('TexasPoker_ShowCard')
end

Events.Connect('TexasPoker_ShowCard', API.ShowCards)
return API
