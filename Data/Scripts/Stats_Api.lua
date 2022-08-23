while not _G['CharacterEquipAPI'] do
    Task.Wait()
end
local EAPI = _G['CharacterEquipAPI']
local API = {}
_G['Loot.Stats'] = API

function API.GetStats(player)
    if player and player.IsA and player:IsA('Player') then
        local character = EAPI.GetCurrentCharacter(player)
        if not character then
            return {}
        end
        local stats = character:GetComponent('Stats')
        if stats then
            return stats:GetTempStats()
        end
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
