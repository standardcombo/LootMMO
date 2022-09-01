-- Internal custom properties
local API = require(script:GetCustomProperty("API"))
local STORAGE_LIBRARY = require(script:GetCustomProperty("StorageLibrary"))
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local REWARDS_LIST = script:GetCustomProperty("RewardsList"):WaitForObject()

-- User exposed properties
local DAY_SECONDS = ROOT:GetCustomProperty("DaySeconds") or 72000
local SOCIAL_BONUS_SECONDS = ROOT:GetCustomProperty("SocialBonusSeconds") or 72000
local SOCIAL_BONUS_MAX_PER_DAY = ROOT:GetCustomProperty("SocialBonusMaxPerDay")

-- Rewards list and table variables
local rewardsList = API.GenerateTableFromChildren(REWARDS_LIST)
local newUserRewardInfo = {}

for index, value in ipairs(rewardsList) do
    if value.IsNewUser then
        newUserRewardInfo = value
        newUserRewardInfo.Index = index
        table.remove(rewardsList, index)
    end
end

local rewardsWeightTable, totalWeight = API.GenerateLootTable(rewardsList)

local playerLootCache = {}

function GetMaxSocialBonusCount()
    return SOCIAL_BONUS_MAX_PER_DAY
end

---Whether or not the daily reward is ready to be claimed
---@return boolean
function IsReadyToClaim(player)
    local lastTime = player:GetResource(API.LAST_TIME_RESOURCE)

    if os.time() - lastTime >= DAY_SECONDS then
        return true
    end
    return false
end

-- int GetLootReward(Player)
-- Get reward index based on weighted table
local function GetLootReward(player)
    if not player or not Object.IsValid(player) then
        warn("Player is invalid to draw loot reward")
        return nil, nil
    end

    local dayIndex = player:GetResource(API.LAST_DAY_RESOURCE)
    local itemIndex = 1

    -- if this is new user, always return new user loot drop
    if dayIndex == 0 then
        itemIndex = newUserRewardInfo.Index
    else
        _, itemIndex = API.GetWeightItem(rewardsWeightTable, totalWeight)
    end

    return itemIndex
end

---Draws a loot from table for the specified player
---@param player Player
local function TryDrawLootCrate(player, id)
    if playerLootCache[player] then
        warn(player.name.." already requested the loot.")
        return
    end

    if not IsReadyToClaim(player) then
        warn(player.name.." is not ready to draw the loot.")
        return
    end

    local rewardIndex = 1

    rewardIndex = GetLootReward(player)
    assert("rewardIndex is invalid to draw loot reward.")

    playerLootCache[player] = rewardIndex
    Events.BroadcastToPlayer(player, "CrateLootDrawResult", rewardIndex, id)
    --print(player.name.." has drawn the loot number "..rewardIndex)
end

--- Tell server to grant player the RP once the client is ready
--- Uses the drawn loot drop to grant to player
---@param player Player
local function ReadyToGrantRP(player)
    assert(Object.IsValid(player), "Player is invalid.")

    -- Check for rewards indexs
    local rewardIndex = playerLootCache[player]
    assert(rewardIndex, "No player loot cache index was found.")

    -- Get the reward info from rewards table
    local rewardInfo = {}
    if rewardIndex == newUserRewardInfo.Index then
        rewardInfo = newUserRewardInfo
    else
        rewardInfo = rewardsList[rewardIndex]
    end
    assert(rewardInfo, "Reward info is invalid.")

    local activityName = "Daily Bonus Reward"
    if rewardIndex == newUserRewardInfo.Index then
        activityName = "Daily Bonus Reward First"
    end

    -- Granting the player rewards
    player:GrantRewardPointsUncapped(rewardInfo.Amount, activityName)
    --print(player.name.." has been granted rewardIndex "..rewardIndex)

    -- Grant social bonus to other players if available
    if rewardInfo.SocialBonus > 0 then
        for _, otherPlayer in ipairs(Game.GetPlayers()) do

            -- Only grant social bonus if player has spawned and haven't reached max social bonus count yet
            local count = otherPlayer:GetResource(API.SOCIAL_COUNT_RESOURCE)
            if otherPlayer ~= player and otherPlayer.isSpawned then
                if count < SOCIAL_BONUS_MAX_PER_DAY then
                    otherPlayer:GrantRewardPointsUncapped(rewardInfo.SocialBonus, "Reward Point Bonus")
                    --print(otherPlayer.name.." "..tostring(rewardInfo.SocialBonus))
                end
                UpdateSocialBonus(otherPlayer, true)
            end

        end
    end

    -- Broadcast to feedback script to handle displaying chat messages
    Events.Broadcast("DailyRPBonusGranted", player, rewardInfo)

    -- Remember the day number
    local dayIndex = player:GetResource(API.LAST_DAY_RESOURCE)
    player:SetResource(API.LAST_DAY_RESOURCE, dayIndex + 1)

    -- Save the os and client time information on player resource
    player:SetResource(API.LAST_TIME_RESOURCE, os.time())
    player:SetResource(API.CRATE_SERVER_TIME_RESOURCE, os.time())

    UpdateDataFromResource(player)

    -- Clear loot draw infomration
    playerLootCache[player] = nil
end

function UpdateDataFromResource(player)
    local playerData = STORAGE_LIBRARY.GetPlayerData(player)

    playerData.dailyRewardsCrateData.lastDay = player:GetResource(API.LAST_DAY_RESOURCE)
    playerData.dailyRewardsCrateData.lastTime = player:GetResource(API.LAST_TIME_RESOURCE)

    STORAGE_LIBRARY.SetPlayerData(player, playerData)
end

function UpdateResources(player)
    local playerData = STORAGE_LIBRARY.GetPlayerData(player)
    player:SetResource(API.LAST_DAY_RESOURCE, playerData.dailyRewardsCrateData.lastDay)
    player:SetResource(API.LAST_TIME_RESOURCE, playerData.dailyRewardsCrateData.lastTime)

    player:SetResource(API.CRATE_SERVER_TIME_RESOURCE, os.time())

    player:SetResource(API.SOCIAL_COUNT_RESOURCE, playerData.dailyRewardsCrateData.socialCount)
    player:SetResource(API.LAST_SOCIAL_TIME_RESOURCE, playerData.dailyRewardsCrateData.lastSocialTime)
end

---Updates the social bonus resources and data on player.
---Optinally set to increment the social bonus count.
---@param player Player
---@param shouldIncrement boolean
function UpdateSocialBonus(player, shouldIncrement)
    local count = player:GetResource(API.SOCIAL_COUNT_RESOURCE)
    local lastTime = player:GetResource(API.LAST_SOCIAL_TIME_RESOURCE)

    local progress = os.time() - lastTime

    if progress > SOCIAL_BONUS_SECONDS then
        player:SetResource(API.SOCIAL_COUNT_RESOURCE, 0)
        player:SetResource(API.LAST_SOCIAL_TIME_RESOURCE, os.time())

        count = 0
        lastTime = os.time()
    end

    if shouldIncrement and count <= SOCIAL_BONUS_MAX_PER_DAY then
        count = count + 1
        player:SetResource(API.SOCIAL_COUNT_RESOURCE, count)
    end

    local playerData = STORAGE_LIBRARY.GetPlayerData(player)

    playerData.dailyRewardsCrateData.socialCount = count
    playerData.dailyRewardsCrateData.lastSocialTime = lastTime

    --print(player.name.." count "..tostring(count))

    STORAGE_LIBRARY.SetPlayerData(player, playerData)
end

function Init(player)
    local playerData = STORAGE_LIBRARY.GetPlayerData(player)

    if playerData.dailyRewardsCrateData == nil then
        playerData.dailyRewardsCrateData = {
            lastDay = 0,
            lastTime = 0,
            socialCount = 0,
            lastSocialTime = 0,
        }
        STORAGE_LIBRARY.SetPlayerData(player, playerData)
    end

    if playerData.dailyRewardsCrateData.socialCount == nil then
        playerData.dailyRewardsCrateData.socialCount = 0
        playerData.dailyRewardsCrateData.lastSocialTime = 0
    end

    UpdateResources(player)
    UpdateSocialBonus(player)
end

---If player still has unclaimed loot, then grant them when they leave the game
---@param player Player
function ClearPlayerLootCache(player)
    if playerLootCache[player] ~= nil then
        ReadyToGrantRP(player)
    end
end

-- Intialize
Game.playerJoinedEvent:Connect(Init)
Game.playerLeftEvent:Connect(ClearPlayerLootCache)

Events.ConnectForPlayer("TryDrawLootCrate", TryDrawLootCrate)
Events.ConnectForPlayer("ReadyCrateGrantRP", ReadyToGrantRP)

-- Debugging only, uncomment for testing from start
Events.Connect("DebugCrateReset", function(player)
    local playerData = STORAGE_LIBRARY.GetPlayerData(player)
    playerData.dailyRewardsCrateData = {
        lastDay = 0,
        lastTime = 0,
        socialCount = 0,
        lastSocialTime = 0,
    }
    STORAGE_LIBRARY.SetPlayerData(player, playerData)

    UpdateResources(player)
    UpdateSocialBonus(player)
end)

local functionTable = {}
functionTable.GetMaxSocialBonusCount = GetMaxSocialBonusCount

API.Register(functionTable)