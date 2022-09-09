local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local DELETE = script:GetCustomProperty('Delete'):WaitForObject()
local SELECT = script:GetCustomProperty('Select'):WaitForObject()
local LEVEL = script:GetCustomProperty('Level'):WaitForObject()
local CHARACTER_ID = script:GetCustomProperty('CharacterID'):WaitForObject()
local SUB_CLASS = script:GetCustomProperty('SubClass'):WaitForObject()
local LAST_PLAYED = script:GetCustomProperty('LastPlayed'):WaitForObject()

local ClientSelectCharacterEvent = 'CSelectCharacter' 
local ClientDeleteCharacterEvent = 'CDeleteCharacter'
while not ROOT.clientUserData.CharacterData do
    Task.Wait()
end
local data = ROOT.clientUserData.CharacterData
LEVEL.text = string.format('Level: %s', tostring(data.level))
CHARACTER_ID.text = string.format('Character ID: %s', tostring(data.id))
SUB_CLASS.text = string.format('Sub Class: %s', tostring(data.class))
local FormatedDate = DateTime.FromIsoString(data.lastPlayed)
LAST_PLAYED.text = string.format('Last Played: %d/%d/%d', FormatedDate.month, FormatedDate.day, FormatedDate.year)
function SelectCharacter()
    Events.Broadcast(ClientSelectCharacterEvent, data.id)
end

function Delete()
    Events.Broadcast(ClientDeleteCharacterEvent, data.id)
end

SELECT.pressedEvent:Connect(SelectCharacter)
DELETE.releasedEvent:Connect(Delete)
