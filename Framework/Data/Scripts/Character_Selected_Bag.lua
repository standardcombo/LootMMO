local ASYNC_BLOCKCHAIN = require(script:GetCustomProperty('AsyncBlockchain'))
local LOOT_BAG_PARSER = require(script:GetCustomProperty('LootBagParser'))

Task.Wait()
EquipApi = _G['Character.EquipAPI']
local items = _G.Items

function BootUpPlayerBag(Character, player)
	local selectedbag = player.serverUserData.currentBag
	if Character and selectedbag then
		while not player.serverUserData.ownedBagKeys do
			Task.Wait()
			if not Object.IsValid(player) then return end
		end
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


-- List of supported NFT collections, for character select
local COLLECTIONS = {
	LOOT_BAG_PARSER.Collection.Genesis,
	LOOT_BAG_PARSER.Collection.Loot,
	LOOT_BAG_PARSER.Collection.mLoot
}
local function OnPlayerJoined(player)
    player.serverUserData.ownedBagKeys = {}
    for _, id in ipairs(COLLECTIONS) do
        ASYNC_BLOCKCHAIN.GetTokensForPlayer(player, { contractAddress = id }, function(tokens)
            for _, t in ipairs(tokens) do
                local bagKey = CoreString.Join("|", t.contractAddress, t.tokenId)
                player.serverUserData.ownedBagKeys[bagKey] = true
            end
        end)
    end
end
Game.playerJoinedEvent:Connect(OnPlayerJoined)
for _,p in ipairs(Game.GetPlayers()) do
    OnPlayerJoined(p)
end

