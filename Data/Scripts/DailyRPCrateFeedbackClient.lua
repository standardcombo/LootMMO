local API = require(script:GetCustomProperty("API"))
local UTIL = require(script:GetCustomProperty("CoreWorldUtilities"))

local MESSAGE_BANNER_DURATION = script:GetCustomProperty("MessageBannerDuration")
local FLY_UP_TEXT_DURATION = script:GetCustomProperty("FlyUpTextDuration")
local FAIL_OPEN_COLOR = script:GetCustomProperty("FailOpenColor")
local FAIL_SOUND = script:GetCustomProperty("FailSound"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

function OnCrateOpened(rewardIndex)
    local rewardInfo = API.GetRewardsList()[rewardIndex]
    local message = "Daily Reward"

    if rewardInfo.Type == "Rare" then
        message = "Rare Reward"
    elseif rewardInfo.Type == "Epic" then
        message = "Epic Reward"
    elseif rewardInfo.Type == "Legendary" then
        message = "Legendary Reward"
    end

    Task.Wait(2) -- delay to let Core platform to show the RP bonus effect

    Events.Broadcast("BannerMessage", message, MESSAGE_BANNER_DURATION, rewardInfo.Color,
        string.format("%s RP", UTIL.FormatNumber(rewardInfo.Amount)))
end

function OnFailCrateOpen()
    local message = "Crate Unlocks In\n"..UTIL.ConvertTimeToTimeText(API.GetRemainingTime())
    if LOCAL_PLAYER:GetResource("TutorialComplete") == 0 then
        message = "Complete Tutorial to Access"
    end
    UI.ShowFlyUpText(message, LOCAL_PLAYER:GetWorldPosition(), 
        {color = FAIL_OPEN_COLOR, duration = FLY_UP_TEXT_DURATION, isBig = true})
    FAIL_SOUND:Play()
end

function OnRewardPointGrantedAllPlayers(sourcePlayer, index)
    local rewardInfo = API.GetRewardsList()[index]

    for _, player in ipairs(Game.GetPlayers()) do
        if sourcePlayer ~= player and player.isSpawned then
            if player:GetResource(API.SOCIAL_COUNT_RESOURCE) < API.GetMaxSocialBonusCount() then
                Events.Broadcast("RPGranted", player, rewardInfo.SocialBonus, rewardInfo.Color)
            end
--[[             if player == LOCAL_PLAYER then
                local socialText = string.format("%s has opened a %s Reward of %s RP! To celebrate, you have been awarded with a Celebration Bonus of %s RP!",
                sourcePlayer.name, rewardInfo.Type, UTIL.FormatNumber(rewardInfo.Amount), UTIL.FormatNumber(rewardInfo.SocialBonus))
                
                local count = player:GetResource(API.SOCIAL_COUNT_RESOURCE)
                local newText = socialText..string.format(" (%d/%d)", count, API.GetMaxSocialBonusCount())

                if count > API.GetMaxSocialBonusCount() then
                    newText = string.format("%s has opened a %s Reward of %s RP! You have reached maximum Celebration Bonus today.",
                              player.name, rewardInfo.Type, UTIL.FormatNumber(rewardInfo.Amount), UTIL.FormatNumber(rewardInfo.SocialBonus))
                end
                Chat.LocalMessage(newText)
            end ]]
        elseif sourcePlayer == player then
            --Events.Broadcast("RPGranted", sourcePlayer, rewardInfo.Amount, rewardInfo.Color)
        end
    end
end

Events.Connect("DailyRPCrateOpened", OnCrateOpened)
Events.Connect("DailyRPCrateOpenFail", OnFailCrateOpen)
Events.Connect("RPGrantedAllPlayers", OnRewardPointGrantedAllPlayers)