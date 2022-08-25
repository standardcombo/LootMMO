while not  _G['Character.EquipAPI'] do
    Task.Wait()
end

EApi =  _G['Character.EquipAPI']

local function playerEquipped(character, player)
    local stats = character:GetComponent('Stats')
    stats:ResetTempStats()
    if not player then
        return
    end
    if stats then
        player.maxHitPoints = stats:GetTempStat('H') + 100
        player.hitPoints = player.maxHitPoints
        return
    end
    player.maxHitPoints = 100
end

EApi.playerEquippedEvent:Connect(playerEquipped)
