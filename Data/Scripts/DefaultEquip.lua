

Game.playerJoinedEvent:Connect(function(player)
    Events.Broadcast("Equipper_Equip", player, "Pyroblast", "1" )
    Events.Broadcast("Equipper_Equip", player, "Teleport", "2" )
    Events.Broadcast("Equipper_Equip", player, "Tornado", "3" )
    Events.Broadcast("Equipper_Equip", player, "Roll", "Shift" )
end )