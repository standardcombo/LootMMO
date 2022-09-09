while not _G['Character.EquipAPI'] do
    Task.Wait()
end

EApi = _G['Character.EquipAPI']

local function playerEquipped(character, player)
    local stats = character:GetComponent('Stats')
    stats:ResetTempStats()
    if not player then
        return
    end
    if stats then
        player.maxHitPoints = stats:GetTempStat('H')
        player.hitPoints = player.maxHitPoints

        return
    end
    player.maxHitPoints = 100
end

local function GoingToTakeDamage(attackData)
    local attacked = attackData.object
    local character = EApi.GetCurrentCharacter(attacked)
    if not character then
        return
    end
    local stats = character:GetComponent('Stats')
    if stats then
        if attackData.damage.amount > 0 then
            local Block = stats:GetTempStat('B')
            attackData.damage.amount = math.max(0, attackData.damage.amount - Block)

            stats:SetTempStat('B', math.max(Block - 1, 0))
        end
    end
end

Events.Connect('CombatWrapAPI.GoingToTakeDamage', GoingToTakeDamage)
EApi.playerEquippedEvent:Connect(playerEquipped)
