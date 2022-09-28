local EquipAPI = _G["Character.EquipAPI"]
local LOCAL_PLAYER = Game.GetLocalPlayer()
local SLOTS = script:GetCustomProperty("Slots"):WaitForObject():GetChildren()
local ITEMS = _G.Items
local MATERIALS = _G["Items.Materials"]
local HOVER_PANEL = script:GetCustomProperty("HoverPanel"):WaitForObject()
local DRAG_PANEL = script:GetCustomProperty("dragPanel"):WaitForObject()

HOVERDATA = {
	icon = HOVER_PANEL:FindDescendantByName("Icon"),
	name = HOVER_PANEL:FindChildByName("Name"),
	stats = HOVER_PANEL:FindChildByName("Stats"),
}
DragData = {
	icon = DRAG_PANEL:FindChildByName("Icon"),
}

HOVER_PANEL.visibility = Visibility.FORCE_OFF
DRAG_PANEL.visibility = Visibility.FORCE_OFF

local events = nil
local currentInventory = nil
local slots = {}
local isDraging = nil



local function SetImage(panel, icon, itemdata)
	panel.isFlippedHorizontal = itemdata["flipIconH"] or false
	panel.isFlippedVertical = itemdata["flipIconV"] or false
	panel:SetImage(icon)
end

local function RealeaseEvent(slot)
	if not currentInventory then
		return
	end
	if not isDraging then return end
	DRAG_PANEL.visibility = Visibility.FORCE_OFF


	local dropPos = Input:GetCursorPosition()

	--Check if hovering over a slot
	for index, panel in ipairs(SLOTS) do
		local minwidth  = panel.width / 2
		local minheight = panel.width / 2
		local abspo     = panel:GetAbsolutePosition()
		--check width
		if dropPos.x <= abspo.x + minwidth and dropPos.x >= abspo.x - minwidth then
			--check height
			if dropPos.y <= abspo.y + minheight and dropPos.y >= abspo.y - minheight then
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
		local itemdata = ITEMS.GetDefinition(item.name) or MATERIALS.GetDefinition(item.name)
		if not itemdata then
			return
		end
		local icon = itemdata["icon"]
		local childIcon = DragData.icon
		SetImage(childIcon, icon, itemdata)
		HOVER_PANEL.visibility = Visibility.FORCE_OFF
		DRAG_PANEL.visibility = Visibility.INHERIT
		isDraging = { slot = slot.index }
	end
end

local function UnhoverSlot(slot)
	if not currentInventory then
		return
	end
	if isDraging then return end
	HOVER_PANEL.visibility = Visibility.FORCE_OFF
end

local function HoverSlot(slot)
	if not currentInventory then
		return
	end
	if isDraging then return end
	local item = currentInventory:GetItem(slot.index)
	if item then
		local itemdata = ITEMS.GetDefinition(item.name) or MATERIALS.GetDefinition(item.name)
		if not itemdata then
			return
		end
		local icon = itemdata["icon"]
		local childstats = HOVERDATA.stats
		local childIcon = HOVERDATA.icon
		SetImage(childIcon, icon, itemdata)
		HOVERDATA.name.text = string.format("%s %s | Greatness %d",
			item.name,
			item:GetCustomProperty("Order"),
			item:GetCustomProperty("Greatness"))
		HOVER_PANEL.visibility = Visibility.FORCE_ON

		local itemClass = _G["Item.Constructor"].New(
			{
				item = item.name,
				order = item.order,
				greatness = item.greatness
			})

		if itemClass then
			local calculationStats = itemClass:CalculateStats()

			local Stats = {
				['Wisdom'] = calculationStats['W'],
				['Agility'] = calculationStats['A'],
				['Vitality'] = calculationStats['V'],
				['Attack Power'] = calculationStats['AP'],
				['Skill Power'] = calculationStats['SP'],
				['Skill Resist'] = calculationStats['SR'],
				['Block'] = calculationStats['B'],
				['Health'] = calculationStats['H']
			}
			local ChatString = ''
			local count = 0
			for key, value in pairs(Stats) do
				if value > 0 then
					count = count + 1
				end
			end
			for key, value in pairs(Stats) do
				if value > 0 then
					ChatString = ChatString .. string.format('+%d %s', value, key)
					count = count - 1
					if count > 0 then
						ChatString = ChatString .. '\n'
					end
				end
			end

			childstats.text = ChatString
		else
			childstats.text = ""
		end
	end
end

local function HookUpButton(slot)
	slot.Button.hoveredEvent:Connect(function() HoverSlot(slot) end)
	slot.Button.unhoveredEvent:Connect(function() UnhoverSlot(slot) end)
	slot.Button.pressedEvent:Connect(function() DragSlot(slot) end)
	slot.Button.releasedEvent:Connect(function() RealeaseEvent(slot) end)
end

for index, value in ipairs(SLOTS) do
	slots[index] = {}
	slots[index].index = index
	slots[index].icon = value:FindChildByName("icon")
	slots[index].bg = value:FindChildByName("bg")
	slots[index].count = value:FindChildByName("count")
	slots[index].Button = value:FindChildByName("Button")
	HookUpButton(slots[index])
end


local function InventoryChanged(inv, slot)
	local item = inv:GetItem(slot)
	local childIcon = slots[slot].icon
	local childCount = slots[slot].count
	local childbg = slots[slot].bg
	if item ~= nil then
		local itemdata = ITEMS.GetDefinition(item.name) or MATERIALS.GetDefinition(item.name)
		if not itemdata then
			return
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
	else
		if childbg then
			childbg.visibility = Visibility.INHERIT
		end
		childIcon.visibility = Visibility.FORCE_OFF
		childCount.text = ""
	end
end

local function dataUpdated(character)
	if character then
		if events then events:Disconnect() end
		events = nil
		local inventory = character:GetComponent("Inventory")
		local newInventory = inventory:GetInventory()
		if not newInventory then return end
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

function Tick()
	local mpos = Input.GetCursorPosition()

	if HOVER_PANEL.visibility ~= Visibility.FORCE_OFF then
		HOVER_PANEL.x = mpos.x
		HOVER_PANEL.y = mpos.y
	end
	if DRAG_PANEL.visibility ~= Visibility.FORCE_OFF then
		DRAG_PANEL.x = mpos.x
		DRAG_PANEL.y = mpos.y
	end
end

CharacterEquipped(EquipAPI.GetCurrentCharacter(LOCAL_PLAYER), LOCAL_PLAYER)
EquipAPI.playerEquippedEvent:Connect(CharacterEquipped)
EquipAPI.playerUnequippedEvent:Connect(CharacterUnequip)
