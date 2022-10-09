local Pkey = 'Cpot'

while not _G['Character.EquipAPI'] do
	Task.Wait()
end

local EquipAPI = _G['Character.EquipAPI']

function UpdatedEvent(potion, player)
	if not Object.IsValid(player) then
		return
	end
	local serialized = potion:Serialize()
	player:SetPrivateNetworkedData(Pkey, serialized)
end

function PlayerEquipped(character, player)
	if not Object.IsValid(player) then
		return
	end
	local potion = character:GetComponent('Potions')
	potion.potionChangedEvent:Connect(
		function()
			UpdatedEvent(potion, player)
		end
	)
	UpdatedEvent(potion, player)
end

EquipAPI.playerEquippedEvent:Connect(PlayerEquipped)
