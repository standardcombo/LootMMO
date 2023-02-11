local EquipApi       = _G["Character.EquipAPI"]
local CraftingAPI    = _G["Crafting.CraftingAPI"]
local ItemApi        = _G.Items
local Materials      = _G["Items.Materials"]
local ItemConstuctor = _G["Item.Constructor"]
local NFTSaving      = _G["Crafting.SaveNFT"]

local AsyncBC = require(script:GetCustomProperty("AsyncBlockchain_FullWalletSearch"))
local LOOT_BAG_PARSER = require(script:GetCustomProperty("LootBagParser"))

local events = {
	upgrade = "Crafting.Upgrade",
	upgradeNFT = "Crafting.UpgradeNFT",
	scrap = "Crafting.Scrap",
	craftItem = "Crafting.Craft",

	Rupgrade = "Crafting.Upgrade.Server",
	RupgradeNFT = "Crafting.UpgradeNFT.Server",
	Rscrap = "Crafting.Scrap.Server",
	RcraftItem = "Crafting.Craft.Server",
}

local COLLECTIONS = {}
for index, value in pairs(LOOT_BAG_PARSER.Collection) do
	table.insert(COLLECTIONS, value)
end

local function GetInventory(player)
	local Character = EquipApi.GetCurrentCharacter(player)
	if not Character then return end
	local inventory = Character:GetComponent("Inventory")
	local CoreInv = inventory:GetInventory()
	return CoreInv
end

local function CraftItem(player, itemid)
	local inventory = GetInventory(player)
	if not inventory then return end
	local Recipe = CraftingAPI.GetRecipeForGreatness(itemid, 5)
	if not Recipe then
		return
	end
	local itemdata = ItemApi.GetDefinition(itemid, true) or Materials.GetDefinition(itemid, true)
	if not itemdata then return end

	if inventory:HasRequiredItems(Recipe) and inventory:CanAddItem(itemdata["itemAsset"]) then
		for key, value in pairs(Recipe) do
			local materialdata = ItemApi.GetDefinition(key, true) or Materials.GetDefinition(key, true)
			inventory:RemoveItem(materialdata["itemAsset"], { count = value })
		end
		local icon = nil
		if itemdata then
			icon = itemdata.icon
		end
		Events.BroadcastToPlayer(player, "RewardToast", {
			icon = icon,
			message = "Success: Crafted Equipment"
		})
		return inventory:AddItem(itemdata["itemAsset"])
	end
end

local function UpgradeNFT(player, collection, tokenid, itemid)
	local inventory = GetInventory(player)
	if not inventory then return end

	AsyncBC.GetTokensForPlayer(player, { contractAddress = collection }, function(tokens)
		local function FindToken()
			for index, value in ipairs(tokens) do
				if value.tokenId == tokenid then
					return value
				end
			end
		end
		local token = FindToken()
		if not token then return end

		local greatness = NFTSaving.LoadNFT(player, token, itemid)
		if not greatness then
			local itemdata = LOOT_BAG_PARSER.Parse(token)
			local items = itemdata.items
			for key, value in pairs(items) do
				if itemid == value.name then
					greatness = value.greatness
				end
			end
		end
		if not greatness then return end

		local Recipe = CraftingAPI.GetRecipeForGreatness(itemid, greatness + 1)
		if inventory:HasRequiredItems(Recipe) then
			for key, value in pairs(Recipe) do
				local materialdata = ItemApi.GetDefinition(key, true) or Materials.GetDefinition(key, true)
				inventory:RemoveItem(materialdata["itemAsset"], { count = value })
			end
			NFTSaving.Save(player, token, itemid, greatness + 1)
		else
			return
		end

		local bagKey = CoreString.Join("|", token.contractAddress, token.tokenId)
		local itemEntry = ItemApi.GetDefinition(itemid, true)
		local icon = nil
		if itemEntry then
			icon = itemEntry.icon
		end

		for key, item in pairs(inventory:GetItems()) do
			if item.name == itemid then
				local value = item:GetCustomProperty("BagKey")
				if value == bagKey then
					item:SetCustomProperty("Greatness", greatness + 1)
					Events.BroadcastToPlayer(player, "RewardToast", {
						icon = icon,
						message = "Success: NFT Upgraded"
					})
					return true
				end
			end
		end

		Events.BroadcastToPlayer(player, "RewardToast", {
			icon = icon,
			message = "Success: NFT Upgraded"
		})
		return true

	end)
end

local function UpgradeItem(player, slot)
	local inventory = GetInventory(player)
	if not inventory then return end
	local itemToUpgrade = inventory:GetItem(slot)
	if not itemToUpgrade then
		return
	end
	if itemToUpgrade:GetCustomProperty("IsBag") then return end

	local value, hasProperty = itemToUpgrade:GetCustomProperty("Greatness")
	if not hasProperty then
		return
	end
	local Recipe = CraftingAPI.GetRecipeForGreatness(itemToUpgrade.name, value + 1)
	if not Recipe then
		return
	end
	if inventory:HasRequiredItems(Recipe) then
		for key, value in pairs(Recipe) do
			local materialdata = ItemApi.GetDefinition(key, true) or Materials.GetDefinition(key, true)
			inventory:RemoveItem(materialdata["itemAsset"], { count = value })
		end
		itemToUpgrade:SetCustomProperty("Greatness", value + 1)
		local itemEntry = ItemApi.GetDefinition(itemToUpgrade.name, true)
		local icon = nil
		if itemEntry then
			icon = itemEntry.icon
		end

		Events.BroadcastToPlayer(player, "RewardToast", {
			icon = icon,
			message = "Success: Equipment Upgraded"
		})
		return true
	end

end

local function ScrapItem(player, slot)
	local inventory = GetInventory(player)
	if not inventory then return end
	local itemToScrap = inventory:GetItem(slot)
	if not itemToScrap then
		return false
	end
	if itemToScrap:GetCustomProperty("IsBag") then return end
	local itemid = itemToScrap.name
	local Greatness, hasProperty = itemToScrap:GetCustomProperty("Greatness")
	if not hasProperty or not CraftingAPI.GetScrap(itemid, Greatness) then
		return false
	end
	local recipe = CraftingAPI.GetScrap(itemid, Greatness)
	if not recipe then return end
	inventory:RemoveFromSlot(slot)
	for key, value in pairs(recipe) do
		local materialdata = ItemApi.GetDefinition(key, true) or Materials.GetDefinition(key, true)
		inventory:AddItem(materialdata["itemAsset"], { count = value })
	end
	local itemEntry = ItemApi.GetDefinition(itemid, true)
	local icon = nil
	if itemEntry then
		icon = itemEntry.icon
	end
	Events.BroadcastToPlayer(player, "RewardToast", {
		icon = icon,
		message = "Success: Equipment Scapped"
	})
	return true
end

Events.ConnectForPlayer(events.upgrade, UpgradeItem)
Events.ConnectForPlayer(events.scrap, ScrapItem)
Events.ConnectForPlayer(events.upgradeNFT, UpgradeNFT)
Events.ConnectForPlayer(events.craftItem, CraftItem)
