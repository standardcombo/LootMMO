-- Call this event to show the UI. Bool param: canSelectSubclass?
local EVENT_SHOW_UI = "Ability_OpenPanel"
local EVENT_HIDE_UI = "Ability_Close"
-- Called by this script when a class is selected. String param: Class name
local EVENT_CLASS_SELECTED = "ClassSelection.Class"

-- Called by this script when a subclass is selected. String param: Subclass name
local EVENT_SUBCLASS_SELECTED = "ClassSelection.Subclass"

local ROOT_CONTAINER = script:GetCustomProperty("UIContainer"):WaitForObject()
local BACKGROUND_FADE = script:GetCustomProperty("BackgroundFade"):WaitForObject()
local TITLE = script:GetCustomProperty("Title"):WaitForObject()
local CLASS_SELECTION_PANEL = script:GetCustomProperty("ClassSelectionPanel"):WaitForObject()

local WARRIOR_PANEL = script:GetCustomProperty("WarriorPanel"):WaitForObject()
local WARRIOR_BG = script:GetCustomProperty("WarriorBG"):WaitForObject()
local WARRIOR_CORNER_CIRCLE = script:GetCustomProperty("WarriorCornerCircle"):WaitForObject()
local WARRIOR_NAME = script:GetCustomProperty("WarriorName"):WaitForObject()
local WARRIOR_BUTTON = script:GetCustomProperty("WarriorButton"):WaitForObject()

local HUNTER_PANEL = script:GetCustomProperty("HunterPanel"):WaitForObject()
local HUNTER_BG = script:GetCustomProperty("HunterBG"):WaitForObject()
local HUNTER_CORNER_CIRCLE = script:GetCustomProperty("HunterCornerCircle"):WaitForObject()
local HUNTER_NAME = script:GetCustomProperty("HunterName"):WaitForObject()
local HUNTER_BUTTON = script:GetCustomProperty("HunterButton"):WaitForObject()

local MAGE_PANEL = script:GetCustomProperty("MagePanel"):WaitForObject()
local MAGE_BG = script:GetCustomProperty("MageBG"):WaitForObject()
local MAGE_CORNER_CIRCLE = script:GetCustomProperty("MageCornerCircle"):WaitForObject()
local MAGE_NAME = script:GetCustomProperty("MageName"):WaitForObject()
local MAGE_BUTTON = script:GetCustomProperty("MageButton"):WaitForObject()

local function Get(panel, desendant)
	local newpanel = panel:FindDescendantByName(desendant)
	assert(newpanel)
	return newpanel
end

local LERP_SPEED = 11.5


local warriorUI = {
	panel = WARRIOR_PANEL,
	bg = WARRIOR_BG,
	defaultBgX = WARRIOR_BG.x,
	cornerCircle = WARRIOR_CORNER_CIRCLE,
	name = WARRIOR_NAME,
	button = WARRIOR_BUTTON
}
local hunterUI = {
	panel = HUNTER_PANEL,
	bg = HUNTER_BG,
	defaultBgX = HUNTER_BG.x,
	cornerCircle = HUNTER_CORNER_CIRCLE,
	name = HUNTER_NAME,
	button = HUNTER_BUTTON
}
local mageUI = {
	panel = MAGE_PANEL,
	bg = MAGE_BG,
	defaultBgX = MAGE_BG.x,
	cornerCircle = MAGE_CORNER_CIRCLE,
	name = MAGE_NAME,
	button = MAGE_BUTTON
}

local defaultFadeColor = BACKGROUND_FADE:GetColor()
local defaultClassPanelY = CLASS_SELECTION_PANEL.y
local defaultWarriorX = WARRIOR_PANEL.x
local defaultHunterX = HUNTER_PANEL.x
local defaultMageX = MAGE_PANEL.x
local defaultPanelWidth = WARRIOR_PANEL.width
local defaultPanelHeight = WARRIOR_PANEL.height
local defaultCornerCircleY = WARRIOR_CORNER_CIRCLE.y

local targetWarriorX = defaultWarriorX
local targetHunterX = defaultHunterX
local targetMageX = defaultMageX
local fWidth = defaultPanelWidth
local fHeight = defaultPanelHeight

local canSelectSubclass = false
local selectedClassUI = nil
local detailsPanel = nil
local detailsPanelDefaultX = 0
local subclassBackground = nil
local subclassPanel = nil

local eventListeners = {}

local selectedClassId = ""
local selectedSubclassId = ""
local subclassIds = nil

local STATE_HIDDEN = 0
local STATE_IN = 10
local STATE_OUT = 11
local STATE_CHOOSE_CLASS = 20
local STATE_TO_CLASS = 30
local STATE_BACK_TO_CHOOSE = 40
local STATE_CLASS_DETAILS = 50
local STATE_TO_SUBCLASS_1 = 61
local STATE_TO_SUBCLASS_2 = 62
local STATE_BACK_TO_CLASS_1 = 71
local STATE_BACK_TO_CLASS_2 = 72
local STATE_SUBCLASS_DETAILS = 80

local currentState = -1
local stateElapsedTime = 0

function Show(panel)
	if panel == ROOT_CONTAINER then
		canSelectSubclass = false --_canSelectSubclass
		SetState(STATE_IN)
	end
end

table.insert(eventListeners,
	Events.Connect(EVENT_SHOW_UI, Show)
)


function SetState(newState)
	local StateSwitch =
	{
		['STATE_HIDDEN'] = function()
			if Object.IsValid(detailsPanel) then
				detailsPanel:Destroy()
			end
			if Object.IsValid(subclassBackground) then
				subclassBackground:Destroy()
			end
			if Object.IsValid(subclassPanel) then
				subclassPanel:Destroy()
			end
			ROOT_CONTAINER.visibility = Visibility.FORCE_OFF
		end,
		['STATE_IN'] = function()
			ROOT_CONTAINER.visibility = Visibility.INHERIT
			ROOT_CONTAINER.opacity = 0
			CLASS_SELECTION_PANEL.y = 500

			WARRIOR_BUTTON.visibility = Visibility.FORCE_OFF
			HUNTER_BUTTON.visibility = Visibility.FORCE_OFF
			MAGE_BUTTON.visibility = Visibility.FORCE_OFF
		end,
		['STATE_CHOOSE_CLASS'] = function()
			ROOT_CONTAINER.opacity = 1
			CLASS_SELECTION_PANEL.y = defaultClassPanelY

			WARRIOR_BUTTON.visibility = Visibility.INHERIT
			HUNTER_BUTTON.visibility = Visibility.INHERIT
			MAGE_BUTTON.visibility = Visibility.INHERIT
		end,
		['STATE_TO_CLASS'] = function()
			local classDetailsTemplate = nil
			if selectedClassUI == warriorUI then
				classDetailsTemplate = DETAILS_PANEL_WARRIOR
			elseif selectedClassUI == hunterUI then
				classDetailsTemplate = DETAILS_PANEL_HUNTER
			else
				classDetailsTemplate = DETAILS_PANEL_MAGE
			end
			detailsPanel = SpawnAndSetupClassDetailsPanel(classDetailsTemplate)

			detailsPanel.opacity = 0
			detailsPanel.y = -400
		end,

	}

	if currentState == STATE_CHOOSE_CLASS then
		WARRIOR_BUTTON.visibility = Visibility.FORCE_OFF
		HUNTER_BUTTON.visibility = Visibility.FORCE_OFF
		MAGE_BUTTON.visibility = Visibility.FORCE_OFF
	end
	if StateSwitch[currentState] then
		StateSwitch[currentState]()
	end

	currentState = newState
	stateElapsedTime = 0
end

SetState(STATE_HIDDEN)


function SelectWarrior()
	if currentState == STATE_CHOOSE_CLASS then
		selectedClassId = "Warrior"
		subclassIds = { "Fighter", "Shaman", "Paladin" }

		selectedClassUI = warriorUI
		targetWarriorX = defaultWarriorX
		targetHunterX = 900
		targetMageX = 1800

		SetState(STATE_TO_CLASS)
	end
end
function SelectHunter()
	if currentState == STATE_CHOOSE_CLASS then
		selectedClassId = "Hunter"
		subclassIds = { "Ranger", "Rogue", "Druid" }

		selectedClassUI = hunterUI
		targetWarriorX = -1000
		targetHunterX = defaultWarriorX
		targetMageX = 1000

		SetState(STATE_TO_CLASS)
	end
end
function SelectMage()
	if currentState == STATE_CHOOSE_CLASS then
		selectedClassId = "Mage"
		subclassIds = { "Sorcerer", "Healer", "Warlock" }

		selectedClassUI = mageUI
		targetWarriorX = -1800
		targetHunterX = -900
		targetMageX = defaultWarriorX

		SetState(STATE_TO_CLASS)
	end
end

function Tick(deltaTime)
	if currentState == STATE_HIDDEN then return end

	stateElapsedTime = stateElapsedTime + deltaTime
	local t = CoreMath.Clamp(deltaTime * LERP_SPEED)

	if currentState == STATE_IN then
		ROOT_CONTAINER.opacity = CoreMath.Lerp(ROOT_CONTAINER.opacity, 1, t)
		CLASS_SELECTION_PANEL.y = CoreMath.Lerp(CLASS_SELECTION_PANEL.y, defaultClassPanelY, t)

		if stateElapsedTime > 0.45 then
			ROOT_CONTAINER.opacity = 1
			CLASS_SELECTION_PANEL.y = defaultClassPanelY

			SetState(STATE_CHOOSE_CLASS)
		end

	elseif currentState == STATE_OUT then
		ROOT_CONTAINER.opacity = CoreMath.Lerp(ROOT_CONTAINER.opacity, 0, t)

		if stateElapsedTime > 0.5 then
			SetState(STATE_HIDDEN)
		end

	elseif currentState == STATE_TO_CLASS then
		-- Title
		local c = TITLE:GetColor()
		c = Color.Lerp(c, Color.TRANSPARENT, t)
		TITLE:SetColor(c)

		-- Black BG fade
		c = BACKGROUND_FADE:GetColor()
		c = Color.Lerp(c, Color.BLACK, t)
		BACKGROUND_FADE:SetColor(c)

		-- Move the 3 diamond panels
		WARRIOR_PANEL.x = CoreMath.Lerp(WARRIOR_PANEL.x, targetWarriorX, t)
		HUNTER_PANEL.x = CoreMath.Lerp(HUNTER_PANEL.x, targetHunterX, t)
		MAGE_PANEL.x = CoreMath.Lerp(MAGE_PANEL.x, targetMageX, t)

		-- Fade out the 2 panels that are not selected
		if selectedClassUI.panel ~= WARRIOR_PANEL then
			WARRIOR_PANEL.opacity = CoreMath.Lerp(WARRIOR_PANEL.opacity, 0, t)
		end
		if selectedClassUI.panel ~= HUNTER_PANEL then
			HUNTER_PANEL.opacity = CoreMath.Lerp(HUNTER_PANEL.opacity, 0, t)
		end
		if selectedClassUI.panel ~= MAGE_PANEL then
			MAGE_PANEL.opacity = CoreMath.Lerp(MAGE_PANEL.opacity, 0, t)
		end

		if stateElapsedTime > 0.3 then
			-- Scale up the size of the selected panel
			fWidth = CoreMath.Lerp(fWidth, 3260, t)
			fHeight = CoreMath.Lerp(fHeight, 2080, t * 0.9)
			selectedClassUI.panel.width = CoreMath.Round(fWidth)
			selectedClassUI.panel.height = CoreMath.Round(fHeight)

			-- Center on screen the background image of the selected class
			local pos = selectedClassUI.bg:GetAbsolutePosition()
			pos = Vector2.Lerp(pos, UI.GetScreenSize() / 2, t * 1.2)
			selectedClassUI.bg:SetAbsolutePosition(pos)

			-- Move down the corner circle and name of the selected class
			selectedClassUI.cornerCircle.y = CoreMath.Lerp(selectedClassUI.cornerCircle.y, 1000, t)
			selectedClassUI.name.y = selectedClassUI.cornerCircle.y

			-- Show details panel
			detailsPanel.opacity = CoreMath.Lerp(detailsPanel.opacity, 1, t)
			detailsPanel.y = CoreMath.Lerp(detailsPanel.y, 0, t)
		end
		-- Go to next state
		if stateElapsedTime > 1 then
			SetState(STATE_CLASS_DETAILS)
		end

	elseif currentState == STATE_BACK_TO_CHOOSE then
		-- Restore title
		local c = TITLE:GetColor()
		c = Color.Lerp(c, Color.WHITE, t)
		TITLE:SetColor(c)

		-- Restore color of background black fade
		c = BACKGROUND_FADE:GetColor()
		c = Color.Lerp(c, defaultFadeColor, t)
		BACKGROUND_FADE:SetColor(c)

		-- Scale down the size of the selected panel
		fWidth = CoreMath.Lerp(fWidth, defaultPanelWidth, t)
		fHeight = CoreMath.Lerp(fHeight, defaultPanelHeight, t)
		selectedClassUI.panel.width = CoreMath.Round(fWidth)
		selectedClassUI.panel.height = CoreMath.Round(fHeight)

		-- Restore position of the background image to its default in the diamond panel
		selectedClassUI.bg.x = CoreMath.Lerp(selectedClassUI.bg.x, selectedClassUI.defaultBgX, t)
		selectedClassUI.bg.y = CoreMath.Lerp(selectedClassUI.bg.y, 0, t)

		-- Restore position of corner circle and class name of the selected class
		selectedClassUI.cornerCircle.y = CoreMath.Lerp(selectedClassUI.cornerCircle.y, defaultCornerCircleY, t)
		selectedClassUI.name.y = selectedClassUI.cornerCircle.y

		-- Restore all 3 diamond panels to their original state
		WARRIOR_PANEL.x = CoreMath.Lerp(WARRIOR_PANEL.x, defaultWarriorX, t)
		HUNTER_PANEL.x = CoreMath.Lerp(HUNTER_PANEL.x, defaultHunterX, t)
		MAGE_PANEL.x = CoreMath.Lerp(MAGE_PANEL.x, defaultMageX, t)
		WARRIOR_PANEL.opacity = CoreMath.Lerp(WARRIOR_PANEL.opacity, 1, t)
		HUNTER_PANEL.opacity = CoreMath.Lerp(HUNTER_PANEL.opacity, 1, t)
		MAGE_PANEL.opacity = CoreMath.Lerp(MAGE_PANEL.opacity, 1, t)

		-- Hide the details panel
		detailsPanel.opacity = CoreMath.Lerp(detailsPanel.opacity, 0, t)

		-- Next state
		if stateElapsedTime > 0.65 then
			WARRIOR_PANEL.x = defaultWarriorX
			HUNTER_PANEL.x = defaultHunterX
			MAGE_PANEL.x = defaultMageX
			WARRIOR_PANEL.opacity = 1
			HUNTER_PANEL.opacity = 1
			MAGE_PANEL.opacity = 1

			detailsPanel:Destroy()

			SetState(STATE_CHOOSE_CLASS)
		end

	elseif currentState == STATE_CLASS_DETAILS then
		-- nothing

	elseif currentState == STATE_TO_SUBCLASS_1 then
		detailsPanel.opacity = CoreMath.Lerp(detailsPanel.opacity, 0, t)
		detailsPanel.x = CoreMath.Lerp(detailsPanel.x, 800, t)

		if stateElapsedTime > 0.35 then
			detailsPanel.opacity = 0
			detailsPanel.x = 800

			SetState(STATE_TO_SUBCLASS_2)
		end

	elseif currentState == STATE_TO_SUBCLASS_2 then
		if subclassBackground then
			subclassBackground.opacity = CoreMath.Lerp(subclassBackground.opacity, 1, t)
		end
		subclassPanel.opacity = CoreMath.Lerp(subclassPanel.opacity, 1, t)
		subclassPanel.x = CoreMath.Lerp(subclassPanel.x, detailsPanelDefaultX, t)

		if stateElapsedTime > 0.35 then
			if subclassBackground then
				subclassBackground.opacity = 1
			end
			subclassPanel.opacity = 1
			subclassPanel.x = detailsPanelDefaultX

			SetState(STATE_SUBCLASS_DETAILS)
		end

	elseif currentState == STATE_BACK_TO_CLASS_1 then
		if subclassBackground then
			subclassBackground.opacity = CoreMath.Lerp(subclassBackground.opacity, 0, t)
		end
		subclassPanel.opacity = CoreMath.Lerp(subclassPanel.opacity, 0, t)
		subclassPanel.x = CoreMath.Lerp(subclassPanel.x, 800, t)

		if stateElapsedTime > 0.35 then
			if subclassBackground then
				subclassBackground:Destroy()
			end
			subclassPanel:Destroy()

			SetState(STATE_BACK_TO_CLASS_2)
		end

	elseif currentState == STATE_BACK_TO_CLASS_2 then
		detailsPanel.opacity = CoreMath.Lerp(detailsPanel.opacity, 1, t)
		detailsPanel.x = CoreMath.Lerp(detailsPanel.x, detailsPanelDefaultX, t)

		if stateElapsedTime > 0.35 then
			detailsPanel.opacity = 1
			detailsPanel.x = detailsPanelDefaultX

			SetState(STATE_CLASS_DETAILS)
		end

	elseif currentState == STATE_SUBCLASS_DETAILS then
		-- nothing
	end
end

function OnBackPressed(btn)
	if currentState == STATE_CLASS_DETAILS then
		SetState(STATE_BACK_TO_CHOOSE)

	elseif currentState == STATE_SUBCLASS_DETAILS then
		SetState(STATE_BACK_TO_CLASS_1)
	end
end

function Hide()
	if currentState == STATE_HIDDEN then return end
	if currentState == STATE_CHOOSE_CLASS then
		SetState(STATE_BACK_TO_CHOOSE)
	end
	Task.Wait(1)
	SetState(STATE_OUT)
	Task.Wait(1)
	SetState(STATE_HIDDEN)
end

table.insert(eventListeners,
	Events.Connect(EVENT_HIDE_UI, Hide)
)

function OnConfirmPressed(btn)
	if currentState == STATE_CLASS_DETAILS then
		Events.Broadcast(EVENT_CLASS_SELECTED, selectedClassId)
		SetState(STATE_OUT)

	elseif currentState == STATE_SUBCLASS_DETAILS then
		Events.Broadcast(EVENT_SUBCLASS_SELECTED, selectedSubclassId)
		SetState(STATE_OUT)
	end
end

function OnSubclassPressed(btn, subclassBGTemplate, subclassPanelTemplate, _selectedSubclassId)
	if currentState ~= STATE_CLASS_DETAILS then return end

	selectedSubclassId = _selectedSubclassId

	if subclassBGTemplate then
		subclassBackground = World.SpawnAsset(subclassBGTemplate, { parent = ROOT_CONTAINER })
	else
		subclassBackground = nil
	end
	subclassPanel = World.SpawnAsset(subclassPanelTemplate, { parent = ROOT_CONTAINER })

	local backButton = subclassPanel:GetCustomProperty("BackButton"):WaitForObject()
	local confirmButton = subclassPanel:GetCustomProperty("ConfirmButton"):WaitForObject()

	table.insert(eventListeners,
		backButton.clickedEvent:Connect(OnBackPressed)
	)

	if canSelectSubclass then
		confirmButton.parent.visibility = Visibility.INHERIT

		table.insert(eventListeners,
			confirmButton.clickedEvent:Connect(OnConfirmPressed)
		)
	else
		confirmButton.parent.visibility = Visibility.FORCE_OFF
	end

	if subclassBackground then
		subclassBackground.opacity = 0
	end
	subclassPanel.opacity = 0
	subclassPanel.x = 800

	SetState(STATE_TO_SUBCLASS_1)
end

function SpawnAndSetupClassDetailsPanel(classDetailsTemplate)
	local detailsPanel = World.SpawnAsset(classDetailsTemplate, { parent = ROOT_CONTAINER })
	detailsPanelDefaultX = detailsPanel.x

	local backButton = detailsPanel:GetCustomProperty("BackButton"):WaitForObject()
	local confirmButton = detailsPanel:GetCustomProperty("ConfirmButton"):WaitForObject()
	local subclassButton1 = detailsPanel:GetCustomProperty("SubclassButton1"):WaitForObject()
	local subclassButton2 = detailsPanel:GetCustomProperty("SubclassButton2"):WaitForObject()
	local subclassButton3 = detailsPanel:GetCustomProperty("SubclassButton3"):WaitForObject()
	local subclassBG1 = detailsPanel:GetCustomProperty("SubclassBG1")
	local subclassBG2 = detailsPanel:GetCustomProperty("SubclassBG2")
	local subclassBG3 = detailsPanel:GetCustomProperty("SubclassBG3")
	local subclassPanel1 = detailsPanel:GetCustomProperty("SubclassPanel1")
	local subclassPanel2 = detailsPanel:GetCustomProperty("SubclassPanel2")
	local subclassPanel3 = detailsPanel:GetCustomProperty("SubclassPanel3")

	table.insert(eventListeners,
		backButton.clickedEvent:Connect(OnBackPressed)
	)
	table.insert(eventListeners,
		confirmButton.clickedEvent:Connect(OnConfirmPressed)
	)
	table.insert(eventListeners,
		subclassButton1.clickedEvent:Connect(OnSubclassPressed, subclassBG1, subclassPanel1, subclassIds[1])
	)
	table.insert(eventListeners,
		subclassButton2.clickedEvent:Connect(OnSubclassPressed, subclassBG2, subclassPanel2, subclassIds[2])
	)
	table.insert(eventListeners,
		subclassButton3.clickedEvent:Connect(OnSubclassPressed, subclassBG3, subclassPanel3, subclassIds[3])
	)
	return detailsPanel
end

table.insert(eventListeners,
	WARRIOR_BUTTON.clickedEvent:Connect(SelectWarrior)
)
table.insert(eventListeners,
	HUNTER_BUTTON.clickedEvent:Connect(SelectHunter)
)
table.insert(eventListeners,
	MAGE_BUTTON.clickedEvent:Connect(SelectMage)
)


script.destroyEvent:Connect(function()
	for _, listener in ipairs(eventListeners) do
		if listener and listener.isConnected then
			listener:Disconnect()
		end
	end
	eventListeners = {}
end)
