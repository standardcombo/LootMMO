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

Events.ConnectForPlayer("StashCollect", Collect)