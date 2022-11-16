function ChangeChatState(player, chatID, chatState)
    player:SetResource(chatID, chatState)
end

Events.ConnectForPlayer("ChangeChatState", ChangeChatState)