-- Call this event to show the UI. Bool param: canSelectSubclass?
local EVENT_SHOW_UI = "Ability_OpenPanel"
local EVENT_HIDE_UI = "Ability_Close"

local classAPI = _G["Character.Classes"]
local EquipApi = _G["Character.EquipAPI"]
local EASE_UI = require(script:GetCustomProperty("EaseUI"))
local LOCAL_PLAYER = Game.GetLocalPlayer()

local CLASS_IMAGES = require(script:GetCustomProperty("ClassImages"))
local ROOT = script:GetCustomProperty("Root"):WaitForObject()

-- Called by this script when a class is selected. String param: Class name
local EVENT_CLASS_SELECTED = "ClassSelection.Class"


local function Get(panel, desendant)
	local newpanel = panel:FindDescendantByName(desendant)
	assert(newpanel)
	return newpanel
end

local chooseYourClass = Get(ROOT, "Title")
local detailPanelsContainer = Get(ROOT, "DetailPanels")
local ClassSelectionPanel = Get(ROOT, "Class Selection Panel")
local background = Get(ROOT, "background")

local detailPanels = {
	["Warrior"]  = Get(detailPanelsContainer, "DetailsPanel - Warrior"),
	["Fighter"]  = Get(detailPanelsContainer, "DetailsPanel - Fighter"),
	["Shaman"]   = Get(detailPanelsContainer, "DetailsPanel - Shaman"),
	["Paladin"]  = Get(detailPanelsContainer, "DetailsPanel - Paladin"),
	["Mage"]     = Get(detailPanelsContainer, "DetailsPanel - Mage"),
	["Sorcerer"] = Get(detailPanelsContainer, "DetailsPanel - Sorcerer"),
	["Warlock"]  = Get(detailPanelsContainer, "DetailsPanel - Warlock"),
	["Healer"]   = Get(detailPanelsContainer, "DetailsPanel - Healer"),
	["Hunter"]   = Get(detailPanelsContainer, "DetailsPanel - Hunter"),
	["Druid"]    = Get(detailPanelsContainer, "DetailsPanel - Druid"),
	["Rogue"]    = Get(detailPanelsContainer, "DetailsPanel - Rogue"),
	["Ranger"]   = Get(detailPanelsContainer, "DetailsPanel - Ranger"),

}


local ClassSelectionPanels = {
	["W"] = Get(ClassSelectionPanel, "W Panel"),
	["A"] = Get(ClassSelectionPanel, "A Panel"),
	["V"] = Get(ClassSelectionPanel, "V Panel"),
}

local classSelectionData = {}

for key, panel in pairs(ClassSelectionPanels) do
	local paneldata = {
		background = Get(panel, "BG"),
		originalx = panel.x,
		button = Get(panel, "Button"),
		highlight = Get(panel, "Highlight"),
	}

	classSelectionData[key] = paneldata
end

local detailPanelY = detailPanels.Fighter.y

for key, panel in pairs(detailPanels) do
	panel.y             = UI.GetScreenSize().y
	panel.opacity       = 0
	local backButton    = Get(panel, "Back Button")
	local confirmButton = Get(panel, "Confirm Button")
end

local LERP_SPEED = 11.5
local defaultOpacity = background.opacity
local currentSelectedClass

local states = {
	closed = 1,
	open = 2,
	viewingClass = 3,
}

local currentState

local function SetState(newState)
	currentState = newState
end

local function Reset()

end

local function SetUpPanels(class)

end

local function Show()
	if currentState ~= states.closed then return end
	local Character = EquipApi.GetCurrentCharacter(LOCAL_PLAYER)
	if not Character then return end

	EASE_UI.EaseY(ClassSelectionPanel, 45, .4)
	EASE_UI.EaseOpacity(background, defaultOpacity, .6)
	local class = Character:GetComponent("Class")
	SetUpPanels(class:GetClass())

	Events.Broadcast("ClassSelect.Open", LOCAL_PLAYER, "BaseClass")
	Events.Broadcast("ClassSelect.Open", LOCAL_PLAYER, "SubClass")
end

local function Hide()
	if currentState == states.closed then return end
	SetState(states.closed)
	EASE_UI.EaseY(ClassSelectionPanel, UI.GetScreenSize().y, .6)
	EASE_UI.EaseOpacity(background, 0, .3)
end

Hide()

Events.Connect(EVENT_HIDE_UI, Hide)
Events.Connect(EVENT_SHOW_UI, Show)
