--[[
	Cauldron UI
	v1.0.1 - 2022/10/25
	by: blaking707, CommanderFoo
]]
local EquipAPI = _G["Character.EquipAPI"]
local PotionsAPI = _G["Potions.Equipment"]
local Root = script.parent
local LOCAL_PLAYER = Game.GetLocalPlayer()
local POTION_MICRO_SLOT = script:GetCustomProperty("PotionMicroSlot")

local isDragging = false

local function Get(panel, child)
	local newChild = panel:FindChildByName(child) or panel:FindDescendantByName(child)
	assert(newChild, child .. " Not Found")
	return newChild
end

local dragpanel = Get(Root, "DragImage")
local PotionStorage = Get(Root, "Potion Storage")
local PotionSlots = Get(Root, 'Slots')

local function Release()
	isDragging = false
	dragpanel.visibility = Visibility.FORCE_OFF
	for index, slot in ipairs(PotionSlots:GetChildren()) do
		if slot.isEnabled then
			local position   = slot:GetAbsolutePosition()
			local mousePos   = Input.GetCursorPosition()
			local halfwidth  = slot.width / 2
			local halfheight = slot.height / 2
			if mousePos.x >= position.x - halfwidth and mousePos.x <= position.x + halfwidth then
				if mousePos.y >= position.y - halfheight and mousePos.y <= position.y + halfheight then
					Events.Broadcast('EquipPotion', index, dragpanel.clientUserData.potion)
					break
				end
			end
		end
	end
	dragpanel.clientUserData.potion = nil
end

local function Drag(point)

	local potion = point.clientUserData.potion
	dragpanel.clientUserData.potion = potion
	dragpanel:SetImage(PotionsAPI.GetIcon(potion))
	local dragpos = point:GetAbsolutePosition()
	dragpanel.x = dragpos.x
	dragpanel.y = dragpos.y
	dragpanel.visibility = Visibility.INHERIT
	isDragging = true

end

function StartUp()
	dragpanel.visibility = Visibility.FORCE_OFF

	local y = 70
	local count = 0
	for key, value in pairs(PotionsAPI.GetTable()) do
		local potionPoint = World.SpawnAsset(POTION_MICRO_SLOT)
		potionPoint.parent = PotionStorage
		potionPoint.clientUserData.potion = key
		local potionIcon = Get(potionPoint, "PotionIcon")
		local potionName = Get(potionPoint, "PotionName")
		local Button = Get(potionPoint, "Drag")

		Button.pressedEvent:Connect(function()
			Drag(potionPoint)
		end)
		Button.releasedEvent:Connect(function()
			Release()
		end)
		potionName.text = PotionsAPI.GetName(key)
		potionIcon:SetImage(PotionsAPI.GetIcon(key))
		potionPoint.y = y
		potionPoint.x = -120 + (count % 3) * 120
		count = count + 1
		if (count % 3) == 0 then y = y + 150 end
	end

	for key, value in pairs(PotionSlots:GetChildren()) do
		local potionIcon = Get(value, "PotionIcon")
		local arrow = Get(value, "Arrow")
		potionIcon.visibility = Visibility.FORCE_OFF
		arrow.visibility = Visibility.INHERIT
	end
end

StartUp()

local function EmptySlots()
	for key, value in pairs(PotionSlots:GetChildren()) do
		local potionIcon = Get(value, "PotionIcon")
		local arrow = Get(value, "Arrow")
		potionIcon.visibility = Visibility.FORCE_OFF
		arrow.visibility = Visibility.INHERIT
	end
end

local function UpdateSlots(character)
	local potions = character:GetComponent("Potions")
	for index, value in ipairs(PotionSlots:GetChildren()) do

		local potionIcon = Get(value, "PotionIcon")
		local potiontext = Get(value, "potionName")
		local arrow = Get(value, "Arrow")

		local potion = potions:GetEquipped(index)
		if potion then
			potionIcon:SetImage(PotionsAPI.GetIcon(potion))
			potiontext.text = PotionsAPI.GetName(potion)
			potionIcon.visibility = Visibility.INHERIT
			arrow.visibility = Visibility.FORCE_OFF
		else
			potionIcon.visibility = Visibility.FORCE_OFF
			arrow.visibility = Visibility.INHERIT
		end
	end
end

local function UpdatePotionSlots(progression)
	for index, value in ipairs(PotionSlots:GetChildren()) do
		if progression:GetProgressionKey("PotionSlot" .. index) then
			value.isEnabled = true
		else
			value.isEnabled = false
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

EquipAPI.playerEquippedEvent:Connect(function(character, player)
	if player ~= LOCAL_PLAYER then
		return
	end
	local progression = character:GetComponent("Progression")
	local potions = character:GetComponent("Potions")
	potions.potionChangedEvent:Connect(function()
		CheckSlots(character)
	end)
	progression.progressionUpdatedEvent:Connect(function(self, _, element)
		UpdatePotionSlots(progression)
	end)
	UpdatePotionSlots(progression)
	CheckSlots(character)
end)


EquipAPI.playerUnequippedEvent:Connect(function(character, player)
	if player ~= LOCAL_PLAYER then
		return
	end
	CheckSlots()
end)


function Tick(dt)
	if isDragging then
		local MouseLocation = Input.GetCursorPosition()
		local absPos        = dragpanel:GetAbsolutePosition()
		dragpanel.x         = CoreMath.Lerp(absPos.x, MouseLocation.x, .2)
		dragpanel.y         = CoreMath.Lerp(absPos.y, MouseLocation.y, .2)
	end
end
