local networkKey = 'Character_Equipped'
while not  _G['Character.EquipAPI'] do
    Task.Wait()
end
EApi =  _G['Character.EquipAPI']
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

EApi.playerEquippedEvent:Connect(EquipCharacter)
EApi.playerUnequippedEvent:Connect(UnequipCharacter)
