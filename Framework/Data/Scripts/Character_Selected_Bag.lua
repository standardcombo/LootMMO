Task.Wait()
EquipApi = _G['Character.EquipAPI']
local items = _G.Items

function BootUpPlayerBag(Character, player)
	local selectedbag = player.serverUserData.currentBag
	if Character and selectedbag then
		local inventory = Character:GetComponent('Inventory')
		for key, Item in pairs(selectedbag.items) do
			local name = Item.name
			local entry = items.GetDefinition(name, true)
			if entry then
				local item = entry['itemAsset']
				if item then
					local newitem = World.SpawnAsset(item)
					newitem:SetCustomProperty('IsBag', true)
					newitem:SetCustomProperty('Greatness', Item.greatness)
					newitem:SetCustomProperty('Order', Item.order or '')
					newitem:SetCustomProperty('BagKey', CoreString.Join("|", selectedbag.collection, selectedbag.tokenId) or '')
					inventory:GetInventory():PickUpItem(newitem)
				else
					warn(item, ", No item found " .. Item.name)
				end
			end
		end
	end
end

EquipApi.playerEquippedEvent:Connect(BootUpPlayerBag)
