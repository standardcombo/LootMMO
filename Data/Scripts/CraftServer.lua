local EquipApi       = _G["Character.EquipAPI"]
local CraftingAPI    = _G["Crafting.CraftingAPI"]
local ItemApi        = _G.Items
local Marerials      = _G["Items.Materials"]
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
	local Recipe = CraftingAPI.GetGreatnessValue(itemid, 5)
	if not Recipe then
		return
	end
	local itemdata = ItemApi.GetDefinition(itemid) or Marerials.GetDefinition(itemid)
	if not itemdata then return end

	if inventory:HasRequiredItems(Recipe) and inventory:CanAddItem(itemdata["itemAsset"]) then
		for key, value in pairs(Recipe) do
			local materialdata = ItemApi.GetDefinition(key) or Marerials.GetDefinition(key)
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

local function UpgradeNFT(player, Collection, tokenid, itemid)
	local inventory = GetInventory(player)
	if not inventory then return end

	AsyncBC.GetTokensForPlayer(player, { contractAddress = Collection }, function(tokens)
		local function HasToken()
			for index, value in ipairs(tokens) do
				if value.tokenId == tokenid then
					return value
				end
			end
		end

		local token = HasToken()
		if not token then return end
		local Greatness = NFTSaving.LoadNFT(player, token, itemid)
		if not Greatness then
			local itemdata = LOOT_BAG_PARSER.ParseFromToken(token)
			local items = itemdata.items
			for key, value in pairs(items) do
				if itemid == item.name then
					Greatness = item.greatness
				end
			end
		end
		if not Greatness then return end

		local Recipe = CraftingAPI.GetGreatnessValue(itemid, Greatness + 1)
		if inventory:HasRequiredItems(Recipe) then
			for key, value in pairs(Recipe) do
				inventory:RemoveItem(key, { count = value })
			end
			NFTSaving.Save(player, token, itemid, Greatness + 1)
		end
		local BagKey = CoreString.Join("|", token.contractAddress, token.tokenId)
		local itemEntry = ItemApi.GetDefinition(itemid)
		local icon = nil
		if itemEntry then
			icon = itemEntry.icon
		end

		for key, item in pairs(inventory:GetItems()) do
			if item.name == itemid then
				local value = item:GetCustomProperty("BagKey")
				if value == BagKey then
					item:SetCustomProperty("Greatness", item:GetCustomProperty("Greatness") + 1)
					Events.BroadcastToPlayer(player, "RewardToast", {
						icon = icon,
						message = "Success: Equipment Upgraded"
					})
					return true
				end
			end
		end

		Events.BroadcastToPlayer(player, "RewardToast", {
			icon = icon,
			message = "Success: Equipment Upgraded"
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
	if not hasProperty or not CraftingAPI.GetGreatnessValue(itemToUpgrade.name, value + 1) then
		return
	end
	local Recipe = CraftingAPI.GetGreatnessValue(itemToUpgrade.name, value + 1)
	if inventory:HasRequiredItems(Recipe) then
		for key, value in pairs(Recipe) do
			local materialdata = ItemApi.GetDefinition(key) or Marerials.GetDefinition(key)
			inventory:RemoveItem(materialdata["itemAsset"], { count = value })
		end
		itemToUpgrade:SetCustomProperty("Greatness", value + 1)
		local itemEntry = ItemApi.GetDefinition(itemToUpgrade.name)
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
		local materialdata = ItemApi.GetDefinition(key) or Marerials.GetDefinition(key)
		inventory:AddItem(materialdata["itemAsset"], { count = value })
	end
	local itemEntry = ItemApi.GetDefinition(itemid)
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
