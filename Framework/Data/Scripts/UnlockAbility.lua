local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local CONFIRM = script:GetCustomProperty("Confirm"):WaitForObject()

local ICONS = script:GetCustomProperty("icons"):WaitForObject()
local AbilitySlots = ICONS:FindChildByName("AbilityIcon"):GetChildren()
local PotionSlots = ICONS:FindChildByName("Poitions"):GetChildren()
local MARKER = script:GetCustomProperty("Marker"):WaitForObject()
local CENTER_PANEL = script:GetCustomProperty("CenterPanel"):WaitForObject()
local LEFT_PANEL = script:GetCustomProperty("Left_Panel"):WaitForObject()
local potionicon = script:GetCustomProperty("FantasySpellPotion016")
local EASE_UI = require(script:GetCustomProperty("EaseUI"))
local UNLOCK_BACK_GROUND = script:GetCustomProperty("UnlockBackGround"):WaitForObject()

local CLOSE_EVENT = "Ability_Close"
local PREPARE_TO_CLOSE = "Ability_Prepare"
local OPEN_EVENT = "Ability_OpenPanel"

local EquipAPI = _G["Character.EquipAPI"]
local Abilities = _G["Ability.Equipment"]
local LOCAL_PLAYER = Game.GetLocalPlayer()
local unlockKey = nil
local InputBinding = nil
local character = nil
local currentAbility = nil
local currentSlot = nil
local nextPanel = nil
local currentBinding
local isOpen = false


local states = {
	closed = 0,
	unlocking = 1,
	displaying = 2,
	searching = 3,
}

local currentState = states.closed

local function SetState(newstate)
	currentState = newstate
end

local function GetState()
	return currentState
end

local function Get(panel, child)
	return panel:FindChildByName(child) or panel:FindDescendantByName(child)
end

local function FindNextAccept(Progression, class)
	for i = 1, 5 do
		if Progression:GetProgressionKey("AbilitySlot" .. i) and not Progression:GetProgressionKey("AcceptSlot" .. i) then
			nextPanel = AbilitySlots[i]
			unlockKey = "AbilitySlot"
			currentSlot = i
			currentAbility = Abilities.GetEntry(class["Ability" .. i])
			return true
		end
	end

end

local function FindNextAcceptPotions(Progression)
	for i = 1, 3 do
		if Progression:GetProgressionKey("PotionSlot" .. i) and not Progression:GetProgressionKey("AcceptPotion" .. i) then
			currentSlot = i
			unlockKey = "PotionSlot"
			nextPanel = PotionSlots[i]
			return true
		end
	end
end

local function ShowMarker()
	MARKER.visibility = Visibility.INHERIT
end

local function HideMarker()
	MARKER.visibility = Visibility.FORCE_OFF
end

local function ShowDisplay()
	LEFT_PANEL.visibility = Visibility.INHERIT
	CENTER_PANEL.visibility = Visibility.INHERIT
end

local function HideDisplay()
	LEFT_PANEL.visibility = Visibility.FORCE_OFF
	CENTER_PANEL.visibility = Visibility.FORCE_OFF
end

local function Close()
	HideDisplay()
	HideMarker()
	if InputBinding then
		InputBinding:Disconnect()
		InputBinding = nil
	end
	character = nil
	SetState(states.closed)
end

local function DisplayAbility()
	local abilityName = Get(CENTER_PANEL, "AbilityName")
	local Description = Get(CENTER_PANEL, "Description")
	local Properties = Get(CENTER_PANEL, "Properties")
	local Flavourtext = Get(CENTER_PANEL, "Flavour text")
	local AbilityRender = Get(LEFT_PANEL, "AbilityRender")
	abilityName.text = "New unlock: " .. currentAbility.name
	Description.text = currentAbility.description
	Properties.text = ""
	Flavourtext.text = ""
	AbilityRender:SetImage(Abilities.GetIcon(currentAbility.name))
	ShowDisplay()
end

local function DisplayPotion()
	local abilityName = Get(CENTER_PANEL, "AbilityName")
	local Description = Get(CENTER_PANEL, "Description")
	local Properties = Get(CENTER_PANEL, "Properties")
	local Flavourtext = Get(CENTER_PANEL, "Flavour text")
	local AbilityRender = Get(LEFT_PANEL, "AbilityRender")

	abilityName.text = "New potion slot unlocked"
	Description.text = "Go to the cauldron to equip the new potion to the slot"
	Properties.text = ""
	Flavourtext.text = ""
	AbilityRender:SetImage(potionicon)
	ShowDisplay()
end

local function SetUpDisplay()
	if unlockKey == "AbilitySlot" then
		if not currentAbility then return end
		DisplayAbility()
	elseif unlockKey == "PotionSlot" then
		DisplayPotion()
	end
end

local function NextScreen()
	local class = character:GetComponent("Class"):GetClassTable()
	local Progression = character:GetComponent("Progression")

	if GetState() == states.unlocking then
		if unlockKey == "AbilitySlot" then
			Events.BroadcastToServer("AcceptSlot", currentSlot)
			Progression:SetProgression("AcceptSlot" .. currentSlot, true)
		elseif unlockKey == "PotionSlot" then
			Events.BroadcastToServer("AcceptPotion", currentSlot)
			Progression:SetProgression("AcceptPotion" .. currentSlot, true)

		end
		SetState(states.displaying)
	end

	if GetState() == states.displaying then
		SetUpDisplay()
		SetState(states.searching)
		return
	end

	if GetState() == states.closed then
		SetState(states.searching)
	end

	if GetState() == states.searching then
		HideDisplay()
		local found = FindNextAccept(Progression, class)
		if not found then
			found = FindNextAcceptPotions(Progression)
		end
		if found then
			SetState(states.unlocking)
		else
			Events.Broadcast("Ability_PanelComplete")
			Close()
		end
	end

	if GetState() == states.unlocking then
		if nextPanel then
			local position = nextPanel:GetAbsolutePosition()
			MARKER.x = position.x
			MARKER.y = position.y
			nextPanel.visibility = Visibility.INHERIT
		end
		ShowMarker()
	end

end

local function Open()
	HideDisplay()
	HideMarker()
	EASE_UI.EaseOpacity(UNLOCK_BACK_GROUND, 1, .4)

	local char = EquipAPI.GetCurrentCharacter(LOCAL_PLAYER)
	if not char then
		Events.Broadcast("RefreshAbilityTab")
	end
	character = char
	local Progression = char:GetComponent("Progression")
	local class = char:GetComponent("Class"):GetClassTable()
	local AbilityIcons = Get(ROOT, "AbilityIcon"):GetChildren()

	for i = 1, 5 do
		local abiltyname = class["Ability" .. i]
		local icon = Abilities.GetIcon(abiltyname)
		local display = Get(AbilityIcons[i], "Icon")
		display:SetImage(icon)
		if Progression:GetProgressionKey("AbilitySlot" .. i) and Progression:GetProgressionKey("AcceptSlot" .. i) then
			AbilityIcons[i].visibility = Visibility.INHERIT
		else
			AbilityIcons[i].visibility = Visibility.FORCE_OFF
		end
	end

	for i = 1, 3 do
		if Progression:GetProgressionKey("PotionSlot" .. i) and Progression:GetProgressionKey("AcceptPotion" .. i) then
			PotionSlots[i].visibility = Visibility.INHERIT
		else
			PotionSlots[i].visibility = Visibility.FORCE_OFF
		end
	end

	InputBinding = CONFIRM.pressedEvent:Connect(NextScreen)
	NextScreen()
end

local function RecieviedOpen(id)
	if id == ROOT then
		Open()
	end
end

local function RecieveClosed()
	Close()
end

local function PreptoClose()
	EASE_UI.EaseOpacity(UNLOCK_BACK_GROUND, 0, .4)
end

Events.Connect(PREPARE_TO_CLOSE, PreptoClose)
Events.Connect('Ability_OpenPanel', RecieviedOpen)
Events.Connect("Ability_Close", RecieveClosed)
