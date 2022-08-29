local Pkey = 'Cxp'

while not _G['Character.EquipAPI'] do
    Task.Wait()
end

local EquipAPI = _G['Character.EquipAPI']
function UpdatedEvent(xp, player)
    if not Object.IsValid(player) then
        return
    end
    player:SetResource(Pkey, xp)
end

function PlayerEquipped(character, player)
    if not Object.IsValid(player) then
        return
    end
    local level = character:GetComponent('Level')
    level.xpChangedEvent:Connect(
        function(_,xp)
            UpdatedEvent(xp, player)
        end
    )
end

EquipAPI.playerEquippedEvent:Connect(PlayerEquipped)
