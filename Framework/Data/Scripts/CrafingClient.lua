local EquipApi = _G["Character.EquipAPI"]
local Recipes = _G["Crafting.Recipes"]
local CraftingAPI = _G["Crafting.CraftingAPI"]
local ItemConstuctor = _G["Item.Constructor"]

local events = {
	upgrade = "Crafting.Upgrade",
	upgradeNFT = "Crafting.UpgradeNFT",
	scrap = "Crafting.Scrap",
	craftItem = "Crafting.Craft",

	Rupgrade = "Crafting.Upgrade.Server",
	RupgradeNFT = "Crafting.UpgradeNFT.Server",
	Rscrap = "Crafting.Scrap.Server",
	RcraftItem = "Crafting.Craft.Server",

	Cupgrade = "Crafting.Upgrade.client",
	CupgradeNFT = "Crafting.UpgradeNFT.client",
	Cscrap = "Crafting.Scrap.client",
	CcraftItem = "Crafting.Craft.client",
}


local function UpgradeItem(slot)
	Events.BroadcastToServer(events.upgrade, slot)
end

local function ScrapItem(slot)
	Events.BroadcastToServer(events.scrap, slot)
end

local function UpgradeNFT(Collection, tokenid, itemid)
	Events.BroadcastToServer(events.upgradeNFT, Collection, tokenid, itemid)
end

local function CraftItem(itemid)
	Events.BroadcastToServer(events.craftItem, itemid)
end

Events.Connect(events.Cupgrade, UpgradeItem)
Events.Connect(events.Cscrap, ScrapItem)
Events.Connect(events.CupgradeNFT, UpgradeNFT)
Events.Connect(events.CcraftItem, CraftItem)
