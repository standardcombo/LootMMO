local API = {}
_G['Loot.Stats'] = API
function API.SetStats(player, stats)
    if Environment.IsClient() then
        error('Server Only Function')
        return
    end
    if player and player.IsA and player:IsA('Player') then
        player:SetPrivateNetworkedData('Loot.Stats', stats)
    end
end
function API.GetStats(player)
    if player and player.IsA and player:IsA('Player') then
        return player:GetPrivateNetworkedData('Loot.Stats') or {}
    end
    return {}
end
function API.GetStat(player, stat)
    if player and player.IsA and player:IsA('Player') then
        local stats = API.GetStats(player)
        return (stats or {})[stat] or 0
    end
    return 0
end
return API
