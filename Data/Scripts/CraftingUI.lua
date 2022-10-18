local ROOT                   = script:GetCustomProperty("Root"):WaitForObject()
local CRAFT_BASE_STAT_ROW    = script:GetCustomProperty("CraftBaseStatRow")
local CRAFT_STAT_ROW         = script:GetCustomProperty("CraftStatRow")
local CRAFT_RECIPE_ITEM_COST = script:GetCustomProperty("craft_RecipeItemCost")
local CRAFT_RECIPIE_DISPLAY  = script:GetCustomProperty("craftRecipieDisplay")
local CRAFT_RECIPE_RETURN    = script:GetCustomProperty("craft_RecipeReturn")

local LOOT_BAG_PARSER = require(script:GetCustomProperty("LootBagParser"))
local AsyncBC         = require(script:GetCustomProperty("AsyncBlockchain_FullWalletSearch"))

local AppState      = _G["AppState"]
local itemAPI       = _G["Items"]
local itemconstruct = _G["Item.Constructor"]
local Materials     = _G["Items.Materials"]
local craftAPI      = _G["Crafting.CraftingAPI"]
local EquipApi      = _G["Character.EquipAPI"]

local currentDisplay = nil
local selectedRecipe = nil
local selectedFilter = nil

local COLLECTIONS = {}
for index, value in pairs(LOOT_BAG_PARSER.Collection) do
	table.insert(COLLECTIONS, value)
end

local function Get(panel, child)
	local newPanel = panel:FindDescendantByName(child)
	assert(newPanel, "Desendant not found " .. child)
	return newPanel
end

local events = {
	Cupgrade    = "Crafting.Upgrade.client",
	CupgradeNFT = "Crafting.UpgradeNFT.client",
	Cscrap      = "Crafting.Scrap.client",
	CcraftItem  = "Crafting.Craft.client",
}

local states = {
	crafting  = 1,
	upgrading = 2,
	scrapping = 3,
	closed    = 4,
}

local titleStrings = {
	[states.crafting]  = "Craft Equipment",
	[states.upgrading] = "Upgrade Equipment",
	[states.scrapping] = "Scrap Equipment",
	[states.closed]    = "Closed",
}

local currentState  = states.closed
local bannertitle   = Get(Get(ROOT, "banner"), "Title")
local ScrollPanel   = Get(Get(ROOT, "Recipes"), "ScrollBar")
local SelectedPanel = Get(ROOT, "Selected")
local filterpanel   = Get(ROOT, "Filters")
local tabpanel      = Get(ROOT, "Tabs")
local SelectedTitle = Get(SelectedPanel, "Item Name")
local SelectedIcon  = Get(SelectedPanel, "Item Image")
local ItemDetail    = Get(SelectedPanel, "ItemDetails")

local DefaultSelectIcon = SelectedIcon:GetImage()

local Tabs = {
	[Get(Get(tabpanel, "craft"), "Button")]   = states.crafting,
	[Get(Get(tabpanel, "Scrap"), "Button")]   = states.scrapping,
	[Get(Get(tabpanel, "upgrade"), "Button")] = states.upgrading,
}

local ViewPanels = {
	[states.crafting]  = Get(SelectedPanel, "Craft"),
	[states.upgrading] = Get(SelectedPanel, "Upgrade"),
	[states.scrapping] = Get(SelectedPanel, "Scrap"),
}
local ViewButtons = {
	[states.crafting]  = Get(ViewPanels[states.crafting], "Button"),
	[states.upgrading] = Get(ViewPanels[states.upgrading], "Button"),
	[states.scrapping] = Get(ViewPanels[states.scrapping], "Button"),
}
local recipePanels = {}

local function GetInventory(player)
	local Character = EquipApi.GetCurrentCharacter(player)
	if not Character then return end
	local inventory = Character:GetComponent("Inventory")
	local CoreInv = inventory:GetInventory()
	return CoreInv
end

local function GetCraftRecipes(inventory)
	local items
	if selectedFilter then
		items = itemAPI.GetDefinitionsForCategory(selectedFilter)
	else
		items = itemAPI.GetDefinitions()
	end
	if not items then return end
	local recipes = {}
	for key, value in pairs(items) do
		local newrecipe = craftAPI.GetGreatnessValue(value.id, 5)
		local newRecipe = {
			item = nil,
			itemid = value.id,
			recipe = newrecipe,
			slot = 0,
		}
		if newrecipe then
			table.insert(recipes, newRecipe)
		end
	end
	return recipes
end

local function GetUpgradeRecipes(inventory)
	local recipes = {}
	for index, value in pairs(inventory:GetItems()) do
		if value:GetCustomProperty("IsBag") == true then
			goto continue
		end
		local itemdata = itemAPI.GetDefinition(value.name)
		if itemdata and selectedFilter and itemdata["category"] ~= selectedFilter then
			goto continue
		end
		local newRecipie = {
			item = value,
			itemid = value.name,
			recipe = {},
			slot = index,
		}
		local greatness, hasValue = value:GetCustomProperty("Greatness")
		if hasValue then
			local newrecipe = craftAPI.GetGreatnessValue(value.name, greatness + 1)
			if newrecipe then
				newRecipie.recipe = newrecipe
				table.insert(recipes, newRecipie)
			end
		end
		::continue::
	end

	for index, Collection in ipairs(COLLECTIONS) do
		AsyncBC.GetTokensForPlayer(Game.GetLocalPlayer(), { contractAddress = Collection }, function(tokens)
			for key, value in pairs(tokens) do
				local itemdata = LOOT_BAG_PARSER.ParseFromToken(tokens)
				local items = itemdata.items
				for key, value in pairs(items) do

				end
			end
		end)
	end
	return recipes
end

local function GetScrapRecipes(inventory)
	local recipes = {}
	for index, value in pairs(inventory:GetItems()) do
		local newRecipe = {
			item = value,
			itemid = value.name,
			recipe = {},
			slot = index
		}

		local itemdata = itemAPI.GetDefinition(value.name)
		if value:GetCustomProperty("IsBag") == true then
			goto continue
		end
		if itemdata and selectedFilter and itemdata["category"] ~= selectedFilter then
			goto continue
		end
		local greatness = value:GetCustomProperty("Greatness")
		if greatness then
			greatness = math.max(1, greatness)
			local newrecipe = craftAPI.GetScrap(value.name, greatness)
			newRecipe.recipe = newrecipe
			if newrecipe then
				table.insert(recipes, newRecipe)
			end
		end
		::continue::
	end
	return recipes
end

local function ClearRecipes()
	for key, value in pairs(recipePanels) do
		if Object.IsValid(value) then
			value:Destroy()
		end
	end
	recipePanels = {}
end

local function SetupItemCost(inventory, item, cost)
	local itemdata       = Materials.GetDefinition(item) or itemAPI.GetDefinition(item)
	local newItemCost    = World.SpawnAsset(CRAFT_RECIPE_ITEM_COST)
	local itemCostIcon   = Get(newItemCost, "Icon")
	local itemCounttxt   = Get(newItemCost, "ItemCount")
	local costCountertxt = Get(newItemCost, "CostCount")
	local itemCount      = inventory:GetItemCount(item) or 0

	itemCounttxt.text   = tostring(itemCount)
	costCountertxt.text = tostring(cost)

	if itemCount < cost then
		itemCounttxt:SetColor(Color.RED)
		costCountertxt:SetColor(Color.RED)
	end

	if itemdata then
		itemCostIcon:SetImage(itemdata.icon)
	end
	return newItemCost
end

local function SetUpItemReturn(inventory, item, cost)
	local itemdata       = Materials.GetDefinition(item) or itemAPI.GetDefinition(item)
	local newItemCost    = World.SpawnAsset(CRAFT_RECIPE_RETURN)
	local itemCostIcon   = Get(newItemCost, "Icon")
	local costCountertxt = Get(newItemCost, "ReturnAmount")

	costCountertxt.text = tostring(cost)
	if itemdata and itemCostIcon then
		itemCostIcon:SetImage(itemdata.icon)
	end
	return newItemCost
end

local function ClearDetailsPanel()
	for key, value in pairs(ItemDetail:GetChildren()) do
		if Object.IsValid(value) then
			value:Destroy()
		end
	end
end

local function CraftSelectPanel()
	local map = {
		["H"]  = "Health",
		["B"]  = "Block",
		["AP"] = "Attack",
		["SP"] = "Skill Power",
		["SR"] = "Skill Resistance",
		["W"]  = "Wisdom",
		["A"]  = "Agility",
		["V"]  = "Vitality",
	}
	if selectedRecipe then
		local newitem = itemconstruct.New(
			{
				item      = selectedRecipe.itemid,
				greatness = 0,
			}
		)

		local stats = newitem:CalculateStats()
		local count = 0
		for key, value in pairs(stats) do
			if value == 0 then
				goto continue
			end
			local newPanel = World.SpawnAsset(CRAFT_BASE_STAT_ROW, { parent = ItemDetail })
			newPanel.y = count * 40
			count = count + 1

			local statname = Get(newPanel, "StatName")
			local statVal  = Get(newPanel, "Stat")

			statname.text = map[key]
			statVal.text  = tostring(value)
			::continue::
		end
	end
end

local function UpgradeSelectPanel()
	local map = {
		["H"]  = "Health",
		["B"]  = "Block",
		["AP"] = "Attack",
		["SP"] = "Skill Power",
		["SR"] = "Skill Resistance",
		["W"]  = "Wisdom",
		["A"]  = "Agility",
		["V"]  = "Vitality",
	}

	if selectedRecipe and selectedRecipe.item then
		local newitem = itemconstruct.New(
			{
				item      = selectedRecipe.item.name,
				order     = selectedRecipe.item:GetCustomProperty("Order"),
				greatness = selectedRecipe.item:GetCustomProperty("Greatness")
			}
		)
		local newitemNext = itemconstruct.New(
			{
				item      = selectedRecipe.item.name,
				order     = selectedRecipe.item:GetCustomProperty("Order"),
				greatness = selectedRecipe.item:GetCustomProperty("Greatness") + 1
			}
		)
		local stats = newitem:CalculateStats()
		local nextstats = newitemNext:CalculateStats()

		local count = 0
		for key, value in pairs(stats) do
			if value == 0 and nextstats[key] == 0 then
				goto continue
			end
			local newPanel = World.SpawnAsset(CRAFT_STAT_ROW, { parent = ItemDetail })
			newPanel.y = count * 40
			count = count + 1

			local statname = Get(newPanel, "StatName")
			local pstatVal = Get(newPanel, "Prev Stat")
			local nstatVal = Get(newPanel, "Next Stat")

			statname.text = map[key]
			pstatVal.text = tostring(value)
			nstatVal.text = tostring(nextstats[key])
			::continue::
		end
	end
end

local function ScrapSelectPanel()

end

local function UpdateSelectPanel()
	ClearDetailsPanel()
	if not selectedRecipe then
		SelectedTitle.text = "No item found"
		SelectedIcon:SetImage(DefaultSelectIcon)
		for key, value in pairs(ViewButtons) do
			value.isInteractable = false
		end
		return
	end
	for key, value in pairs(ViewButtons) do
		value.isInteractable = true
	end
	if selectedRecipe.item then
		SelectedTitle.text = string.format(
			"%s %s | Greatness %d",
			selectedRecipe.item.name,
			selectedRecipe.item:GetCustomProperty("Order"),
			selectedRecipe.item:GetCustomProperty("Greatness")
		)
	else
		SelectedTitle.text = selectedRecipe.itemid
	end
	local itemdata = itemAPI.GetDefinition(selectedRecipe.itemid)
	if itemdata then
		SelectedIcon:SetImage(itemdata.icon)
	end

	local detailUpdateFunction = {
		[states.crafting]  = CraftSelectPanel,
		[states.upgrading] = UpgradeSelectPanel,
		[states.scrapping] = ScrapSelectPanel,
	}

	if detailUpdateFunction[currentState] then
		detailUpdateFunction[currentState]()
	end
end

local function UpdateHighlightedPanel(newDisplay)
	if Object.IsValid(currentDisplay) then
		Get(currentDisplay, "SelectFrame").visibility = Visibility.FORCE_OFF
	end
	if Object.IsValid(newDisplay) then
		Get(newDisplay, "SelectFrame").visibility = Visibility.INHERIT
	end
	currentDisplay = newDisplay
end

local function SelectRecipe(recipe, panel)
	selectedRecipe = recipe
	UpdateHighlightedPanel(panel)
	UpdateSelectPanel()
end

local function PopulateRecipes()
	local recipeStates = {
		[states.crafting]  = GetCraftRecipes,
		[states.upgrading] = GetUpgradeRecipes,
		[states.scrapping] = GetScrapRecipes,
	}
	ClearRecipes()
	if recipeStates[currentState] then
		local inventory = GetInventory(Game.GetLocalPlayer())
		if not inventory then warn("inventory Component required") return end
		local recipes = recipeStates[currentState](inventory) or {}
		for _, value in ipairs(recipes) do
			local newRow = World.SpawnAsset(CRAFT_RECIPIE_DISPLAY, { parent = ScrollPanel })
			newRow.y = #recipePanels * 80
			table.insert(recipePanels, newRow)
			local Icon = Get(newRow, "Icon")
			Icon:SetImage(itemAPI.GetDefinition(value.itemid).icon)
			local newRowButton = Get(newRow, "Button")
			newRowButton.pressedEvent:Connect(function()
				SelectRecipe(value, newRow)
			end)
			local count = 0
			for item, cost in pairs(value.recipe) do
				local newItemCost
				if currentState == states.scrapping then
					newItemCost = SetUpItemReturn(inventory, item, cost)
				else
					newItemCost = SetupItemCost(inventory, item, cost)
				end
				newItemCost.parent = newRow
				newItemCost.x      = count * 150 + 120
				count              = count + 1
			end
		end
	end
end

local function SwapSelectPanel()
	for key, value in pairs(ViewPanels) do
		value.visibility = Visibility.FORCE_OFF
	end
	if ViewPanels[currentState] then
		ViewPanels[currentState].visibility = Visibility.INHERIT
	end
end

local function Refresh()
	bannertitle.text = titleStrings[currentState]
	SelectRecipe(nil)
	selectedFilter = nil
	SwapSelectPanel()
	PopulateRecipes()
end

local function Filter(type)
	local items = itemAPI.GetDefinitionsForCategory(type)
	if #items <= 0 then
		selectedFilter = nil
	else
		selectedFilter = type
	end

	PopulateRecipes()
end

local function SetState(newState)
	currentState = newState
	Refresh()
end

for key, panel in pairs(filterpanel:GetChildren()) do
	Get(panel, "Button").pressedEvent:Connect(function()
		Filter(panel.name)
	end)
end

for key, value in pairs(Tabs) do
	key.pressedEvent:Connect(function()
		SetState(value)
	end)
end

Get(ViewPanels[states.crafting], "Button").pressedEvent:Connect(function()
	if selectedRecipe and currentState == states.crafting then
		Events.Broadcast(events.CcraftItem, selectedRecipe.itemid)
		Refresh()
	end
end)
Get(ViewPanels[states.upgrading], "Button").pressedEvent:Connect(function()
	if selectedRecipe and currentState == states.upgrading then
		if selectedRecipe.NFT then
			Events.Broadcast(events.CupgradeNFT)
		else
			Events.Broadcast(events.Cupgrade, selectedRecipe.slot)
		end
		Refresh()
	end
end)
Get(ViewPanels[states.scrapping], "Button").pressedEvent:Connect(function()
	if selectedRecipe and currentState == states.scrapping then
		Events.Broadcast(events.Cscrap, selectedRecipe.slot)
		Refresh()
	end
end)

Events.Connect(AppState.EnterKey, function(player, newstate)
	if newstate == AppState.Anvil then
		SetState(states.crafting)
	end
end)

Events.Connect(AppState.ExitKey, function(player, oldState)
	if oldState == AppState.Anvil then
		SetState(states.closed)
	end
end)
