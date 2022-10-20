local MAIN_CLASSES = script:GetCustomProperty('MainClasses'):WaitForObject()
local SubPanel = script:GetCustomProperty('MainClassAcceptPanel'):WaitForObject()
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local CLASS_IMAGES = require(script:GetCustomProperty("ClassImages"))

local classMainSelect = 'classSubSelect'
local classOpen = 'classSelectOpen'
local Classes = _G['Character.Classes']
local Abilities = _G['Ability.Equipment']

local EquipApi = _G["Character.EquipAPI"]
local LOCAL_PLAYER = Game.GetLocalPlayer()

local selectedClass = nil
local subClasses = {}

local function Get(panel, child)
	return panel:FindChildByName(child) or panel:FindDescendantByName(child)
end

local states = {
	Open = 1,
	Closed = 2,
	SelectingMain = 3,
	AwatingResponce = 4
}
local UIState = states.Closed
local lastClass = nil

function SetState(newstate)
	UIState = newstate
end

function IsState(state)
	return UIState == state
end

local function ShowMainPanel()
	local char = EquipApi.GetCurrentCharacter(LOCAL_PLAYER)
	local class = char:GetComponent("Class")
	local currentClass = class:GetClassTable()
	local className = class:GetClass()

	local convStat = {
		["W"] = Get(MAIN_CLASSES, "Wisdom"),
		["V"] = Get(MAIN_CLASSES, "Vitality"),
		["A"] = Get(MAIN_CLASSES, "Agility"),
	}
	subClasses = {}
	for _, tempclass in pairs(Classes.GetClasses()) do
		if tempclass['MainClass']['Identifier'] == className then
			subClasses[tempclass["Stat"]] = tempclass
			convStat[tempclass["Stat"]].text = tempclass["ClassIdentifier"]
		end
	end

	MAIN_CLASSES.visibility = Visibility.INHERIT
end

local function HideMainPanel()
	MAIN_CLASSES.visibility = Visibility.FORCE_OFF
end

local function CloseSubPanel()
	SubPanel.visibility = Visibility.FORCE_OFF
end

local function ShowSubPanel()
	SubPanel.visibility = Visibility.INHERIT
end

local function Close()
	selectedClass = nil
	subClasses    = {}
	SetState(states.Closed)
	HideMainPanel()
	CloseSubPanel()
end

local function Open()
	if not IsState(states.Closed) then
		return
	end
	SetState(states.Open)
	ShowMainPanel()
end

local statmap = {
	["W"] = "Wisdom",
	["A"] = "Agility",
	["V"] = "Vitality",
}

local function SetUpSubPanel(class)
	local classname = class['ClassIdentifier']

	local function SetupCenterPanel()
		local CenterPanel = Get(SubPanel, "CenterPanel")
		local Title = Get(CenterPanel, "Class")
		local Stat = Get(CenterPanel, "Stat")
		local Description = Get(CenterPanel, "Description")

		SubPanel:SetImage(CLASS_IMAGES[classname].image)
		Title.text = classname
		Stat.text = "Primary stat: " .. statmap[class['Stat']]
	end

	local function RightPanel()
		local rightPanel = Get(SubPanel, "RightPanel")
		local abilitiesDisplay = Get(rightPanel, "Abilities"):GetChildren()

		for index, display in ipairs(abilitiesDisplay) do
			local Bname = Get(display, "Name")
			local icon = Get(display, "Icon")
			local abilIcon = Abilities.GetIcon(class["Ability" .. index])
			if abilIcon then
				display.visibility = Visibility.INHERIT
			else
				display.visibility = Visibility.FORCE_OFF

			end
			icon:SetImage(abilIcon)
			Bname.text = class["Ability" .. index]
		end

	end

	RightPanel()
	SetupCenterPanel()
	ShowSubPanel()
end

local function SelectMainClass(stat)
	if not IsState(states.Open) then
		return
	end
	local class = subClasses[stat]
	if class then
		HideMainPanel()
		selectedClass = class
		SetState(states.SelectingClass)
		SetUpSubPanel(class)
	end
end

local function Back()
	if not IsState(states.SelectingClass) then
		return
	end
	subClasses    = {}
	selectedClass = nil
	SetState(states.Open)
	CloseSubPanel()
	ShowMainPanel()
end

local function Confirm()
	if not IsState(states.SelectingClass) then
		return
	end
	local character = EquipApi.GetCurrentCharacter(LOCAL_PLAYER)
	assert(character)
	local class = character:GetComponent("Class")
	class:SetClass(selectedClass["ClassIdentifier"])
	Events.BroadcastToServer("CCselection", selectedClass["ClassIdentifier"]) 
	Task.Wait()
	Events.Broadcast("Ability_PanelRefresh")
end

local function RecieviedOpen(id)
	if id == ROOT then
		Open()
	end
end

local function RecieveClosed()
	Close()
end

Events.Connect('subclassAccept', Confirm)
Events.Connect('subclassBack', Back)
Events.Connect('Ability_OpenPanel', RecieviedOpen)
Events.Connect("Ability_Close", RecieveClosed)
Events.Connect(classOpen, Open)
Events.Connect(classMainSelect, SelectMainClass)
