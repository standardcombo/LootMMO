--[[

]]
local EVENT_SHOW_ABILITIES = "Abilities.Show"
local EVENT_ABILITIES_CLOSED = "Abilities.Closed"

local ClassAPI = _G["Character.Classes"]
local EquipAPI = _G["Character.EquipAPI"]
local AbilityAPI = _G["Ability.Equipment"]
local PotionAPI = _G["Potions.Equipment"]
local Star_Ratings = _G["Star_Rating"]

local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local UNLOCK_ANIMATION = script:GetCustomProperty("UnlockAnimationScript"):WaitForObject()
local CLOSE_BUTTON = script:GetCustomProperty("CloseButton"):WaitForObject()

local LEFT_PANEL = script:GetCustomProperty("LeftPanel"):WaitForObject()
local MAIN_ICON = script:GetCustomProperty("MainAbilityIcon"):WaitForObject()
local STARS = script:GetCustomProperty("Stars"):WaitForObject()

local CENTER_PANEL = script:GetCustomProperty("CenterPanel"):WaitForObject()
local ABILITY_NAME = script:GetCustomProperty("AbilityName"):WaitForObject()
local ABILITY_DESCRIPTION = script:GetCustomProperty("AbilityDescription"):WaitForObject()
local ABILITY_PROPERTIES = script:GetCustomProperty("AbilityProperties"):WaitForObject()

local ABILITY_SLOTS = script:GetCustomProperty("AbilitySlots"):WaitForObject():GetChildren()
local POTION_SLOTS = script:GetCustomProperty("PotionSlots"):WaitForObject():GetChildren()

local UPGRADE_BUTTON = script:GetCustomProperty("UpgradeButton"):WaitForObject()
local POINTS_PANEL = script:GetCustomProperty("PointsPanel"):WaitForObject()
local POINT_COUNT = script:GetCustomProperty("PointCount"):WaitForObject()
local SELECTION_INDICATOR = script:GetCustomProperty("SelectionIndicator"):WaitForObject()

local EASE_UI = require(script:GetCustomProperty("EaseUI"))

local LOCAL_PLAYER = Game.GetLocalPlayer()

local ABILITY_INPUTS = {
	"Shift",
	"1",
	"2",
	"3",
	"4",
}
local POTION_INPUTS = {
	"z",
	"x",
	"c",
}

local selectedAbilityIndex = 1
local selectedSlot = nil


local function Hide()
	EASE_UI.EaseOpacity(ROOT, 0, .4)
	Task.Wait(0.4)
	ROOT.visibility = Visibility.FORCE_OFF
end

local function Show()
	ROOT.visibility = Visibility.INHERIT
	ROOT.opacity = 0
	EASE_UI.EaseOpacity(ROOT, 1, .4)

	local character = EquipAPI.GetCurrentCharacter(LOCAL_PLAYER)
	local progression = character:GetComponent("Progression")
	local classTable = character:GetComponent("Class"):GetClassTable()

	local slotToUnlock = nil

	for i = 1, 5 do
		local slot = ABILITY_SLOTS[i]
		slot.visibility = Visibility.FORCE_OFF

		if progression:GetProgressionKey("AbilitySlot" .. i) then
			local abilityId = classTable["Ability" .. i]
			slot.clientUserData.abilityId = abilityId
			-- Set slot icon
			local iconAsset = AbilityAPI.GetIcon(abilityId)
			local iconImage = slot.clientUserData.icon
			iconImage:SetImage(iconAsset)
			-- Set slot input label
			local inputLabel = Input.GetActionInputLabel(ABILITY_INPUTS[i])
			slot.clientUserData.actionText.text = inputLabel

			-- Simply enable abilities that have already been accepted by the player
			if progression:GetProgressionKey("AcceptSlot" .. i) then
				slot.visibility = Visibility.INHERIT

			-- The first non-accepted ability goes into the unlock sequence
			elseif not slotToUnlock then
				slotToUnlock = slot
				PlayUnlockAnimation(slot)
				
				selectedAbilityIndex = i
				UpdateContents(AbilityAPI, abilityId)

				Events.BroadcastToServer("AcceptSlot", i)
				progression:SetProgression("AcceptSlot" .. i, true)
			end
		end
		-- Reset slot selection in case the selected slot is no longer active (e.g. Character changed)
		if slot == selectedSlot and slot.visibility == Visibility.FORCE_OFF then
			selectedSlot = nil
		end
	end

	for i = 1, 3 do
		local slot = POTION_SLOTS[i]
		slot.visibility = Visibility.FORCE_OFF

		if progression:GetProgressionKey("PotionSlot" .. i) then
			local potions = character:GetComponent("Potions")
			local potionId = potions:GetEquipped(i)
			if not potionId then
				if i == 1 then
					potionId = "Health" --FTUE. First slot unlocked
				else
					potionId = "Empty"
				end
			end
			slot.clientUserData.potionId = potionId
			-- Set slot icon
			local iconAsset = PotionAPI.GetIcon(potionId)
			local iconImage = slot.clientUserData.icon
			iconImage:SetImage(iconAsset)
			-- Set slot input label
			local inputLabel = Input.GetActionInputLabel(POTION_INPUTS[i])
			slot.clientUserData.actionText.text = inputLabel

			-- Simply enable potions that have already been accepted by the player
			if progression:GetProgressionKey("AcceptPotion" .. i) then
				slot.visibility = Visibility.INHERIT

			-- The first non-accepted potion goes into the unlock sequence
			elseif not slotToUnlock then
				slotToUnlock = slot
				PlayUnlockAnimation(slot)
				
				UpdateContents(PotionAPI, potionId)

				Events.BroadcastToServer("AcceptPotion", i)
				progression:SetProgression("AcceptPotion" .. i, true)
			end
		end
		-- Reset slot selection in case the selected slot is no longer active (e.g. Character changed)
		if slot == selectedSlot and slot.visibility == Visibility.FORCE_OFF then
			selectedSlot = nil
		end
	end

	if slotToUnlock ~= nil then
		-- Hide content
		LEFT_PANEL.visibility = Visibility.FORCE_OFF
		CENTER_PANEL.visibility = Visibility.FORCE_OFF
		CLOSE_BUTTON.visibility = Visibility.FORCE_OFF
		UPGRADE_BUTTON.visibility = Visibility.FORCE_OFF
		SELECTION_INDICATOR.visibility = Visibility.FORCE_OFF
		SELECTION_INDICATOR.opacity = 0

		Task.Wait(2.5)
		local x, h

		-- Animate the left panel
		LEFT_PANEL.visibility = Visibility.INHERIT
		x = LEFT_PANEL.x
		LEFT_PANEL.x = -800
		EASE_UI.EaseX(LEFT_PANEL, x, 0.6, EASE_UI.EasingDirection.INOUT)

		Task.Wait(0.5)

		-- Animate the center panel
		CENTER_PANEL.visibility = Visibility.INHERIT
		CLOSE_BUTTON.visibility = Visibility.INHERIT
		h = CENTER_PANEL.height
		CENTER_PANEL.height = 0
		EASE_UI.EaseHeight(CENTER_PANEL, h, 3)

		-- Animate the selection indicator to the ability being unlocked
		SELECTION_INDICATOR.visibility = Visibility.INHERIT
		SELECTION_INDICATOR.x = slotToUnlock.x
		SELECTION_INDICATOR.y = slotToUnlock.y
		EASE_UI.EaseOpacity(SELECTION_INDICATOR, 1, .7)
	else
		if selectedSlot == nil then
			SelectSlot(ABILITY_SLOTS[1])
		end
	end
end

function PlayUnlockAnimation(slot)
	Task.Spawn(function()
		UNLOCK_ANIMATION.context.PlayForSlot(slot)
	end)
end

function UpdateContents(_api, entryId)
	-- entryId is optional. Defaults to selected slot
	if not entryId then
		if selectedSlot then
			if selectedSlot.clientUserData.abilityId then
				entryId = selectedSlot.clientUserData.abilityId
			elseif selectedSlot.clientUserData.potionId then
				entryId = selectedSlot.clientUserData.potionId
			end
		end
	end
	if not entryId then return end
	
	-- Icon
	local iconAsset = _api.GetIcon(entryId)
	MAIN_ICON:SetImage(iconAsset)
	-- Name and description
	ABILITY_NAME.text = _api.GetName(entryId)
	ABILITY_DESCRIPTION.text = _api.GetDescription(entryId)

	-- Upgrade points and upgrade button
	local character = EquipAPI.GetCurrentCharacter(LOCAL_PLAYER)
	local points = character:GetComponent("Points")
	local pointCount = points:GetUnspentPoints()
	if pointCount > 0 then
		POINT_COUNT.text = tostring(pointCount)
		POINTS_PANEL.visibility = Visibility.INHERIT
	else
		POINTS_PANEL.visibility = Visibility.FORCE_OFF
	end
	
	-- Ability properties, such as radius, critical chance, cooldown, etc
	if _api == AbilityAPI and _G["Modifiers.CalculationString"] then
		local class = character:GetComponent("Class")
		local classname = class:GetClass()
		local classData = ClassAPI.GetClass(classname)
		local selection = classData["Ability"..selectedAbilityIndex]
		local propertyCalculations = _G["Modifiers.CalculationString"][selection]
		if propertyCalculations then
			local newString = ""
			for key, value in pairs(propertyCalculations) do
				newString = string.format("%s%s : %s \n", newString, key, value)
			end
			ABILITY_PROPERTIES.text = newString
			ABILITY_PROPERTIES.visibility = Visibility.INHERIT
		else
			ABILITY_PROPERTIES.visibility = Visibility.FORCE_OFF
		end
	else
		ABILITY_PROPERTIES.visibility = Visibility.FORCE_OFF
	end

	UpdateStars(character)
end

function UpdateStars(character)
	local stats      = character:GetComponent("Stats")
	local class      = character:GetComponent("Class")
	local classTable = class:GetClassTable()
	local ability    = classTable["Ability"..selectedAbilityIndex]
	
	for index, uiImage in ipairs(STARS:GetChildren()) do
		local starimg
		if ability then
			starimg = GetStar(stats:GetStat(ability), index)
		else
			starimg = Star_Ratings[1]
		end

		if starimg and starimg["Art"] then
			uiImage:SetImage(starimg["Art"])
		end
	end
end
function GetStar(stat, index)
	return Star_Ratings[math.floor((stat - index) / 3) + 2]
end

local function OnSlotPressed(btn)
	SelectSlot(btn.clientUserData.slot)
end

function SelectSlot(slot)
	selectedSlot = slot

	selectedAbilityIndex = 1
	for i,_s in ipairs(ABILITY_SLOTS) do
		if _s == slot then
			selectedAbilityIndex = i
			break
		end
	end

	-- Move the selection indicator
	SELECTION_INDICATOR.x = slot.x
	SELECTION_INDICATOR.y = slot.y
	SELECTION_INDICATOR.width = slot.width + 10
	SELECTION_INDICATOR.height = slot.height + 10
	EASE_UI.EaseWidth(SELECTION_INDICATOR, slot.width, 0.2)
	EASE_UI.EaseHeight(SELECTION_INDICATOR, slot.height, 0.2)

	-- Update central info about the selected ability
	if slot.clientUserData.isAbility then
		UpdateContents(AbilityAPI, slot.clientUserData.abilityId)
	elseif slot.clientUserData.isPotion then
		UpdateContents(PotionAPI, slot.clientUserData.potionId)
	end

	-- Visibility of [Upgrade] button
	if POINTS_PANEL.visibility == Visibility.INHERIT and slot.clientUserData.abilityId then
		UPGRADE_BUTTON.visibility = Visibility.INHERIT
	else
		UPGRADE_BUTTON.visibility = Visibility.FORCE_OFF
	end
end


function BroadcastUpgrade()
	if not selectedSlot then
		return
	end
	if selectedSlot.clientUserData.isPotion then
		return
	end
	Events.BroadcastToServer("Ability_Upgrade", LOCAL_PLAYER, selectedAbilityIndex)
	Task.Wait()
	UpdateContents(AbilityAPI)
end
UPGRADE_BUTTON.releasedEvent:Connect(BroadcastUpgrade)

EquipAPI.playerEquippedEvent:Connect(function(character, player)
	if player == LOCAL_PLAYER then
		local stats = character:GetComponent("Stats")
		stats.statsUpdatedEvent:Connect(function()
			UpdateContents(AbilityAPI)
		end)
	end
end)


local function CacheSlotReferences()
	local _CacheSlot = function(slot)
		slot.clientUserData.icon = slot:GetCustomProperty("Icon"):WaitForObject()
		slot.clientUserData.actionText = slot:GetCustomProperty("ActionText"):WaitForObject()
		local btn = slot:GetCustomProperty("Button"):WaitForObject()
		btn.clickedEvent:Connect(OnSlotPressed)
		btn.clientUserData.slot = slot
		slot.clientUserData.button = btn
	end
	-- Ability slots
	for _,slot in ipairs(ABILITY_SLOTS) do
		slot.clientUserData.isAbility = true
		_CacheSlot(slot)
	end
	-- Potion slots
	for _,slot in ipairs(POTION_SLOTS) do
		slot.clientUserData.isPotion = true
		_CacheSlot(slot)
	end
end
CacheSlotReferences()


Events.Connect(EVENT_SHOW_ABILITIES, Show)
Events.Connect(EVENT_ABILITIES_CLOSED, Hide)
