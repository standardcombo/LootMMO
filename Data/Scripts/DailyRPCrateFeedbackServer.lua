local API = require(script:GetCustomProperty("API"))
local UTIL = require(script:GetCustomProperty("CoreWorldUtilities"))

function OnDailyBonusGranted(player, rewardInfo)
    if rewardInfo.SocialBonus > 0 and rewardInfo.Type ~= "Common" then        
        -- Social Chat Text
        local socialText = string.format("%s has opened a %s Reward of %s RP! To celebrate, you have been awarded with a Celebration Bonus of %s RP!",
                                    player.name, rewardInfo.Type, UTIL.FormatNumber(rewardInfo.Amount), UTIL.FormatNumber(rewardInfo.SocialBonus))

        for _, value in ipairs(Game.GetPlayers()) do
            if value ~= player and value.isSpawned then

                local count = value:GetResource(API.SOCIAL_COUNT_RESOURCE)
                local newText = socialText..string.format(" (%d/%d)", count, API.GetMaxSocialBonusCount())

                if count > API.GetMaxSocialBonusCount() then
                    newText = string.format("%s has opened a %s Reward of %s RP! You have reached maximum Celebration Bonus today.",
                              player.name, rewardInfo.Type, UTIL.FormatNumber(rewardInfo.Amount), UTIL.FormatNumber(rewardInfo.SocialBonus))
                end

                Chat.BroadcastMessage(newText, {players = value})
            end
        end

        -- Send to clients for vfx hookups
        Events.BroadcastToAllPlayers("RPGrantedAllPlayers", player, rewardInfo.Index)

        -- Self Chat Text
        local selfText = string.format("You opened a %s Reward of %s RP! Other players will receive a Celebration Bonus of %s RP!",
        rewardInfo.Type, UTIL.FormatNumber(rewardInfo.Amount), UTIL.FormatNumber(rewardInfo.SocialBonus))

        Chat.BroadcastMessage(selfText, {players = player})
    elseif rewardInfo.IsNewUser then
        -- Self Chat Text for new users
        local selfText = string.format("You opened a %s Reward of %s RP!",
        rewardInfo.Type, UTIL.FormatNumber(rewardInfo.Amount))

        --Events.BroadcastToPlayer(player, "RPGranted", nil, rewardInfo.Amount, rewardInfo.Color)
        Chat.BroadcastMessage(selfText, {players = player})
    else
        --Events.BroadcastToPlayer(player, "RPGranted", nil, rewardInfo.Amount, rewardInfo.Color)
    end
end

Events.Connect("DailyRPBonusGranted", OnDailyBonusGranted)