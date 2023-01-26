Task.Wait()
EquipApi = _G['Character.EquipAPI']
local items = _G.Items

function BootUpPlayerBag(Character, player)
	local selectedbag = player.serverUserData.currentBag
	if Character and selectedbag then
		local inventory = Character:GetComponent('Inventory'):GetInventory()
		local bagKey = CoreString.Join("|", selectedbag.collection, selectedbag.tokenId)
		local playerOwnsBag = (player.serverUserData.ownedBagKeys[bagKey] ~= nil)
		local saveData = _G["Crafting.SaveNFT"].Load(player)

		for key, Item in pairs(selectedbag.items) do
			local itemId = Item.name
			local entry = items.GetDefinition(itemId, true)
			if entry then
				local itemAsset = entry['itemAsset']
				if itemAsset then
					local greatness = Item.greatness
					if saveData[bagKey] and saveData[bagKey][itemId] then
						greatness = saveData[bagKey][itemId]
					end
					local newitem = World.SpawnAsset(itemAsset)
					newitem:SetCustomProperty("IsBag", true)
					newitem:SetCustomProperty("Greatness", greatness)
					newitem:SetCustomProperty("PlayerOwnsBag", playerOwnsBag)
					newitem:SetCustomProperty("Order", Item.order or '')
					newitem:SetCustomProperty("BagKey", bagKey)
					inventory:PickUpItem(newitem)
				else
					warn(itemAsset, ", No item found " .. itemId)
				end
			end
		end
	end
end

EquipApi.playerEquippedEvent:Connect(BootUpPlayerBag)
