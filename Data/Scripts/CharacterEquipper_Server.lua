local networkKey = 'Character_Equipped'
while not _G['CharacterAPI'] do
    Task.Wait()
end
EApi = _G['CharacterAPI']
function UpdateCharacter(player, character)
    player:SetPrivateNetworkedData(networkKey, character:Serialize())
end

function UnequipCharacter(character, player) 
    if not Object.IsValid(player) then
        return
    end
    player:SetPrivateNetworkedData(networkKey, nil)
end

function EquipCharacter(character, player)
    if not player:IsA('Player') then
        return
    end
    UnequipCharacter(player)
    UpdateCharacter(player, character)
end

EApi.playerEquipped:Connect(EquipCharacter)
EApi.playerUnequipped:Connect(UnequipCharacter)
