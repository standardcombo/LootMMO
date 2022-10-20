local networkKey = 'Character_Equipped'
while not _G['Character.EquipAPI'] do
	Task.Wait()
end
EApi = _G['Character.EquipAPI']
function UpdateCharacter(player, character)
	local newData = { id = character.id, components = {} }

	for index, component in ipairs(character:GetComponents()) do
		if component.autoNetorked then
			local componentData = component:Serialize()
			local ComponentWrapper = { data = componentData, id = component.id }
			table.insert(newData.components, ComponentWrapper)
		end
	end

	local Inventory = character:GetComponent("Inventory")
	table.insert(newData.components, { data = { invId = Inventory.invId }, id = "Inventory" })

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
	local class = character:GetComponent("Class")
	local points = character:GetComponent("Points")
	local progression = character:GetComponent("Progression")

	local function Update()
		UpdateCharacter(player, character)
	end

	class.classChangedEvent:Connect(Update)
	progression.progressionUpdatedEvent:Connect(Update)
end

EApi.playerEquippedEvent:Connect(EquipCharacter)
EApi.playerUnequippedEvent:Connect(UnequipCharacter)
