local EquipAPI = _G["Character.EquipAPI"]
local MATERIALS = _G["Items.Materials"]
local ITEMS = _G.Items

local LOOT_BAG_PARSER = require(script:GetCustomProperty("LootBagParser"))
local AsyncBC         = require(script:GetCustomProperty("AsyncBlockchain_FullWalletSearch"))

local INVENTORY_SLOTS = script:GetCustomProperty("Slots"):WaitForObject():GetChildren()
local EQUIPMENT_SLOTS = script:GetCustomProperty("EquipmentSlots"):WaitForObject():GetChildren()
local MATERIALS_BAR = script:GetCustomProperty("MaterialsBar"):WaitForObject()
local RESOURCE_SLOTS = MATERIALS_BAR:FindDescendantByName("ResourceSlots"):GetChildren()
local HOVER_PANEL = script:GetCustomProperty("HoverPanel"):WaitForObject()
HOVER_PANEL.clientUserData.topLeftArrow = HOVER_PANEL:FindDescendantByName("Top Left Arrow")
HOVER_PANEL.clientUserData.topRightArrow = HOVER_PANEL:FindDescendantByName("Top Right Arrow")
HOVER_PANEL.clientUserData.bottomLeftArrow = HOVER_PANEL:FindDescendantByName("Bottom Left Arrow")
HOVER_PANEL.clientUserData.bottomRightArrow = HOVER_PANEL:FindDescendantByName("Bottom Right Arrow")
local DRAG_PANEL = script:GetCustomProperty("dragPanel"):WaitForObject()
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local STAT_DISPLAY = script:GetCustomProperty("StatDisplay"):WaitForObject()

local COLLECTIONS = {}
for index, value in pairs(LOOT_BAG_PARSER.Collection) do
	table.insert(COLLECTIONS, value)
end

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
DragData = {
	icon = DRAG_PANEL:FindChildByName("Icon")
}

DRAG_PANEL.visibility = Visibility.FORCE_OFF
MATERIALS_BAR.visibility = Visibility.FORCE_OFF

local events = nil
local currentInventory = nil
local slots = {}
local isDraging = nil

local function Get(panel, child)
	return panel:FindChildByName(child) or panel:FindDescendantByName(child)
end

local function SetImage(panel, icon, itemdata)
	panel.isFlippedHorizontal = itemdata["flipIconH"] or false
	panel.isFlippedVertical = itemdata["flipIconV"] or false
	panel:SetImage(icon)
end

local function UpdateValues()
	local character = EquipAPI.GetCurrentCharacter(LOCAL_PLAYER)
	local inventory = character:GetComponent("Inventory")

	local stats = inventory:CalculateInventory()
	local map = {
		["H"] = "Health",
		["B"] = "Block",
		["AP"] = "Attack",
		["SP"] = "SkillP",
		["SR"] = "SkillR",
		["W"] = "Wisdom",
		["A"] = "Agility",
		["V"] = "Vitality",
	}
	for key, value in pairs(stats) do
		local panel = Get(STAT_DISPLAY, map[key])
		panel.text = tostring(math.floor(value))
	end
end

local function GetNFTSaveInfo(item)
	local greatness = nil
	if not item:GetCustomProperty("IsBag") then
		return item:GetCustomProperty("Greatness")
	end
	local nftSaves = LOCAL_PLAYER:GetPrivateNetworkedData("NFTS") or {}
	local playerOwnsItem = false
	for _, Collection in ipairs(COLLECTIONS) do
		if playerOwnsItem then break end
		AsyncBC.GetTokensForPlayer(LOCAL_PLAYER, { contractAddress = Collection }, function(tokens)
			Task.Wait()
			for _, token in pairs(tokens) do
				local parsedBag = LOOT_BAG_PARSER.Parse(token)
				local items = parsedBag.items
				local tokenString = CoreString.Join("|", token.contractAddress, token.tokenId)
				for _, itemdata in pairs(items) do
					if itemdata.name == item.name then
						playerOwnsItem = true
						greatness = nftSaves[tokenString][itemdata.name] or item:GetCustomProperty("Greatness")
						break
					end
				end
			end
		end)
	end
	if playerOwnsItem then
		return greatness, playerOwnsItem
	else
		return item:GetCustomProperty("Greatness"), playerOwnsItem
	end
end

local function RealeaseEvent(slot)
	if not currentInventory then
		return
	end
	if not isDraging then
		return
	end
	DRAG_PANEL.visibility = Visibility.FORCE_OFF

	local dropPos = Input:GetCursorPosition()

	--Check if hovering over a slot
	for index, panel in ipairs(SLOTS) do
		local minwidth = panel.width
		local minheight = panel.height
		local abspo = panel:GetAbsolutePosition()
		--check width
		if dropPos.x >= abspo.x and dropPos.x <= abspo.x + minwidth then
			--check height
			if dropPos.y >= abspo.y and dropPos.y <= abspo.y + minheight then
				--swap slots if true
				currentInventory:MoveFromSlot(isDraging.slot, index)
				isDraging = nil
				return
			end
		end
	end
	isDraging = nil
end

local function DragSlot(slot)
	if not currentInventory then
		return
	end
	local item = currentInventory:GetItem(slot.index)
	if item then
		local itemdata = ITEMS.GetDefinition(item.name, true) or MATERIALS.GetDefinition(item.name, true)
		if not itemdata then
			return
		end
		local icon = itemdata["icon"]
		local childIcon = DragData.icon
		SetImage(childIcon, icon, itemdata)
		local panelPos = slot.Button:GetAbsolutePosition()
		DRAG_PANEL.x = panelPos.x
		DRAG_PANEL.y = panelPos.y
		DRAG_PANEL.visibility = Visibility.INHERIT
		isDraging = { slot = slot.index }
	end
end

local function UnhoverSlot(slot)
	HOVER_PANEL.visibility = Visibility.FORCE_OFF
	HOVER_PANEL.clientUserData.topLeftArrow.visibility = Visibility.FORCE_OFF
	HOVER_PANEL.clientUserData.topRightArrow.visibility = Visibility.FORCE_OFF
	HOVER_PANEL.clientUserData.bottomLeftArrow.visibility = Visibility.FORCE_OFF
	HOVER_PANEL.clientUserData.bottomRightArrow.visibility = Visibility.FORCE_OFF
	HOVERDATA.hovering = false
	if not currentInventory then
		return
	end
	if isDraging then
		return
	end
end

local function HideArrows()
	HOVER_PANEL.clientUserData.topLeftArrow.visibility = Visibility.FORCE_OFF
	HOVER_PANEL.clientUserData.topRightArrow.visibility = Visibility.FORCE_OFF
	HOVER_PANEL.clientUserData.bottomLeftArrow.visibility = Visibility.FORCE_OFF
	HOVER_PANEL.clientUserData.bottomRightArrow.visibility = Visibility.FORCE_OFF
end

local function HoverSlot(slot)
	if not currentInventory then
		return
	end
	if isDraging then
		return
	end
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
			local greatness = GetNFTSaveInfo(item)
			HOVERDATA.name.text =
			string.format(
				"%s %s | Greatness %d",
				itemdata.name,
				item:GetCustomProperty("Order"),
				greatness
			)

			local itemClass =
			_G["Item.Constructor"].New(
				{
					item = item.name,
					order = item:GetCustomProperty("Order"),
					greatness = greatness
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
	slot.Button.pressedEvent:Connect(
		function()
			DragSlot(slot)
		end
	)
	slot.Button.releasedEvent:Connect(
		function()
			RealeaseEvent(slot)
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
	UpdateValues()
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
		local greatness = nil
		if isBag then
			if item:GetCustomProperty("IsBag") then
				isBag.visibility = Visibility.INHERIT
				greatness = GetNFTSaveInfo(item)
			else
				greatness = item:GetCustomProperty("Greatness")
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
	local mpos = Input.GetCursorPosition()


	if DRAG_PANEL.visibility ~= Visibility.FORCE_OFF then
		DRAG_PANEL.x = CoreMath.Lerp(DRAG_PANEL.x, mpos.x, dt * 20)
		DRAG_PANEL.y = CoreMath.Lerp(DRAG_PANEL.y, mpos.y, dt * 20)
	end
end

local function ReceivedOpen(id)
	if id == ROOT then
		UpdateValues()
	end
end

Events.Connect('Ability_OpenPanel', ReceivedOpen)
CharacterEquipped(EquipAPI.GetCurrentCharacter(LOCAL_PLAYER), LOCAL_PLAYER)
EquipAPI.playerEquippedEvent:Connect(CharacterEquipped)
EquipAPI.playerUnequippedEvent:Connect(CharacterUnequip)
