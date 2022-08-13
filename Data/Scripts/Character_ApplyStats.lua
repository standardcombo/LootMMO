while not _G['CharacterAPI'] do
    Task.Wait()
end

EApi = _G['CharacterAPI']

local function playerEquipped(character, player)
    local stats = character:GetComponent('Stats')
    stats:ResetTempStats()
    if not player then
        return
    end
    if stats then
        player.maxHitPoints = stats:GetTempStat('H') 
        return
    end
    player.maxHitPoints = 100 
end

EApi.playerEquipped:Connect(playerEquipped)
