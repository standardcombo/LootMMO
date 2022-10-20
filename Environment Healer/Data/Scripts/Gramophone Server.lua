local Utils = require(script:GetCustomProperty("Utils"))

function buyTrack(player, trackName, price)
  player:RemoveResource("Money", price)

  table.insert(player.serverUserData["OwnedTracks"], trackName)

  Utils.updatePrivateNetworkedData(player, "OwnedTracks")
end

function playTrack(player, trackName, price)
  player:RemoveResource("Money", price)

  Utils.throttleToAllPlayers("PlayerPlayedTrack", player, trackName)
end

Events.ConnectForPlayer("BuyGramophoneTrack", buyTrack)
Events.ConnectForPlayer("PlayGramophoneTrack", playTrack)
