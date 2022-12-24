local EquipAPI = _G["Character.EquipAPI"]
local MATERIALS = _G["Items.Materials"]
local craftAPI = _G["Crafting.CraftingAPI"]
local ITEMS = _G.Items

local LOOT_BAG_PARSER = require(script:GetCustomProperty("LootBagParser"))
local AsyncBC         = require(script:GetCustomProperty("AsyncBlockchain_FullWalletSearch"))

local INVENTORY_SLOTS = script:GetCustomProperty("Slots"):WaitForObject():GetChildren()
local EQUIPMENT_SLOTS = script:GetCustomProperty("EquipmentSlots"):WaitForObject():GetChildren()
local MATERIALS_BAR = script:GetCustomProperty("MaterialsBar"):WaitForObject()
local RESOURCE_SLOTS = MATERIALS_BAR:FindDescendantByName("ResourceSlots"):GetChildren()
local HOVER_PANEL = script:GetCustomProperty("HoverPanel"):WaitForObject()
local UPGRADE_PANEL = script:GetCustomProperty("UpgradePanel"):WaitForObject()
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local DIMMER_BACKGROUND = script:GetCustomProperty("DimmerBackground"):WaitForObject()
local SCRAP_CONFIRMATION_PANEL = script:GetCustomProperty("ScrapConfirmationPanel"):WaitForObject()
local UPGRADE_CONFIRMATION_PANEL = script:GetCustomProperty("UpgradeConfirmationPanel"):WaitForObject()
local CLOSE_BUTTON = script:GetCustomProperty("CloseButton"):WaitForObject()

local COLLECTIONS = {}
for index, value in pairs(LOOT_BAG_PARSER.Collection) do
	table.insert(COLLECTIONS, value)
end

DIMMER_BACKGROUND.visibility = Visibility.FORCE_OFF
MATERIALS_BAR.visibility = Visibility.FORCE_OFF

local SLOTS = {}
for _, slot in ipairs(EQUIPMENT_SLOTS) do
	table.insert(SLOTS, slot)
end
for _, slot in ipairs(INVENTORY_SLOTS) do
	table.insert(SLOTS, slot)
end
for _, slot in ipairs(RESOURCE_SLOTS) do
	table.insert(SLOTS, slot)
end

local LOCAL_PLAYER = Game.GetLocalPlayer()

HOVERDATA = {
	icon = HOVER_PANEL:FindDescendantByName("Icon"),
	name = HOVER_PANEL:FindDescendantByName("Name"),
	stats = HOVER_PANEL:FindDescendantByName("Stats"),
	hovering = false
}

local events, currentInventory, selectedRecipe, currentState
local slots = {}

local craftingEvents = {
	Cupgrade    = "Crafting.Upgrade.client",
	CupgradeNFT = "Crafting.UpgradeNFT.client",
	Cscrap      = "Crafting.Scrap.client",
	CcraftItem  = "Crafting.Craft.client",
}

local states = {
	crafting  = "crafting",
	upgrading = "upgrading",
	scrapping = "scrapping",
	closed    = "closed",
}

local function Get(panel, child)
	return panel:FindChildByName(child) or panel:FindDescendantByName(child)
end

local function SetState(newState)
	if currentState == newState then return end
	currentState = newState
	--print("SetState to " .. newState)
	if currentState ~= states.crafting then
		CLOSE_BUTTON.isInteractable = false
	else
		CLOSE_BUTTON.isInteractable = true
	end
end

SetState(states.closed)

--Setup Upgrade Panel references
UPGRADE_CANCEL_BUTTON = Get(UPGRADE_CONFIRMATION_PANEL, "Cancel Upgrade Button")
UPGRADE_CONFIRM_BUTTON = Get(UPGRADE_CONFIRMATION_PANEL, "Confirm Upgrade Button")

--Setup Selected Object Slot references
local SELECTED_OBJECT_SLOT = Get(UPGRADE_PANEL, "Selected Object Slot")
SELECTED_OBJECT_SLOT.clientUserData.name = Get(SELECTED_OBJECT_SLOT, "Selected Object Name")
SELECTED_OBJECT_SLOT.clientUserData.icon = Get(SELECTED_OBJECT_SLOT, "icon")
SELECTED_OBJECT_SLOT.clientUserData.levelFrame = Get(SELECTED_OBJECT_SLOT, "Level Frame")
SELECTED_OBJECT_SLOT.clientUserData.levelText = Get(SELECTED_OBJECT_SLOT, "Level Text")
SELECTED_OBJECT_SLOT.clientUserData.isBag = Get(SELECTED_OBJECT_SLOT, "IsBag")
local SCRAP_BUTTON = Get(UPGRADE_PANEL, "Scrap Button")
local UPGRADE_BUTTON = Get(UPGRADE_PANEL, "Upgrade Button")

local UPGRADE_PREVIEW_SLOT = {
	Get(UPGRADE_PANEL, "Slot 1"),
	Get(UPGRADE_PANEL, "Slot 2"),
	Get(UPGRADE_PANEL, "Slot 3")
}
for _, previewSlot in ipairs(UPGRADE_PREVIEW_SLOT) do
	previewSlot.clientUserData.icon = Get(previewSlot, "icon")
	previewSlot.clientUserData.count = Get(previewSlot, "count")
end

--Setup Scrap Confirmation Panel references
local OBJECT_TO_SCRAP_SLOT = Get(SCRAP_CONFIRMATION_PANEL, "Object To Scrap Slot")
OBJECT_TO_SCRAP_SLOT.clientUserData.name = Get(OBJECT_TO_SCRAP_SLOT, "Selected Object Name")
OBJECT_TO_SCRAP_SLOT.clientUserData.icon = Get(OBJECT_TO_SCRAP_SLOT, "icon")
OBJECT_TO_SCRAP_SLOT.clientUserData.levelFrame = Get(OBJECT_TO_SCRAP_SLOT, "Level Frame")
OBJECT_TO_SCRAP_SLOT.clientUserData.levelText = Get(OBJECT_TO_SCRAP_SLOT, "Level Text")
OBJECT_TO_SCRAP_SLOT.clientUserData.isBag = Get(OBJECT_TO_SCRAP_SLOT, "IsBag")
local SCRAP_CONFIRMATION_BUTTON = Get(SCRAP_CONFIRMATION_PANEL, "Confirm Scrap Button")
local SCRAP_CANCEL_BUTTON = Get(SCRAP_CONFIRMATION_PANEL, "Cancel Scrap Button")
local SCRAP_PREVIEW_SLOT = {
	Get(SCRAP_CONFIRMATION_PANEL, "Slot 1"),
	Get(SCRAP_CONFIRMATION_PANEL, "Slot 2"),
	Get(SCRAP_CONFIRMATION_PANEL, "Slot 3")
}
for _, previewSlot in ipairs(SCRAP_PREVIEW_SLOT) do
	previewSlot.clientUserData.icon = Get(previewSlot, "icon")
	previewSlot.clientUserData.count = Get(previewSlot, "count")
end

local function GetInventory(player)
	local Character = EquipAPI.GetCurrentCharacter(player)
	if not Character then return end
	local inventory = Character:GetComponent("Inventory")
	local CoreInv = inventory:GetInventory()
	return CoreInv
end

local function ClearUpgradePanelDetails()
	SELECTED_OBJECT_SLOT.clientUserData.name.visibility = Visibility.FORCE_OFF
	SELECTED_OBJECT_SLOT.clientUserData.icon.visibility = Visibility.FORCE_OFF
	SELECTED_OBJECT_SLOT.clientUserData.levelFrame.visibility = Visibility.FORCE_OFF
	SELECTED_OBJECT_SLOT.clientUserData.levelText.visibility = Visibility.FORCE_OFF
	SELECTED_OBJECT_SLOT.clientUserData.isBag.visibility = Visibility.FORCE_OFF
	for _, previewSlot in ipairs(UPGRADE_PREVIEW_SLOT) do
		previewSlot.clientUserData.icon.visibility = Visibility.FORCE_OFF
		previewSlot.clientUserData.count.visibility = Visibility.FORCE_OFF
	end
	UPGRADE_BUTTON.isInteractable = false
	SCRAP_BUTTON.isInteractable = false
	selectedRecipe = {}
end

local function GetScrapRecipe(item)
	if not item then return end
	local greatness = item:GetCustomProperty("Greatness")
	local newrecipe = nil
	if greatness then
		greatness = math.max(1, greatness)
		newrecipe = craftAPI.GetGreatnessValue(item.name, greatness)
	end
	return newrecipe
end

local function GetUpgradeRecipe(item)
	if not item then return end

	local newrecipe, greatness
	greatness = item:GetCustomProperty("Greatness")
	local nftSaves = LOCAL_PLAYER:GetPrivateNetworkedData("NFTS") or {}
	local playerOwnsItem = false
	if item:GetCustomProperty("IsBag") then -- check if player owns the item in the bag
		for _, Collection in ipairs(COLLECTIONS) do
			if playerOwnsItem then break end
			AsyncBC.GetTokensForPlayer(Game.GetLocalPlayer(), { contractAddress = Collection }, function(tokens)
				for _, token in pairs(tokens) do
					local parsedBag = LOOT_BAG_PARSER.Parse(token)
					local items = parsedBag.items
					local tokenString = CoreString.Join("|", token.contractAddress, token.tokenId)
					for _, itemdata in pairs(items) do
						if itemdata.name == item.name then
							greatness = (nftSaves[tokenString] or {})[itemdata.name] or itemdata.greatness
							if greatness < 20 then
								selectedRecipe.NFT = tokenString
								playerOwnsItem = true
								newrecipe = craftAPI.GetGreatnessValue(item.name, greatness + 1)
								break
							end
						end
					end
				end
			end)
		end
		if not playerOwnsItem then -- player does not own the item in the bag
			ClearUpgradePanelDetails()
		end
	else -- can the non NFT item be upgraded?
		if greatness then
			newrecipe = craftAPI.GetGreatnessValue(item.name, greatness + 1)
		end
	end
	return newrecipe
end

local function UpgradeItem(button)
	function HideUpgradeConfirmationPanel()
		DIMMER_BACKGROUND.visibility = Visibility.FORCE_OFF
		UPGRADE_CONFIRMATION_PANEL.visibility = Visibility.FORCE_OFF
	end
	if selectedRecipe then
		if currentState == states.crafting then
			SetState(states.upgrading)
		end
		if currentState == states.upgrading then
			DIMMER_BACKGROUND.visibility = Visibility.INHERIT
			UPGRADE_CONFIRMATION_PANEL.visibility = Visibility.INHERIT
			if button == UPGRADE_CANCEL_BUTTON then
				HideUpgradeConfirmationPanel()
				SetState(states.crafting)
			elseif button == UPGRADE_CONFIRM_BUTTON then
				if selectedRecipe.NFT then
					local Collection, tokenid = CoreString.Split(selectedRecipe.NFT, "|")
					Events.Broadcast(craftingEvents.CupgradeNFT, Collection, tokenid, selectedRecipe.item.name)
				else
					Events.Broadcast(craftingEvents.Cupgrade, selectedRecipe.slot.index)
				end
				HideUpgradeConfirmationPanel()
				ClearUpgradePanelDetails()
				SetState(states.crafting)
			end
		end
	end
end

local function RefreshUpgradePanelDetails(item, slot) -- Updates the upgrade panel to show upgrade details for the selected item
	local itemdata = ITEMS.GetDefinition(item.name, true)
	if not itemdata then return	end

	local icon = itemdata["icon"]

	local greatness = item:GetCustomProperty("Greatness")
	if greatness then
		greatness = math.max(1, greatness)
	end

	local inv = GetInventory(LOCAL_PLAYER)
	local upgradeRecipe = GetUpgradeRecipe(item)
	if upgradeRecipe and greatness < 20 then
		UPGRADE_BUTTON.isInteractable = true
		--For each item in the upgradeRecipe populate the preview slots with the item icon and quantity
		if not upgradeRecipe then return end
		local count = 0
		for itemName, quantity in pairs(upgradeRecipe) do
			if type(quantity) == "number" and quantity > 0 then
				count = count + 1
				local materialData = MATERIALS.GetDefinition(itemName, true)
				if not materialData then
					warn("No item data for " .. itemName)
					return
				end
				local previewIcon = materialData["icon"]
				quantity = math.ceil(quantity) --Update quantity to reflect the greatness of the item

				--Set the icon and quantity for the item on the SLOT UI
				UPGRADE_PREVIEW_SLOT[count].clientUserData.icon:SetImage(previewIcon)
				UPGRADE_PREVIEW_SLOT[count].clientUserData.icon.visibility = Visibility.INHERIT
				UPGRADE_PREVIEW_SLOT[count].clientUserData.count.text = tostring(quantity)
				UPGRADE_PREVIEW_SLOT[count].clientUserData.count.visibility = Visibility.INHERIT
			end
		end
		if inv and not inv:HasRequiredItems(upgradeRecipe) then
			warn("Not enough materials to upgrade " .. item.name)
			UPGRADE_BUTTON.isInteractable = false
		end
	else
		UPGRADE_BUTTON.isInteractable = false
		warn("Cannot upgrade " .. item.name .. " already max greatness, or no recipe.")
	end

	if slot.isBag then
		if item:GetCustomProperty("IsBag") then
			SELECTED_OBJECT_SLOT.clientUserData.isBag.visibility = Visibility.INHERIT
			OBJECT_TO_SCRAP_SLOT.clientUserData.isBag.visibility = Visibility.INHERIT
		else
			SELECTED_OBJECT_SLOT.clientUserData.isBag.visibility = Visibility.FORCE_OFF
			OBJECT_TO_SCRAP_SLOT.clientUserData.isBag.visibility = Visibility.FORCE_OFF
		end
	end
	OBJECT_TO_SCRAP_SLOT.clientUserData.name.text = itemdata.name
	OBJECT_TO_SCRAP_SLOT.clientUserData.icon:SetImage(icon)
	OBJECT_TO_SCRAP_SLOT.clientUserData.levelText.text = tostring(greatness)
	OBJECT_TO_SCRAP_SLOT.clientUserData.levelFrame.visibility = Visibility.INHERIT
	SELECTED_OBJECT_SLOT.clientUserData.name.text = itemdata.name
	SELECTED_OBJECT_SLOT.clientUserData.icon:SetImage(icon)
	SELECTED_OBJECT_SLOT.clientUserData.levelText.text = tostring(greatness)
	SELECTED_OBJECT_SLOT.clientUserData.name.visibility = Visibility.INHERIT
	SELECTED_OBJECT_SLOT.clientUserData.icon.visibility = Visibility.INHERIT
	SELECTED_OBJECT_SLOT.clientUserData.levelFrame.visibility = Visibility.INHERIT
	SELECTED_OBJECT_SLOT.clientUserData.levelText.visibility = Visibility.INHERIT
end

local function SetImage(panel, icon, itemdata)
	panel.isFlippedHorizontal = itemdata["flipIconH"] or false
	panel.isFlippedVertical = itemdata["flipIconV"] or false
	panel:SetImage(icon)
end

local function SelectRecipe(item, slot)
	if currentState ~= states.crafting then return end
	selectedRecipe = {
		item = item,
		slot = slot
	}

	if selectedRecipe.item:GetCustomProperty("IsBag") then --If is an NFT then disable scrap button
		SCRAP_BUTTON.isInteractable = false
		--warn("Disabled Scrap button as you cannot scrap an NFT")
	else
		SCRAP_BUTTON.isInteractable = true
	end

	RefreshUpgradePanelDetails(item, slot)
end


local function ClickedSlot(slot)
	if not currentInventory then return	end
	if currentState ~= states.crafting then return end

	local item = currentInventory:GetItem(slot.index)
	if not item then
		ClearUpgradePanelDetails()
		return
	end
	local greatness = item:GetCustomProperty("Greatness")
	if greatness then --Greatness is required for upgrading
		greatness = math.max(1, greatness)
		SelectRecipe(item,slot)
	end
end

local function ScrapItem(button)
	if selectedRecipe then
		if currentState == states.crafting then
			SetState(states.scrapping)
		end
		if currentState == states.scrapping then
			function HideScrapConfirmationWindow()
				SCRAP_CONFIRMATION_PANEL.visibility = Visibility.FORCE_OFF
				DIMMER_BACKGROUND.visibility = Visibility.FORCE_OFF
				for index, _ in ipairs(SCRAP_PREVIEW_SLOT) do
					SCRAP_PREVIEW_SLOT[index].clientUserData.icon.visibility = Visibility.FORCE_OFF
					SCRAP_PREVIEW_SLOT[index].clientUserData.count.visibility = Visibility.FORCE_OFF
				end
			end

			local scrapRecipe = GetScrapRecipe(selectedRecipe.item) --Table of items to give to player if they choose to scrap the item
			if not scrapRecipe then warn("No scrapping recipe for" .. selectedRecipe.item) return end
			
			--For each item in the scrapRecipe populate the preview slots with the item icon and quantity
			local count = 0
			for itemName, quantity in pairs(scrapRecipe) do
				count = count + 1
				local itemdata = MATERIALS.GetDefinition(itemName, true)
				if not itemdata then
					warn("No item data for " .. itemName)
					return
				end
				local icon = itemdata["icon"]
				--Set the icon and quantity for the item on the SLOT UI
				SCRAP_PREVIEW_SLOT[count].clientUserData.icon:SetImage(icon)
				SCRAP_PREVIEW_SLOT[count].clientUserData.icon.visibility = Visibility.INHERIT
				SCRAP_PREVIEW_SLOT[count].clientUserData.count.text = tostring(quantity)
				SCRAP_PREVIEW_SLOT[count].clientUserData.count.visibility = Visibility.INHERIT
			end

			--Popup scrap confirmation window
			SCRAP_CONFIRMATION_PANEL.visibility = Visibility.INHERIT
			DIMMER_BACKGROUND.visibility = Visibility.INHERIT
			if button == SCRAP_CANCEL_BUTTON then
				HideScrapConfirmationWindow()
				SetState(states.crafting)
			elseif button == SCRAP_CONFIRMATION_BUTTON then
				--Destroy the item
				--Give the player the items in the scrapRecipe table
				Events.Broadcast(craftingEvents.Cscrap, selectedRecipe.slot.index)
				SetState(states.crafting)
				HideScrapConfirmationWindow()
				ClearUpgradePanelDetails()
			end
		end
	end
end

local function HideArrows()
	HOVER_PANEL.clientUserData.topLeftArrow.visibility = Visibility.FORCE_OFF
	HOVER_PANEL.clientUserData.topRightArrow.visibility = Visibility.FORCE_OFF
	HOVER_PANEL.clientUserData.bottomLeftArrow.visibility = Visibility.FORCE_OFF
	HOVER_PANEL.clientUserData.bottomRightArrow.visibility = Visibility.FORCE_OFF
end

local function UnhoverSlot(slot)
	HOVER_PANEL.visibility = Visibility.FORCE_OFF
	HOVERDATA.hovering = false
	if not currentInventory then
		return
	end
end

local function HoverSlot(slot)
	if not currentInventory then return	end
	if currentState ~= states.crafting then return end

	if SCRAP_CONFIRMATION_PANEL.visibility == Visibility.INHERIT then return end --Don't show the hover panel if the scrap confirmation panel is open
	HOVERDATA.hovering = true
	HideArrows()
	local item = currentInventory:GetItem(slot.index)
	if item then
		local itemdata = ITEMS.GetDefinition(item.name, true) or MATERIALS.GetDefinition(item.name, true)
		if not itemdata then
			return
		end
		local icon = itemdata["icon"]
		local childstats = HOVERDATA.stats
		local childIcon = HOVERDATA.icon
		SetImage(childIcon, icon, itemdata)

		if item:GetCustomProperty("Greatness") then
			HOVERDATA.name.text =
			string.format(
				"%s %s | Greatness %d",
				itemdata.name,
				item:GetCustomProperty("Order"),
				item:GetCustomProperty("Greatness")
			)

			local itemClass =
			_G["Item.Constructor"].New(
				{
					item = item.name,
					order = item:GetCustomProperty("Order"),
					greatness = item:GetCustomProperty("Greatness")
				}
			)

			if itemClass then
				local calculationStats = itemClass:CalculateStats()

				local Stats = {
					["Wisdom"] = calculationStats["W"],
					["Agility"] = calculationStats["A"],
					["Vitality"] = calculationStats["V"],
					["Attack Power"] = calculationStats["AP"],
					["Skill Power"] = calculationStats["SP"],
					["Skill Resist"] = calculationStats["SR"],
					["Block"] = calculationStats["B"],
					["Health"] = calculationStats["H"]
				}
				local ChatString = ""
				local count = 0
				for key, value in pairs(Stats) do
					if value > 0 then
						count = count + 1
					end
				end
				for key, value in pairs(Stats) do
					if value > 0 then
						ChatString = ChatString .. string.format("+%d %s", value, key)
						count = count - 1
						if count > 0 then
							ChatString = ChatString .. "\n"
						end
					end
				end

				childstats.text = ChatString
			else
				childstats.text = ""
			end
		else
			HOVERDATA.name.text = itemdata.name
			childstats.text = itemdata.description
		end

		--Separate the screen width into 2 sections, the screen height into 4, then determine which section the hovered item is in
		local SCREEN_SIZE = UI.GetScreenSize() --Get the screen size every time, in case the player resizes the window
		local screenwidth = SCREEN_SIZE.x
		local screenheight = SCREEN_SIZE.y

		local sectionwidth = screenwidth / 2
		local sectionheight = screenheight / 4
		local section = Vector2.New(0,0)

		local slotPosition = slot.Button:GetAbsolutePosition()

		--Set section on screen based on slot position
		if slotPosition.x < sectionwidth then
			section.x = 1
		else
			section.x = 2
		end
		if slotPosition.y < sectionheight then
			section.y = 1
		elseif slotPosition.y < sectionheight * 2 then
			section.y = 2
		elseif slotPosition.y < sectionheight * 3 then
			section.y = 3
		else
			section.y = 4
		end

		--print("section",section.x, section.y)

		HOVER_PANEL.x = slotPosition.x
		HOVER_PANEL.y = slotPosition.y

		--Show arrow visibility based on which section the hovered item is in and set the position of the hover panel
		if section.x == 1 then
			if section.y == 1 then
				HOVER_PANEL.clientUserData.topLeftArrow.visibility = Visibility.INHERIT
			elseif section.y == 2 then
				HOVER_PANEL.clientUserData.topLeftArrow.visibility = Visibility.INHERIT
			elseif section.y == 3 then
				HOVER_PANEL.clientUserData.bottomLeftArrow.visibility = Visibility.INHERIT
				HOVER_PANEL.y = slotPosition.y - HOVER_PANEL.height
			elseif section.y == 4 then
				HOVER_PANEL.clientUserData.bottomLeftArrow.visibility = Visibility.INHERIT
				HOVER_PANEL.y = slotPosition.y - HOVER_PANEL.height
			end
		else
			HOVER_PANEL.x = slotPosition.x - HOVER_PANEL.width
			if section.y == 1 then
				HOVER_PANEL.clientUserData.topRightArrow.visibility = Visibility.INHERIT
			elseif section.y == 2 then
				HOVER_PANEL.clientUserData.topRightArrow.visibility = Visibility.INHERIT
			elseif section.y == 3 then
				HOVER_PANEL.clientUserData.bottomRightArrow.visibility = Visibility.INHERIT
				HOVER_PANEL.y = slotPosition.y - HOVER_PANEL.height
			elseif section.y == 4 then
				HOVER_PANEL.clientUserData.bottomRightArrow.visibility = Visibility.INHERIT
				HOVER_PANEL.y = slotPosition.y - HOVER_PANEL.height
			end
		end

		HOVER_PANEL.visibility = Visibility.INHERIT
	end
end

local function HookUpButton(slot)
	slot.Button.hoveredEvent:Connect(
		function()
			HoverSlot(slot)
		end
	)
	slot.Button.unhoveredEvent:Connect(
		function()
			UnhoverSlot(slot)
		end
	)
	slot.Button.clickedEvent:Connect(
		function()
			ClickedSlot(slot)
		end
	)
	slot.Button.tappedEvent:Connect(
		function()
			ClickedSlot(slot)
		end
	)
end

for index, value in ipairs(SLOTS) do
	slots[index] = {}
	slots[index].index = index
	slots[index].icon = value:FindChildByName("icon")
	slots[index].bg = value:FindChildByName("bg")
	slots[index].count = value:FindChildByName("count")
	slots[index].Button = value:FindChildByName("Button")
	slots[index].isBag = Get(value, "IsBag")
	slots[index].levelFrame = Get(value, "Level Frame")
	slots[index].levelText = Get(value, "Level Text")

	HookUpButton(slots[index])
end

local function InventoryChanged(inv, slot)
	local item = inv:GetItem(slot)
	local childIcon = slots[slot].icon
	local childCount = slots[slot].count
	local childbg = slots[slot].bg
	local isBag = slots[slot].isBag
	local levelFrame = slots[slot].levelFrame
	if item ~= nil then
		local itemdata = ITEMS.GetDefinition(item.name, true) or MATERIALS.GetDefinition(item.name, true)
		if not itemdata then
			return
		end
		if isBag then
			if item:GetCustomProperty("IsBag") then
				isBag.visibility = Visibility.INHERIT
			else
				isBag.visibility = Visibility.FORCE_OFF
			end
		end

		local icon = itemdata["icon"]
		SetImage(childIcon, icon, itemdata)
		if childbg then
			childbg.visibility = Visibility.FORCE_OFF
		end
		childIcon.visibility = Visibility.FORCE_ON
		if item.count > 1 then
			childCount.text = tostring(item.count)
		else
			childCount.text = ""
		end
		local greatness = item:GetCustomProperty("Greatness")
		if greatness then
			levelFrame.visibility = Visibility.INHERIT
			slots[slot].levelText.text = tostring(greatness)
		else
			levelFrame.visibility = Visibility.FORCE_OFF
		end
	else
		if isBag then
			isBag.visibility = Visibility.FORCE_OFF
		end
		if childbg then
			childbg.visibility = Visibility.INHERIT
		end
		childIcon.visibility = Visibility.FORCE_OFF
		childCount.text = ""
		levelFrame.visibility = Visibility.FORCE_OFF
	end

end

local function dataUpdated(character)
	if character then
		if events then
			events:Disconnect()
		end
		events = nil
		local inventory = character:GetComponent("Inventory")
		local newInventory = inventory:GetInventory()
		if not newInventory then
			return
		end
		for i, item in ipairs(slots) do
			item.count.text = ""
		end
		for i = 1, newInventory.slotCount, 1 do
			InventoryChanged(newInventory, i)
		end
		currentInventory = newInventory
		events = newInventory.changedEvent:Connect(InventoryChanged)
	end
end

local function CharacterEquipped(character, player)
	if player == LOCAL_PLAYER then
		if character then
			character.dataloadedEvent:Connect(dataUpdated)
			dataUpdated(character)
		end
	end
end

local function CharacterUnequip(character, player)
	if player == LOCAL_PLAYER then
		currentInventory = nil
		events:Disconnect()
	end
end

function Tick(dt)
	if currentState == states.crafting then return end
	if ROOT.visibility ~= Visibility.FORCE_OFF and currentState == states.closed then
		SetState(states.crafting)
	end
end

CharacterEquipped(EquipAPI.GetCurrentCharacter(LOCAL_PLAYER), LOCAL_PLAYER)
EquipAPI.playerEquippedEvent:Connect(CharacterEquipped)
EquipAPI.playerUnequippedEvent:Connect(CharacterUnequip)
SCRAP_BUTTON.clickedEvent:Connect(ScrapItem)
UPGRADE_BUTTON.clickedEvent:Connect(UpgradeItem)
SCRAP_CONFIRMATION_BUTTON.clickedEvent:Connect(ScrapItem)
SCRAP_CANCEL_BUTTON.clickedEvent:Connect(ScrapItem)
UPGRADE_CANCEL_BUTTON.clickedEvent:Connect(UpgradeItem)
UPGRADE_CONFIRM_BUTTON.clickedEvent:Connect(UpgradeItem)
CLOSE_BUTTON.clickedEvent:Connect(function()
	SetState(states.closed)
end)