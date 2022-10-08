local Pkey = 'Cpot'
local LOCAL_PLAYER = Game.GetLocalPlayer()

while not _G['Character.EquipAPI'] do
	Task.Wait()
end

local EquipAPI = _G['Character.EquipAPI']

function SetData(potions, data)
	potions:Deserialize(data)
end

function UpdatedEvent(_, key)
	if key == Pkey then
		local character = EquipAPI.GetCurrentCharacter(LOCAL_PLAYER)
		if character then
			local potions = character:GetComponent('Potions')
			local data = LOCAL_PLAYER:GetPrivateNetworkedData(Pkey)
			SetData(potions, data)
		end
	end
end

local function CharacterEquipped(character, player)
	if player == LOCAL_PLAYER then
		UpdatedEvent(_, Pkey)
	end
end

local function CharacterUneipped()


end

LOCAL_PLAYER.privateNetworkedDataChangedEvent:Connect(UpdatedEvent)


EquipAPI.playerEquippedEvent:Connect(CharacterEquipped)
