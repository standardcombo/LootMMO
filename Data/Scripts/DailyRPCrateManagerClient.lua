-- Internal custom properties
local API = require(script:GetCustomProperty("API"))
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local REWARDS_LIST = script:GetCustomProperty("RewardsList"):WaitForObject()

-- Exposed custom properties
local DAY_SECONDS = ROOT:GetCustomProperty("DaySeconds") or 72000
local SOCIAL_BONUS_MAX_PER_DAY = ROOT:GetCustomProperty("SocialBonusMaxPerDay")

-- Constant variable
local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Rewards list and table variables
local rawRewardsList = API.GenerateTableFromChildren(REWARDS_LIST)
local rewardsList = API.GenerateTableFromChildren(REWARDS_LIST)

for index, value in ipairs(rewardsList) do
    if value.IsNewUser then
        table.remove(rewardsList, index)
    end
end

-- Internal variables
local lastClientTime = time()
local isReadyToClaim = false

local lastTime = 0
local lastOsTime = 0

function Tick()
    -- Sends event if the daily reward is ready or not
    if not isReadyToClaim and GetProgress() >= DAY_SECONDS then
        isReadyToClaim = true
        Events.Broadcast("DailyRPCrateAvailable", isReadyToClaim)
    elseif isReadyToClaim and GetProgress() < DAY_SECONDS then
        isReadyToClaim = false
        Events.Broadcast("DailyRPCrateAvailable", isReadyToClaim)
    end
end

---Returns the loot table
---@return table
function GetLootTable()
    return rewardsList
end

---Returns rewards list
---@return table
function GetRewardsList()
    return rawRewardsList
end

---Whether or not the daily reward ready to be claimed
---@return boolean
function IsReadyToClaim()
    return isReadyToClaim
end

---Get max social bonus count property
---@return number
function GetMaxSocialBonusCount()
    return SOCIAL_BONUS_MAX_PER_DAY
end

---Returns the time that passed since last time player claimed the reward
---@return number
function GetProgress()
    lastTime = LOCAL_PLAYER:GetResource(API.LAST_TIME_RESOURCE)
    lastOsTime = LOCAL_PLAYER:GetResource(API.CRATE_SERVER_TIME_RESOURCE)

    return lastOsTime - lastTime + (time() - lastClientTime)
end

-- float GetRemainingTime()
-- Returns the remaining time that's left for player to claim the reward
function GetRemainingTime()
    return CoreMath.Clamp(DAY_SECONDS - GetProgress(), 0, DAY_SECONDS)
end

-- nil GetRemainingTime()
-- Update the tracking for the last client time
function UpdateClientTime()
    lastClientTime = time()
end

---Attempt to tell server to draw the loot table for local player
---Server will send back an event to listen to
function TryDrawLootCrate(id)
    local result = Events.BroadcastToServer("TryDrawLootCrate", id)

    while result ~= BroadcastEventResultCode.SUCCESS do
        result = Events.BroadcastToServer("TryDrawLootCrate", id)
        Task.Wait()
    end
end

---Tell server to grant tis local player the reward
function ReadyToGrant()
    local result = Events.BroadcastToServer("ReadyCrateGrantRP")

    while result ~= BroadcastEventResultCode.SUCCESS do
        result = Events.BroadcastToServer("ReadyCrateGrantRP")
    end

    UpdateClientTime()
end

-- Initiliaze
local functionTable = {}
functionTable.GetProgress = GetProgress
functionTable.GetRewardsList = GetRewardsList
functionTable.GetRemainingTime = GetRemainingTime
functionTable.GetLootTable = GetLootTable
functionTable.IsReadyToClaim = IsReadyToClaim
functionTable.UpdateClientTime = UpdateClientTime
functionTable.TryDrawLootCrate = TryDrawLootCrate
functionTable.ReadyToGrant = ReadyToGrant
functionTable.GetMaxSocialBonusCount = GetMaxSocialBonusCount

API.Register(functionTable)