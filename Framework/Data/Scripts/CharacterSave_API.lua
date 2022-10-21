local savekeys = require(script:GetCustomProperty("StorageKeys"))

local CHARACTER = savekeys.GetKey('character')
local CHARACTER2 = savekeys.GetKey('character2')
local ADDITIONAL = savekeys.GetKey('charAdditional')
assert(CHARACTER)
assert(CHARACTER2)
assert(ADDITIONAL)

local API = {}


function API.HasCharacters(player)
	local characters = API.GetSavedPlayerCharacterData(player)
	return #characters > 0
end

function API.GetLastPlayedCharacterId(player)
	local data = Storage.GetSharedPlayerData(ADDITIONAL, player)
	if data.lastPlayedId then
		return data.lastPlayedId
	end
	for key, value in pairs(Storage.GetSharedPlayerData(CHARACTER, player)) do
		return value.id
	end
	return nil
end

function API.GetLastPlayedLootBag(player)
	local data = Storage.GetSharedPlayerData(ADDITIONAL, player)
	if data.lastPlayedBag then
		return data.lastPlayedBag
	end
	return nil
end

function API.SetLastPlayedCharacterId(player, _lastPlayedCharacterId)
	assert(Environment.IsServer(), 'Server Only Command')

	local data = Storage.GetSharedPlayerData(ADDITIONAL, player)
	data.lastPlayedId = _lastPlayedCharacterId
	Storage.SetSharedPlayerData(ADDITIONAL, player, data)
end

function API.SetLastPlayedLootBag(player, serializedBag)
	assert(Environment.IsServer(), 'Server Only Command')

	local data = Storage.GetSharedPlayerData(ADDITIONAL, player)
	data.lastPlayedBag = serializedBag
	Storage.SetSharedPlayerData(ADDITIONAL, player, data)
end

function API.GetSavedPlayerCharacterData(player)
	assert(Environment.IsServer(), 'Server Only Command')
	local characters = {}
	for key, value in pairs(Storage.GetSharedPlayerData(CHARACTER, player)) do
		table.insert(characters, value)
	end
	for key, value in pairs(Storage.GetSharedPlayerData(CHARACTER2, player)) do
		table.insert(characters, value)
	end
	return characters
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

		SetStorage(player, characters)
	end
end

function API.DeleteSavedPlayerCharacter(player, characterid)
	assert(Environment.IsServer(), 'Server Only Command')
	local characters = API.GetSavedPlayerCharacterData(player)
	for index, value in ipairs(characters) do
		if value.id == characterid then
			table.remove(characters, index)
			SetStorage(player, characters)
			break
		end
	end
	
	local additionalStorage = Storage.GetSharedPlayerData(ADDITIONAL, player)
	-- Last played
	if additionalStorage.lastPlayedId == characterid then
		additionalStorage.lastPlayedId = nil
	end
	-- Quest data
	local questDataAllCharacters = additionalStorage
	questDataAllCharacters[characterid] = nil
	API.SaveQuestData(player, questDataAllCharacters)
end

function SetStorage(player, characters)
	Storage.SetSharedPlayerData(CHARACTER, player, { characters[1], characters[2], characters[3] })
	Storage.SetSharedPlayerData(CHARACTER2, player, { characters[4], characters[5], characters[6] })
end


function API.LoadQuestData(player)
	local activeCharacterId = API.GetLastPlayedCharacterId(player)
	if activeCharacterId == "New" or activeCharacterId == nil then
		return nil
	end
	local questDataAllCharacters = Storage.GetSharedPlayerData(ADDITIONAL, player)
	return questDataAllCharacters[activeCharacterId]
end

function API.SaveQuestData(player, data)
	local activeCharacterId = API.GetLastPlayedCharacterId(player)
	local questDataAllCharacters = Storage.GetSharedPlayerData(ADDITIONAL, player)
	questDataAllCharacters[activeCharacterId] = data
	Storage.SetSharedPlayerData(ADDITIONAL, player, questDataAllCharacters)
end


_G['Character.SaveApi'] = API
return API
