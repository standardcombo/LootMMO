local words1 = {
    "GOOD",
    "COOL",
    "KEEP GOING!"
}
local words2 = {
    "NICE",
    "WOW",
    "AWESOME",
}
local words3 = {
    "SPECTACULAR!",
    "AMAZING!",
    "FANTASTIC!"
}

local LOCAL_PLAYER = Game.GetLocalPlayer()

function ShowFlyUpText(message, color)
    Events.Broadcast("SubBannerMessage", message, 1.8, color)
end

function OnEffect(triggerPos, playerPos)
    local distance = (playerPos - triggerPos).size

    if distance < 200 then
        ShowFlyUpText(words3[math.random(1, #words3)], Color.ORANGE)
    elseif distance > 200 and distance < 300 then
        ShowFlyUpText(words2[math.random(1, #words2)], Color.GREEN)
    else
        ShowFlyUpText(words1[math.random(1, #words1)], Color.WHITE)
    end
end

Events.Connect("EffectFlyUpText", OnEffect)