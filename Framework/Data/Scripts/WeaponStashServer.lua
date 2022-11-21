local function Collect(player)
    if player:GetResource("WeaponStash") == 1 then return end
    player:SetResource("WeaponStash", 1)
    local newTask = Task.Spawn(function ()
        _G.RewardsAdapter.AddItem(player, "Short Sword")
        Task.Wait(0.5)
        _G.RewardsAdapter.AddItem(player, "Short Sword")
        Task.Wait(0.5)
        _G.RewardsAdapter.AddItem(player, "Short Sword")
        Task.Wait(0.5)
        _G.RewardsAdapter.AddItem(player, "Short Sword")
        Task.Wait(0.5)
        _G.RewardsAdapter.AddItem(player, "Short Sword")
    end)
end

local function PlayerJoined(player)
    local data = Storage.GetPlayerData(player)
    local stashData = data.stash
    if stashData ~= nil then
            player:SetResource("WeaponStash", data.stash)
    end
end

local function PlayerLeft(player)
    local data = Storage.GetPlayerData(player)
    local stashValue = player:GetResource("WeaponStash")
    data.stash = stashValue
    Storage.SetPlayerData(player, data)
end

Game.playerJoinedEvent:Connect(PlayerJoined)
Game.playerLeftEvent:Connect(PlayerLeft)
Events.ConnectForPlayer("StashCollect", Collect)