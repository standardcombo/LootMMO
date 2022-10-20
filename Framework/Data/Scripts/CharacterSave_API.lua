local savekeys = _G['Storagekeys']
local CHARACTER = savekeys.GetKeyFromName('character')
local CHARACTER2 = savekeys.GetKeyFromName('character2')
assert(CHARACTER)
assert(CHARACTER2)

local API = {}
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

		Storage.SetSharedPlayerData(CHARACTER, player, { characters[1], characters[2], characters[3] })
		Storage.SetSharedPlayerData(CHARACTER2, player, { characters[4], characters[5], characters[6] })
	end
end

function API.DeleteSavedPlayerCharacter(player, characterid)
	assert(Environment.IsServer(), 'Server Only Command')
	local characters = API.GetSavedPlayerCharacterData(player)
	for index, value in ipairs(characters) do
		if value.id == characterid then
			table.remove(characters, index)
			Storage.SetSharedPlayerData(CHARACTER, player, { characters[1], characters[2], characters[3] })
			Storage.SetSharedPlayerData(CHARACTER2, player, { characters[4], characters[5], characters[6] })
			break
		end
	end
end

_G['Character.SaveApi'] = API
return API
