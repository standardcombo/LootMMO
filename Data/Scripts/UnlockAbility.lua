local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local CONFIRM = script:GetCustomProperty("Confirm"):WaitForObject()

local ICONS = script:GetCustomProperty("icons"):WaitForObject()
local AbilitySlots = ICONS:FindChildByName("AbilityIcon"):GetChildren()
local MARKER = script:GetCustomProperty("Marker"):WaitForObject()
local CENTER_PANEL = script:GetCustomProperty("CenterPanel"):WaitForObject()
local LEFT_PANEL = script:GetCustomProperty("Left_Panel"):WaitForObject()

local EquipAPI = _G["Character.EquipAPI"]
local Abilities = _G["Ability.Equipment"]
local LOCAL_PLAYER = Game.GetLocalPlayer()
local InputBinding = nil
local character = nil
local currentAbility = nil
local currentSlot = nil
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
			currentSlot = i
			return Abilities.GetEntry(class["Ability" .. i])
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

local function SetUpDisplay()
	if not currentAbility then return end
	local abilityName = Get(CENTER_PANEL, "AbilityName")
	local Description = Get(CENTER_PANEL, "Description")
	local Properties = Get(CENTER_PANEL, "Properties")
	local Flavourtext = Get(CENTER_PANEL, "Flavour text")
	local AbilityRender = Get(LEFT_PANEL, "AbilityRender")
	abilityName.text = "New Unlock: " .. currentAbility.name
	Description.text = currentAbility.description
	Properties.text = ""
	Flavourtext.text = ""
	AbilityRender:SetImage(Abilities.GetIcon(currentAbility.name))
	ShowDisplay()
end

local function NextScreen()
	local class = character:GetComponent("Class"):GetClassTable()
	local Progression = character:GetComponent("Progression")

	if GetState() == states.unlocking then
		Events.BroadcastToServer("AcceptSlot", currentSlot)
		Progression:SetProgression("AcceptSlot" .. currentSlot, true)
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
		if found then
			currentAbility = found
			SetState(states.unlocking)
		else
			Events.Broadcast("Ability_PanelComplete")
			Close()
		end
	end

	if GetState() == states.unlocking then
		if currentAbility then
			local position = AbilitySlots[currentSlot]:GetAbsolutePosition()
			MARKER.x = position.x
			MARKER.y = position.y
			AbilitySlots[currentSlot].visibility = Visibility.INHERIT
		end
		ShowMarker()
	end

end

local function Open()
	HideDisplay()
	HideMarker()

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

Events.Connect('Ability_OpenPanel', RecieviedOpen)
Events.Connect("Ability_Close", RecieveClosed)
