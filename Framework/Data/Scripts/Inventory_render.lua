local EquipAPI = _G["Character.EquipAPI"]
local MATERIALS = _G["Items.Materials"]
local ITEMS = _G.Items

local SLOTS = script:GetCustomProperty("Slots"):WaitForObject():GetChildren()
local HOVER_PANEL = script:GetCustomProperty("HoverPanel"):WaitForObject()
local DRAG_PANEL = script:GetCustomProperty("dragPanel"):WaitForObject()
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local STAT_DISPLAY = script:GetCustomProperty("StatDisplay"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

HOVERDATA = {
	icon = HOVER_PANEL:FindDescendantByName("Icon"),
	name = HOVER_PANEL:FindDescendantByName("Name"),
	stats = HOVER_PANEL:FindDescendantByName("Stats")
}
DragData = {
	icon = DRAG_PANEL:FindChildByName("Icon")
}

DRAG_PANEL.visibility = Visibility.FORCE_OFF

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
		local minheight = panel.width
		local abspo = panel:GetAbsolutePosition()
		--check width
		if dropPos.x <= abspo.x + minwidth and dropPos.x >= abspo.x then
			--check height
			if dropPos.y <= abspo.y + minheight and dropPos.y >= abspo.y then
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
	if not currentInventory then
		return
	end
	if isDraging then
		return
	end
end

local function HoverSlot(slot)
	if not currentInventory then
		return
	end
	if isDraging then
		return
	end
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
				item.name,
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
			HOVERDATA.name.text = item.name
			childstats.text = itemdata.description
		end
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
	local mpos = Input.GetCursorPosition()


	if DRAG_PANEL.visibility ~= Visibility.FORCE_OFF then
		DRAG_PANEL.x = CoreMath.Lerp(DRAG_PANEL.x, mpos.x, dt * 20)
		DRAG_PANEL.y = CoreMath.Lerp(DRAG_PANEL.y, mpos.y, dt * 20)
	end
end

local function RecieviedOpen(id)
	if id == ROOT then
		UpdateValues()
	end
end

Events.Connect('Ability_OpenPanel', RecieviedOpen)
CharacterEquipped(EquipAPI.GetCurrentCharacter(LOCAL_PLAYER), LOCAL_PLAYER)
EquipAPI.playerEquippedEvent:Connect(CharacterEquipped)
EquipAPI.playerUnequippedEvent:Connect(CharacterUnequip)
