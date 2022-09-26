while not _G['Character.EquipAPI'] do
    Task.Wait()
end
local CSave = _G['Character.SaveApi']
local EAPI = _G['Character.EquipAPI']

local CHARACTERCONSTUCT = _G['Character.Contsructor']
local ReturnCall = 'RCcall'
local SelectCharacterEvent = 'SelectCharacter'
local NewCharacterEvent = 'NewCharacter'
local DeleteCharacterEvent = 'DeleteCharacter'

local DataKey = 'Cselect'

function UpdatePlayerData(player)
    local playercharacters = CSave.GetSavedPlayerCharacterData(player)
    local SortCharacterData = {}
    for index, data in ipairs(playercharacters) do
        local newChar = CHARACTERCONSTUCT.NewMicroCharacter()
        newChar:Deserialize(data)
        local Level = newChar:GetComponent('Level')
        local Class = 'None'
        for key, value in pairs(data.components) do
            if value.id == 'Class' then
                Class = value.data
                break
            end
        end

        table.insert(
            SortCharacterData,
            {
                lastPlayed = newChar.lastPlayed,
                level = Level:GetLevel(),
                id = newChar.id,
                class = Class
            }
        )
    end

    table.sort(
        SortCharacterData,
        function(a, b)
            return a.lastPlayed.secondsSinceEpoch > b.lastPlayed.secondsSinceEpoch
        end
    )

    for key, value in pairs(SortCharacterData) do
        value.lastPlayed = value.lastPlayed:ToIsoString()
    end

    player:SetPrivateNetworkedData(DataKey, SortCharacterData)
end

function PlayerJoined(player)
    UpdatePlayerData(player)
end

function Acknowledge(player)
    Events.BroadcastToPlayer(player, ReturnCall)
end

local function Save(character, player)
    if not (character and player) then
        return
    end
    if not character.autoSave == true then
        return
    end
    local level = character:GetComponent('Level') 
    character.lastPlayed = DateTime.CurrentTime()
    CSave.SavePlayerCharacter(player, character)
    UpdatePlayerData(player)
end
function SelectCharacter(player, characterId)
    local playercharacters = CSave.GetSavedPlayerCharacterData(player)
    for index, value in ipairs(playercharacters) do
        if value.id == characterId then
            local newCharacter = CHARACTERCONSTUCT.NewCharacter()
            newCharacter:Deserialize(value)
            newCharacter:SetOwner(player)
            newCharacter.autoSave = true
            newCharacter.removeOwnerEvent:Connect(Save)
            local class = newCharacter:GetComponent('Class')
            if class then
                class:EquipOwner()
            end
            Acknowledge(player)
            return
        end
    end
end

function NewCharacter(player)
    assert(player)
    local currentCharacter = CHARACTERCONSTUCT.NewCharacter()
    currentCharacter:SetOwner(player)
    currentCharacter.autoSave = true
    currentCharacter.removeOwnerEvent:Connect(Save)
    Acknowledge(player)
    UpdatePlayerData(player)
end

function DeleteCharacter(player, characterId)
    CSave.DeleteSavedPlayerCharacter(player, characterId)
    UpdatePlayerData(player)
end

function AutoSave(player)
    local character = EAPI.GetCurrentCharacter(player)
    if character and character.autoSave then 
        Save(character, player)
        character:Destroy()
    end 
end

for key, player in pairs(Game.GetPlayers()) do
    PlayerJoined(player)
end

Game.playerJoinedEvent:Connect(PlayerJoined)
Game.playerLeftEvent:Connect(AutoSave)

Events.ConnectForPlayer(SelectCharacterEvent, SelectCharacter)
Events.ConnectForPlayer(NewCharacterEvent, NewCharacter)
Events.ConnectForPlayer(DeleteCharacterEvent, DeleteCharacter)
Events.Connect(NewCharacterEvent.."S", NewCharacter)
