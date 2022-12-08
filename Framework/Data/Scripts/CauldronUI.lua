--[[
	Cauldron UI
	v1.1.0 - 2022/11/09
	by: Blaking, CommanderFoo
]]
local EquipAPI = _G["Character.EquipAPI"]
local PotionsAPI = _G["Potions.Equipment"]
local ROOT = script.parent
local LOCAL_PLAYER = Game.GetLocalPlayer()
local POTION_MICRO_SLOT = script:GetCustomProperty("PotionMicroSlot")
local DEFAULT_ICON = script:GetCustomProperty("DefaultIcon")

---Fetch a child from the panel by name.
---@param panel CoreObject
---@param child string
---@return CoreObject
local function Get(panel, child)
	local newChild = panel:FindChildByName(child) or panel:FindDescendantByName(child)
	assert(newChild, child .. " Not Found")
	return newChild
end

local DRAG_PANEL = Get(ROOT, "DragImage")
local POTION_STORAGE = Get(ROOT, "Potion Storage")
local POTION_SLOTS = Get(ROOT, 'Slots'):GetChildren()

local isDragging = false
local potionSlotLookup = {}

---Resets the panel being dragged around.
---If the panel is dropped on a valid potion slot, a broadcast is done
--- to EquipPotion that will equip it for the character.
local function Release()
	isDragging = false
	DRAG_PANEL.visibility = Visibility.FORCE_OFF
	for index, slot in ipairs(POTION_SLOTS) do
		if potionSlotLookup[slot].unlocked then
			local position   = slot:GetAbsolutePosition()
			local mousePos   = Input.GetCursorPosition()
			local halfwidth  = slot.width / 2
			local halfheight = slot.height / 2
			if mousePos.x >= position.x - halfwidth and mousePos.x <= position.x + halfwidth then
				if mousePos.y >= position.y - halfheight and mousePos.y <= position.y + halfheight then
					Events.Broadcast('EquipPotion', index, DRAG_PANEL.clientUserData.potion)
					break
				end
			end
		end
	end
	DRAG_PANEL.clientUserData.potion = nil
end

---Handle dragging around the panel that contains the potion pressed on.
local function Drag(button, point)
	local potion = point.clientUserData.potion
	DRAG_PANEL.clientUserData.potion = potion
	DRAG_PANEL:SetImage(PotionsAPI.GetIcon(potion))
	local dragpos = point:GetAbsolutePosition()
	DRAG_PANEL.x = dragpos.x
	DRAG_PANEL.y = dragpos.y
	DRAG_PANEL.visibility = Visibility.INHERIT
	isDragging = true
end

---Adds all the potions to the scroll panel that a player can drag onto
---a potion slot.
local function CreatePotions()
	local offsetY = 70
	local spacing = 15
	local count = 0
	local potionTable = PotionsAPI.GetTable()

	for key, value in pairs(potionTable) do
		local potionPoint = World.SpawnAsset(POTION_MICRO_SLOT, { parent = POTION_STORAGE })
		local potionIcon = Get(potionPoint, "PotionIcon")
		local potionName = Get(potionPoint, "PotionName")
		local button = Get(potionPoint, "Drag")
		local panelWidth = potionPoint.width + spacing

		potionPoint.clientUserData.potion = key
		potionName.text = PotionsAPI.GetName(key)
		potionIcon:SetImage(PotionsAPI.GetIcon(key))
		potionPoint.y = offsetY
		potionPoint.x = -panelWidth + (count % 3) * panelWidth
		count = count + 1

		if(count % 3) == 0 then
			offsetY = offsetY + potionPoint.height
		end

		button.pressedEvent:Connect(Drag, potionPoint)
		button.releasedEvent:Connect(Release)
	end
end

---First function that runs to do some setup and cache the slots.
local function StartUp()
	DRAG_PANEL.visibility = Visibility.FORCE_OFF

	CreatePotions()

	---Fetch potion slots and cache them for later use.
	for key, value in pairs(POTION_SLOTS) do
		local potionIcon = Get(value, "PotionIcon")
		
		potionIcon:SetColor(Color.New(0, 0, 0, .3))

		potionSlotLookup[value] = {
		
			potionIcon = potionIcon,
			arrow = Get(value, "Arrow"),
			potionName = Get(value, "PotionName"),
			slotName = Get(value, "SlotName"),
			unlocked = false

		}
	end
end

---If a loot bag change is done, then the slots need to be emptied.
local function EmptySlots()
	for key, value in pairs(POTION_SLOTS) do
		potionSlotLookup[value].potionIcon:SetColor(Color.New(0, 0, 0, .3))
		potionSlotLookup[value].arrow.visibility = Visibility.FORCE_OFF
		potionSlotLookup[value].potionName.visibility = Visibility.FORCE_OFF
		potionSlotLookup[value].potionIcon:SetImage(DEFAULT_ICON)
		potionSlotLookup[value].unlocked = false
		potionSlotLookup[value].potionName.text = ""
	end
end

local function UpdateSlots(character)
	local potions = character:GetComponent("Potions")
	local progression = character:GetComponent("Progression")

	for index, value in ipairs(POTION_SLOTS) do
		local potionIcon = potionSlotLookup[value].potionIcon
		local arrow = potionSlotLookup[value].arrow
		local potion = potions:GetEquipped(index)
		local potionName = potionSlotLookup[value].potionName
		local potionProgression = progression:GetProgressionKey("PotionSlot" .. index)

		potionSlotLookup[value].unlocked = potionProgression

		if potionProgression then
			if potion then
				potionIcon:SetImage(PotionsAPI.GetIcon(potion))
				potionIcon:SetColor(Color.WHITE)
				potionName.text = PotionsAPI.GetName(potion)
				potionName.visibility = Visibility.INHERIT
				arrow.visibility = Visibility.FORCE_OFF
			end
		else
			potionIcon:SetColor(Color.New(0, 0, 0, .3))

			if potionSlotLookup[value].unlocked then
				arrow.visibility = Visibility.INHERIT
				potionName.visibility = Visibility.FORCE_OFF
			else
				potionIcon:SetImage(DEFAULT_ICON)
				potionName.visibility = Visibility.FORCE_OFF
				arrow.visibility = Visibility.FORCE_OFF
				potionName.text = ""
			end
		end
	end
end

local function UpdatePotionSlots(progression)
	for index, value in ipairs(POTION_SLOTS) do
		if progression:GetProgressionKey("PotionSlot" .. index) then
			potionSlotLookup[value].unlocked = true
			potionSlotLookup[value].arrow.visibility = Visibility.INHERIT
			potionSlotLookup[value].potionName.visibility = Visibility.INHERIT
		else
			potionSlotLookup[value].unlocked = false
			potionSlotLookup[value].arrow.visibility = Visibility.FORCE_OFF
			potionSlotLookup[value].potionName.visibility = Visibility.FORCE_OFF
			potionSlotLookup[value].potionIcon:SetImage(DEFAULT_ICON)
			potionSlotLookup[value].potionIcon:SetColor(Color.New(0, 0, 0, .3))
		end
	end
end

local function CheckSlots(character)
	if character then
		UpdateSlots(character)
	else
		EmptySlots()
	end
end

local function OnUnequipped(character, player)
	if player ~= LOCAL_PLAYER then
		return
	end

	CheckSlots()
end

local function OnEquipped(character, player)
	if player ~= LOCAL_PLAYER then
		return
	end

	local progression = character:GetComponent("Progression")
	local potions = character:GetComponent("Potions")

	potions.potionChangedEvent:Connect(function(_, slot)
		CheckSlots(character)
	end)
	progression.progressionUpdatedEvent:Connect(function(self, _, element)
		UpdatePotionSlots(progression)
	end)

	UpdatePotionSlots(progression)
	CheckSlots(character)
end

function Tick()
	if isDragging then
		local MouseLocation = Input.GetCursorPosition()
		local absPos = DRAG_PANEL:GetAbsolutePosition()
		DRAG_PANEL.x = MouseLocation.x
		DRAG_PANEL.y = MouseLocation.y
	end
end

EquipAPI.playerUnequippedEvent:Connect(OnUnequipped)
EquipAPI.playerEquippedEvent:Connect(OnEquipped)

StartUp()