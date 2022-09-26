local networkKey = 'Character_Equipped'
while not _G['Character.EquipAPI'] do
    Task.Wait()
end
EApi = _G['Character.EquipAPI']
function UpdateCharacter(player, character)
    local newData = {id = character.id, components = {}}

    for index, component in ipairs(character:GetComponents()) do
        if component.autoNetorked then
            local componentData = component:Serialize()
            local ComponentWrapper = {data = componentData, id = component.id}
            table.insert(newData.components, ComponentWrapper)
        end
    end
    player:SetPrivateNetworkedData(networkKey, newData)
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

    --Temp force syncing
    pcall(
        function()
            local progression = character:GetComponent('Progression')
            local points = character:GetComponent('Points')
            local stats = character:GetComponents('Stats')
            local function Update()
                UpdateCharacter(player, character)
            end
            stats.statsUpdatedEvent:Connect(Update)
            progression.progressionUpdated:Connect(Update)
            points.pointChangedEvent:Connect(Update)
        end
    )
end

EApi.playerEquippedEvent:Connect(EquipCharacter)
EApi.playerUnequippedEvent:Connect(UnequipCharacter)
