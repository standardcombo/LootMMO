local Pkey = 'CStats'

while not _G['Character.EquipAPI'] do
    Task.Wait()
end

local EquipAPI = _G['Character.EquipAPI']

function UpdatedEvent(stats, player) 
    if not Object.IsValid(player) then
        return
    end
    player:SetPrivateNetworkedData(Pkey, stats)
end

function PlayerEquipped(character, player)
    if not Object.IsValid(player) then
        return
    end
    local stat = character:GetComponent('Stats')
    stat.tempStatsUpdatedEvent:Connect(
        function(_, stats)
            UpdatedEvent(stats, player)
        end
    )
end

EquipAPI.playerEquippedEvent:Connect(PlayerEquipped)
