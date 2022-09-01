local snapPhrases = {
    "Photo Captured!", "Photo Snapped!", "Nice Shot!", "Looking Good!"
}

local spacing = "                  "

function OnPhotoTaken(player)
    if player == Game.GetLocalPlayer() then
        local rand = math.random(#snapPhrases)
        Events.Broadcast("BannerMessage", spacing..snapPhrases[rand]..spacing, 3, Color.ORANGE, "Look at the screens nearby to see your photo!")
    end
    Events.Broadcast("ActivityFeedLine", {activity = player.name.." captured a photo at Photo Booth!", color = Color.ORANGE})
end

Events.Connect("PhotoTaken", OnPhotoTaken)