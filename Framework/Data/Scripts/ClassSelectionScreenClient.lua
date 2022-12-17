-- Call this event to show the UI
local EVENT_SHOW_CLASS_SELECT = "ClassSelection.Show"
-- Called by this script when a class is selected. String param: Class name
local EVENT_CLASS_SELECTED = "ClassSelection.Selected"
local CLOSE_EVENT = "Ability_Close"
local PREPARE_TO_CLOSE = "Ability_Prepare"
--local SHOW_ABILITIES_EVENT = "Ability_OpenPanel"

local classAPI = _G["Character.Classes"]
local EquipApi = _G["Character.EquipAPI"]
local EASE_UI = require(script:GetCustomProperty("EaseUI"))
local EASE_DURATION_SHOW = 0.4
local EASE_DURATION_HIDE = 0.3
local EASE_DURATION_DETAILS = 0.25

local LOCAL_PLAYER = Game.GetLocalPlayer()

local CLASS_IMAGES = require(script:GetCustomProperty("ClassImages"))
local ROOT = script:GetCustomProperty("Root"):WaitForObject()


local function Get(panel, desendant)
	local newpanel = panel:FindChildByName(desendant) or panel:FindDescendantByName(desendant)
	assert(newpanel, panel, desendant)
	return newpanel
end

local chooseYourClassPanel = Get(ROOT, "Title")
local detailPanelsContainer = Get(ROOT, "DetailPanels")
local ClassSelectionPanel = Get(ROOT, "Class Selection Panel")
local background = Get(ROOT, "background")
local swappingPanel = Get(ROOT, "SwappingPanel")
local swappingPanelBackGround = Get(swappingPanel, "backgound")
local allPanels = ROOT:FindDescendantsByType("UIControl")
local allPanelData = {}

local function PlaySound(Soundid)
	Events.Broadcast("Sounds.PlaySound", Soundid)
end

local UnselectableClasses = {
	["Healer"] = true,
	["ShadowMancer"] = true,
	["Rogue"] = true,
	["Druid"] = true,
	["Shaman"] = true,
	["Paladin"] = true,
}

local subClass = {
	["Mage"] = { "Sorcerer", "Healer", "ShadowMancer" },
	["Hunter"] = { "Ranger", "Rogue", "Druid" },
	["Warrior"] = { "Fighter", "Shaman", "Paladin" },
	["None"] = { "Mage", "Hunter", "Warrior" },
}

local detailPanels = {
	["Warrior"]      = Get(detailPanelsContainer, "DetailsPanel - Warrior"),
	["Fighter"]      = Get(detailPanelsContainer, "DetailsPanel - Fighter"),
	["Shaman"]       = Get(detailPanelsContainer, "DetailsPanel - Shaman"),
	["Paladin"]      = Get(detailPanelsContainer, "DetailsPanel - Paladin"),
	["Mage"]         = Get(detailPanelsContainer, "DetailsPanel - Mage"),
	["Sorcerer"]     = Get(detailPanelsContainer, "DetailsPanel - Sorcerer"),
	["ShadowMancer"] = Get(detailPanelsContainer, "DetailsPanel - Warlock"),
	["Healer"]       = Get(detailPanelsContainer, "DetailsPanel - Healer"),
	["Hunter"]       = Get(detailPanelsContainer, "DetailsPanel - Hunter"),
	["Druid"]        = Get(detailPanelsContainer, "DetailsPanel - Druid"),
	["Rogue"]        = Get(detailPanelsContainer, "DetailsPanel - Rogue"),
	["Ranger"]       = Get(detailPanelsContainer, "DetailsPanel - Ranger"),

}

local ClassSelectionPanels = {
	["W"] = Get(ClassSelectionPanel, "W Panel"),
	["A"] = Get(ClassSelectionPanel, "A Panel"),
	["V"] = Get(ClassSelectionPanel, "V Panel"),
}

local BackMap = {
	[ClassSelectionPanels["W"]] = "W",
	[ClassSelectionPanels["A"]] = "A",
	[ClassSelectionPanels["V"]] = "V",
}
local classMap = {}

local classSelectionData = {}
local detailPanelsData = {}

local defaultOpacity = background.opacity
local detailPanelY = detailPanels.Fighter.y
local currentSelectedClass = nil
local viewingClass = nil
local currentViewingPanel = nil


local states = {
	closed = 1,
	closing = 2,
	open = 3,
	viewingClass = 4,
	viewingSubClass = 5,
}

local currentState

local function SetState(newState)
	currentState = newState
end

local function SetSelectableClass(class)
	currentSelectedClass = class
end

local function SelectClass(class)
	Events.Broadcast(EVENT_CLASS_SELECTED, class)
	
	Task.Wait(1.5)
	ROOT.visibility = Visibility.FORCE_OFF
end

local function ViewClass(class)
	viewingClass = class
	if Object.IsValid(currentViewingPanel) then
		EASE_UI.EaseY(currentViewingPanel, -UI.GetScreenSize().y, EASE_DURATION_DETAILS)
		EASE_UI.EaseOpacity(currentViewingPanel, 0, EASE_DURATION_DETAILS)
	end

	currentViewingPanel = detailPanels[class]
	
	if Object.IsValid(currentViewingPanel) then
		EASE_UI.EaseY(currentViewingPanel, 0, EASE_DURATION_DETAILS)
		EASE_UI.EaseOpacity(currentViewingPanel, 1, EASE_DURATION_DETAILS)
		if currentSelectedClass ~= class then
			swappingPanelBackGround:SetImage(CLASS_IMAGES[class]["image"])
			EASE_UI.EaseOpacity(swappingPanel, 1, EASE_DURATION_DETAILS)
			EASE_UI.EaseOpacity(ClassSelectionPanel, 0, EASE_DURATION_DETAILS)

		else
			EASE_UI.EaseOpacity(swappingPanel, 0, EASE_DURATION_DETAILS)
			EASE_UI.EaseOpacity(ClassSelectionPanel, 1, EASE_DURATION_DETAILS)
		end
	end
end

local function OpenPanel(panel)
	local funcMap = {
		[ClassSelectionPanels["W"]] = function()
			EASE_UI.EaseX(ClassSelectionPanels["V"], -UI.GetScreenSize().x, EASE_DURATION_SHOW)
			EASE_UI.EaseX(ClassSelectionPanels["A"], -UI.GetScreenSize().x, EASE_DURATION_SHOW)

		end,
		[ClassSelectionPanels["A"]] = function()
			EASE_UI.EaseX(ClassSelectionPanels["V"], -UI.GetScreenSize().x, EASE_DURATION_SHOW)
			EASE_UI.EaseX(ClassSelectionPanels["W"], UI.GetScreenSize().x, EASE_DURATION_SHOW)
		end,
		[ClassSelectionPanels["V"]] = function()
			EASE_UI.EaseX(ClassSelectionPanels["W"], UI.GetScreenSize().x, EASE_DURATION_SHOW)
			EASE_UI.EaseX(ClassSelectionPanels["A"], UI.GetScreenSize().x, EASE_DURATION_SHOW)
		end,
	}

	if funcMap[panel] then
		funcMap[panel]()
		EASE_UI.EaseWidth(panel, 5000, EASE_DURATION_DETAILS)
		EASE_UI.EaseHeight(panel, 5000, EASE_DURATION_DETAILS)
		EASE_UI.EaseOpacity(background, 1, EASE_DURATION_DETAILS)
		EASE_UI.EaseOpacity(chooseYourClassPanel, 0, EASE_DURATION_DETAILS)
		EASE_UI.EaseY(classSelectionData[BackMap[panel]].background, -105, EASE_DURATION_DETAILS)
		EASE_UI.EaseY(classSelectionData[BackMap[panel]].highlight, UI.GetScreenSize().y, EASE_DURATION_DETAILS)
		EASE_UI.EaseX(classSelectionData[BackMap[panel]].background, 0, EASE_DURATION_DETAILS)
		EASE_UI.EaseX(panel, 0, EASE_DURATION_DETAILS)
		ViewClass(classSelectionData[BackMap[panel]].class)
	end
end

local function BackToFront()
	ViewClass(nil)

	EASE_UI.EaseOpacity(chooseYourClassPanel, 1, EASE_DURATION_SHOW)
	EASE_UI.EaseOpacity(background, defaultOpacity, EASE_DURATION_SHOW)

	for key, value in pairs(ClassSelectionPanels) do
		local data = classSelectionData[key]
		EASE_UI.EaseWidth(value, data.originalwidth, EASE_DURATION_DETAILS)
		EASE_UI.EaseHeight(value, data.originalheight, EASE_DURATION_DETAILS)
		EASE_UI.EaseY(data.background, data.backgroundy, EASE_DURATION_DETAILS)
		EASE_UI.EaseY(data.highlight, data.highlighty, EASE_DURATION_DETAILS)
		EASE_UI.EaseX(data.background, data.backgroundx, EASE_DURATION_DETAILS)
		EASE_UI.EaseX(value, data.originalx, EASE_DURATION_DETAILS)

		data.button.visibility = Visibility.FORCE_OFF
	end
	Task.Wait(.2)
	for key, value in pairs(ClassSelectionPanels) do
		local data = classSelectionData[key]
		data.button.visibility = Visibility.INHERIT
	end
end

local function BackToMain()
	ViewClass(currentSelectedClass)
end

local function Reset()
	currentSelectedClass = nil
	viewingClass = nil
	currentViewingPanel = nil
	for panel, value in pairs(allPanelData) do
		for key, index in pairs(value) do
			if panel[key] then
				panel[key] = index
			end
		end
	end

	for key, panel in pairs(detailPanelsData) do
		panel.root.opacity = 0
		panel.confirmButton.parent.visibility = Visibility.FORCE_OFF
	end

	for key, value in pairs(classSelectionData) do
		local root = value.root
		root.x = value.originalx
		root.width = value.originalwidth
		root.height = value.originalheight
		value.highlight.y = value.highlighty
		value.highlight.x = value.highlightx
		value.button.visibility = Visibility.INHERIT
	end

	ClassSelectionPanel.y = UI.GetScreenSize().y
	background.opacity = 0
	chooseYourClassPanel.opacity = 0
	ROOT.opacity = 0
end

local function SetUpPanels(class)
	if not class:HasClass() then
		Events.Broadcast("ClassSelect.Open", LOCAL_PLAYER, "BaseClass")
	else
		Events.Broadcast("ClassSelect.Open", LOCAL_PLAYER, "SubClass")
	end
	local myclass = class:GetClass()

	for key, data in pairs(classSelectionData) do
		if subClass[myclass] then
			for index, value in ipairs(subClass[myclass]) do
				local childClass = classAPI.GetClass(value)
				if childClass and childClass["Stat"] == key then
					local image = CLASS_IMAGES[childClass["ClassIdentifier"]]["image"]
					if image then
						data.background:SetImage(image)
					end
					data.name.text = childClass["ClassIdentifier"]
					data.class = childClass["ClassIdentifier"]
					local comingSoon = Get(data.root,
						"Coming Soon Panel"
					)
					if UnselectableClasses[data.class] then
						comingSoon.visibility = Visibility.INHERIT
					else
						comingSoon.visibility = Visibility.FORCE_OFF
					end
				end
			end
		end
	end

	if subClass[myclass] then
		for index, value in ipairs(subClass[myclass]) do
			detailPanelsData[value].confirmButton.parent.visibility = Visibility.INHERIT
		end
	end
end

local function Show(panel)
	if not panel == ROOT then return end
	if currentState ~= states.closed then return end

	local Character = EquipApi.GetCurrentCharacter(LOCAL_PLAYER)
	if not Character then return end
	SetState(states.open)

	EASE_UI.EaseY(ClassSelectionPanel, 45, 0.6, EASE_UI.EasingDirection.INOUT)
	EASE_UI.EaseOpacity(background, defaultOpacity, EASE_DURATION_SHOW)
	EASE_UI.EaseOpacity(chooseYourClassPanel, 1, EASE_DURATION_SHOW)
	EASE_UI.EaseOpacity(ROOT, 1, EASE_DURATION_SHOW)
	local class = Character:GetComponent("Class")
	SetUpPanels(class)

	ROOT.visibility = Visibility.INHERIT
end

local function Close()
	if currentState == states.closed then return end
	SetState(states.closed)
	Reset()
end

local function Hide()
	if currentState == states.closing then return end
	SetState(states.closing)
	EASE_UI.EaseY(ClassSelectionPanel, UI.GetScreenSize().y, EASE_DURATION_HIDE)
	EASE_UI.EaseOpacity(background, 0, EASE_DURATION_HIDE)
	EASE_UI.EaseOpacity(chooseYourClassPanel, 0, EASE_DURATION_HIDE)
	EASE_UI.EaseOpacity(ROOT, 0, EASE_DURATION_HIDE)

	ROOT.visibility = Visibility.FORCE_OFF
end

local function Back()
	if currentSelectedClass ~= viewingClass then
		BackToMain()
	else
		BackToFront()
	end
end

for key, panel in pairs(ClassSelectionPanels) do
	local paneldata = {
		root           = panel,
		background     = Get(panel, "BG"),
		backgroundx    = Get(panel, "BG").x,
		backgroundy    = Get(panel, "BG").y,
		originalx      = panel.x,
		originalwidth  = panel.width,
		originalheight = panel.height,
		button         = Get(panel, "Button"),
		highlight      = Get(panel, "Highlight"),
		highlighty     = Get(panel, "Highlight").y,
		highlightx     = Get(panel, "Highlight").x,
		name           = Get(panel, "Name")
	}
	paneldata.button.pressedEvent:Connect(function()
		if UnselectableClasses[paneldata.class] then return end
		PlaySound("Click")
		SetSelectableClass(paneldata.class)
		OpenPanel(paneldata.root)
		paneldata.button.visibility = Visibility.FORCE_OFF
	end)
	classSelectionData[key] = paneldata
end

for key, panel in pairs(detailPanels) do
	local paneldata = {
		root          = panel,
		originalx     = panel.x,
		backButton    = Get(panel, "Back Button"),
		confirmButton = Get(panel, "Confirm Button"),
	}

	paneldata.confirmButton.pressedEvent:Connect(function()
		PlaySound("Click")
		SelectClass(key)
	end)
	paneldata.backButton.pressedEvent:Connect(Back)
	panel.y                                   = -UI.GetScreenSize().y
	panel.opacity                             = 0
	paneldata.confirmButton.parent.visibility = Visibility.FORCE_OFF
	detailPanelsData[key]                     = paneldata
end

for key, value in pairs(classAPI.GetMainClasses()) do
	if Object.IsValid(detailPanels[key]) then
		for i = 1, 3 do
			local subpanel = Get(detailPanels[key], "Subclass " .. i)
			local button   = Get(subpanel, "Button")
			button.pressedEvent:Connect(function()
				PlaySound("Click")
				ViewClass(subClass[key][i])
			end)
		end
	end
end


function SetData()
	for index, value in ipairs(allPanels) do
		allPanelData[value] = {
			width      = value.width,
			height     = value.height,
			x          = value.x,
			y          = value.y,
			visibility = value.visibility,
			opacity    = value.opacity
		}
	end
end

SetData()
Close()


Events.Connect(EVENT_SHOW_CLASS_SELECT, Show)
Events.Connect(PREPARE_TO_CLOSE, Hide)
Events.Connect(CLOSE_EVENT, Close)
