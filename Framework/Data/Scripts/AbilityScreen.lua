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
local LOOT_ICON = script:GetCustomProperty("LootIcon")
local POINT_COUNT = script:GetCustomProperty("PointCount"):WaitForObject()

local EASE_UI = require(script:GetCustomProperty("EaseUI"))

local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Cache references
for _,slot in ipairs(ABILITY_SLOTS) do
	slot.clientUserData.icon = slot:GetCustomProperty("Icon"):WaitForObject()
	slot.clientUserData.actionText = slot:GetCustomProperty("ActionText"):WaitForObject()
	slot.clientUserData.outline = slot:GetCustomProperty("Outline"):WaitForObject()
end


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
			local abilityName = class["Ability" .. i]
			-- Set slot icon
			local iconAsset = AbilityAPI.GetIcon(abilityName)
			local iconImage = slot.clientUserData.icon
			iconImage:SetImage(iconAsset)
			-- Set slot outline color
			--local color = AbilityAPI.GetColor(abilityName)
			--slot.clientUserData.outline:SetColor(color)

			if Progression:GetProgressionKey("AcceptSlot" .. i) then
				slot.visibility = Visibility.INHERIT

			elseif not slotToUnlock then
				slotToUnlock = slot
				PlayUnlockAnimation(slot)
				
				UpdateContents(abilityName)
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
	end
end

function PlayUnlockAnimation(slot)
	Task.Spawn(function()
		UNLOCK_ANIMATION.context.PlayForSlot(slot)
	end)
end

function UpdateContents(abilityName)
	local iconAsset = AbilityAPI.GetIcon(abilityName)
	MAIN_ICON:SetImage(iconAsset)
	ABILITY_NAME.text = abilityName
	ABILITY_DESCRIPTION.text = AbilityAPI.GetDescription(abilityName)
end


Events.Connect(EVENT_SHOW_ABILITIES, Show)
Events.Connect(EVENT_ABILITIES_CLOSED, Hide)

