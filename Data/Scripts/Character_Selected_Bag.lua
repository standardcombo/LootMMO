Task.Wait()
EquipApi = _G['Character.EquipAPI']
local items = _G.Items

function BootUpPlayerBag(Character, player)
	local selectedbag = player.serverUserData.currentBag
	if Character and selectedbag then
		local inventory = Character:GetComponent('Inventory')
		for key, Item in pairs(selectedbag.items) do
			local name = Item.name
			local entry = items.GetDefinition(name)
			if entry then
				local item = entry['itemAsset']
				warn(item, "no item found " .. Item.name)
				if item then
					local newitem = World.SpawnAsset(item)
					newitem:SetCustomProperty('IsBag', true)
					newitem:SetCustomProperty('Greatness', Item.greatness)
					newitem:SetCustomProperty('Order', Item.order or '')
					inventory:GetInventory():PickUpItem(newitem)
				end
			end
		end
	end
end

EquipApi.playerEquippedEvent:Connect(BootUpPlayerBag)
