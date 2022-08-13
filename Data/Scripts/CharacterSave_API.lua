local CHARACTER = script:GetCustomProperty('Character')
local API = {}
function API.GetSavedPlayerCharacterData(player)
    assert(Environment.IsServer(), 'Server Only Command')
    return Storage.GetSharedPlayerData(CHARACTER, player)
end
function API.SavePlayerCharacter(player, character)
    assert(Environment.IsServer(), 'Server Only Command')
    if character.IsA and character:IsA('Character') then
        local characters = API.GetSavedPlayerCharacterData(player)
        local LastSaveExists = false
        for index, value in ipairs(characters) do
            if value.id == character.id then
                characters[index] = character:Serialize()
                LastSaveExists = true
                break
            end
        end
        if not LastSaveExists then
            table.insert(characters, character:Serialize())
        end
        Storage.SetSharedPlayerData(CHARACTER, player, characters)
    end
end
function API.DeleteSavedPlayerCharacter(player, characterid)
    assert(Environment.IsServer(), 'Server Only Command')
    local characters = API.GetSavedPlayerCharacterData(player)
    for index, value in ipairs(characters) do
        if value.id == characterid then
            table.remove(characters, index)
            Storage.SetSharedPlayerData(CHARACTER, player, characters)
            break
        end
    end
end
_G['CharacterSaveApi'] = API
return API
