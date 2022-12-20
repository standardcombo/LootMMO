--[[

]]
local EVENT_SHOW_ABILITIES = "Abilities.Show"
local EVENT_ABILITIES_CLOSED = "Abilities.Closed"

local CLASSAPI = _G["Character.Classes"]
local EquipAPI = _G["Character.EquipAPI"]
local AbilityAPI = _G["Ability.Equipment"]
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
local POINT_COUNT = script:GetCustomProperty("PointCount"):WaitForObject()
local SELECTION_INDICATOR = script:GetCustomProperty("SelectionIndicator"):WaitForObject()

local EASE_UI = require(script:GetCustomProperty("EaseUI"))

local LOCAL_PLAYER = Game.GetLocalPlayer()


local function Hide()
	EASE_UI.EaseOpacity(ROOT, 0, .4)
	Task.Wait(0.4)
	ROOT.visibility = Visibility.FORCE_OFF
end

local function Show()
	ROOT.visibility = Visibility.INHERIT
	ROOT.opacity = 0
	EASE_UI.EaseOpacity(ROOT, 1, .4)

	character = EquipAPI.GetCurrentCharacter(LOCAL_PLAYER)

	local Progression = character:GetComponent("Progression")
	local class = character:GetComponent("Class"):GetClassTable()

	local slotToUnlock = nil

	for i = 1, 5 do
		local slot = ABILITY_SLOTS[i]
		slot.visibility = Visibility.FORCE_OFF

		if Progression:GetProgressionKey("AbilitySlot" .. i) then
			local abilityId = class["Ability" .. i]
			slot.clientUserData.abilityId = abilityId
			-- Set slot icon
			local iconAsset = AbilityAPI.GetIcon(abilityId)
			local iconImage = slot.clientUserData.icon
			iconImage:SetImage(iconAsset)

			if Progression:GetProgressionKey("AcceptSlot" .. i) then
				slot.visibility = Visibility.INHERIT

			elseif not slotToUnlock then
				slotToUnlock = slot
				PlayUnlockAnimation(slot)
				
				UpdateContents(AbilityAPI, abilityId)

				Events.BroadcastToServer("AcceptSlot", i)
				Progression:SetProgression("AcceptSlot" .. i, true)
			end
		end
	end

	for i = 1, 3 do
		local slot = POTION_SLOTS[i]
		slot.visibility = Visibility.FORCE_OFF

		if Progression:GetProgressionKey("PotionSlot" .. i) then

			if Progression:GetProgressionKey("AcceptPotion" .. i) then
				slot.visibility = Visibility.INHERIT

			elseif not slotToUnlock then
				slotToUnlock = slot
				PlayUnlockAnimation(slot)
			end
		end
	end

	-- Hide content
	if slotToUnlock ~= nil then
		LEFT_PANEL.visibility = Visibility.FORCE_OFF
		CENTER_PANEL.visibility = Visibility.FORCE_OFF
		CLOSE_BUTTON.visibility = Visibility.FORCE_OFF
		UPGRADE_BUTTON.visibility = Visibility.FORCE_OFF
		SELECTION_INDICATOR.visibility = Visibility.FORCE_OFF
		SELECTION_INDICATOR.opacity = 0

		Task.Wait(2.5)
		local x, h

		LEFT_PANEL.visibility = Visibility.INHERIT
		x = LEFT_PANEL.x
		LEFT_PANEL.x = -800
		EASE_UI.EaseX(LEFT_PANEL, x, 0.6, EASE_UI.EasingDirection.INOUT)

		Task.Wait(0.5)

		CENTER_PANEL.visibility = Visibility.INHERIT
		CLOSE_BUTTON.visibility = Visibility.INHERIT
		h = CENTER_PANEL.height
		CENTER_PANEL.height = 0
		EASE_UI.EaseHeight(CENTER_PANEL, h, 3)

		SELECTION_INDICATOR.visibility = Visibility.INHERIT
		SELECTION_INDICATOR.x = slotToUnlock.x
		SELECTION_INDICATOR.y = slotToUnlock.y
		EASE_UI.EaseOpacity(SELECTION_INDICATOR, 1, .7)
	end
end

function PlayUnlockAnimation(slot)
	Task.Spawn(function()
		UNLOCK_ANIMATION.context.PlayForSlot(slot)
	end)
end

function UpdateContents(_api, entryId)
	local iconAsset = _api.GetIcon(entryId)
	MAIN_ICON:SetImage(iconAsset)
	ABILITY_NAME.text = _api.GetName(entryId)
	ABILITY_DESCRIPTION.text = _api.GetDescription(entryId)
end

local function OnSlotPressed(btn)
	local slot = btn.clientUserData.slot

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
end

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

