
local ROOT = script.parent
local CONTENT_SCRIPT = script:GetCustomProperty("ContentScript"):WaitForObject()
local EXPANDING_PANEL = script:GetCustomProperty("ExpandingPanel"):WaitForObject()
local CORNER_ARROW = script:GetCustomProperty("CornerArrow"):WaitForObject()
local KEY_BINDING_PANEL = script:GetCustomProperty("KeyBindingPanel"):WaitForObject()
local ACTIVE_GOALS_TITLE = script:GetCustomProperty("ActiveGoalsTitle"):WaitForObject()
local CONTENT_PANEL = script:GetCustomProperty("ContentPanel"):WaitForObject()
local CLOSE_BUTTON = script:GetCustomProperty("CloseButton"):WaitForObject()
local BADGE = script:GetCustomProperty("Badge"):WaitForObject()
local COLLAPSED_WIDTH = script:GetCustomProperty("CollapsedWidth")
local COLLAPSED_HEIGHT = script:GetCustomProperty("CollapsedHeight")

local LERP_SPEED = 12
local PLAYER = Game.GetLocalPlayer()

local DEFAULT_WIDTH = EXPANDING_PANEL.width
local DEFAULT_HEIGHT = EXPANDING_PANEL.height

EXPANDING_PANEL.width = COLLAPSED_WIDTH
EXPANDING_PANEL.height = COLLAPSED_HEIGHT

CORNER_ARROW.x = COLLAPSED_WIDTH
CORNER_ARROW.y = COLLAPSED_HEIGHT
CORNER_ARROW.rotationAngle = 180

KEY_BINDING_PANEL.opacity = 1
CONTENT_PANEL.opacity = 0

BADGE.visibility = Visibility.FORCE_OFF

local fWidth = COLLAPSED_WIDTH
local fHeight = COLLAPSED_HEIGHT

local activeObjectives = {}
local selectedObjective = nil
local selectedRow = nil


local STATE_HIDDEN = 0
local STATE_COLLAPSED = 1
local STATE_EXPANDED = 2
local STATE_SELECTED = 3
local currentState = STATE_HIDDEN


function Expand()
	SetState(STATE_EXPANDED)
end

function Collapse()
	SetState(STATE_COLLAPSED)
end


function SetState(newState)
	if newState == STATE_HIDDEN then
		-- Nothing
		
	elseif newState == STATE_COLLAPSED then
		if currentState ~= STATE_HIDDEN then
			_G.CursorStack.Disable()
		end
		
	elseif newState == STATE_EXPANDED then
		_G.CursorStack.Enable()
		
		if currentState == STATE_SELECTED then
			EXPANDING_PANEL.opacity = 1
			fHeight = selectedRow.height
			EXPANDING_PANEL.height = fHeight
		end
		
		UpdateContents()
		
	elseif newState == STATE_SELECTED then
		_G.CursorStack.Disable()
	end
	currentState = newState
end

function Tick(deltaTime)
	if not IsInActiveState() then
		ROOT.visibility = Visibility.FORCE_OFF
		return
	end
	ROOT.visibility = Visibility.INHERIT

	local t = deltaTime * LERP_SPEED
	t = CoreMath.Clamp(t)
	
	if currentState == STATE_EXPANDED then
		fWidth = CoreMath.Lerp(fWidth, DEFAULT_WIDTH, t)
		fHeight = CoreMath.Lerp(fHeight, DEFAULT_HEIGHT, t)
		EXPANDING_PANEL.width = CoreMath.Round(fWidth)
		EXPANDING_PANEL.height = CoreMath.Round(fHeight)
		
		CORNER_ARROW.x = CoreMath.Lerp(CORNER_ARROW.x, 0, t)
		CORNER_ARROW.y = CoreMath.Lerp(CORNER_ARROW.y, 0, t)
		CORNER_ARROW.rotationAngle = CoreMath.Lerp(CORNER_ARROW.rotationAngle, 0, t)
		
		KEY_BINDING_PANEL.opacity = CoreMath.Lerp(KEY_BINDING_PANEL.opacity, 0, t)
		CONTENT_PANEL.opacity = CoreMath.Lerp(CONTENT_PANEL.opacity, 1, t)
		
	elseif currentState == STATE_COLLAPSED then
		fWidth = CoreMath.Lerp(fWidth, COLLAPSED_WIDTH, t)
		fHeight = CoreMath.Lerp(fHeight, COLLAPSED_HEIGHT, t)
		EXPANDING_PANEL.width = CoreMath.Round(fWidth)
		EXPANDING_PANEL.height = CoreMath.Round(fHeight)
		
		CORNER_ARROW.x = CoreMath.Lerp(CORNER_ARROW.x, COLLAPSED_WIDTH, t)
		CORNER_ARROW.y = CoreMath.Lerp(CORNER_ARROW.y, COLLAPSED_HEIGHT, t)
		CORNER_ARROW.rotationAngle = CoreMath.Lerp(CORNER_ARROW.rotationAngle, 180, t)
		
		KEY_BINDING_PANEL.opacity = CoreMath.Lerp(KEY_BINDING_PANEL.opacity, 1, t)
		CONTENT_PANEL.opacity = CoreMath.Lerp(CONTENT_PANEL.opacity, 0, t)
	
	elseif currentState == STATE_SELECTED then
		EXPANDING_PANEL.opacity = CoreMath.Lerp(EXPANDING_PANEL.opacity, 0, t)
		selectedRow.x = CoreMath.Lerp(selectedRow.x, 0, t / 3)
		selectedRow.y = CoreMath.Lerp(selectedRow.y, 0, t / 3)
	end
end


CLOSE_BUTTON.clickedEvent:Connect(Collapse)

function OnBindingPressed(player, action)
	if action == "ability_1" 
	and IsInActiveState() then
		if currentState == STATE_EXPANDED then
			Collapse()
			
		elseif currentState == STATE_COLLAPSED
		or currentState == STATE_SELECTED then
			Expand()
		end
	end
end


function OnObjectiveSelected(obj, uiRow)
	print("Quest " ..obj.questId .." selected")
	
	selectedObjective = obj
	selectedRow = uiRow
	
	local pos = selectedRow:GetAbsolutePosition()
	selectedRow.parent = ROOT
	selectedRow:SetAbsolutePosition(pos)
	
	SetState(STATE_SELECTED)
	
	-- TODO: Auto-nav
end


function UpdateContents()
	CONTENT_SCRIPT.context.Clear()
	
	-- Header
	ACTIVE_GOALS_TITLE.text = "Active Goals: " .. #activeObjectives
	
	-- Add rows
	for _,obj in ipairs(activeObjectives) do
		obj.hasSeen = true --Mark objective as seen
		CONTENT_SCRIPT.context.AddObjective(obj)
	end
	
	-- Disable Badge
	BADGE.visibility = Visibility.FORCE_OFF
end

function UpdateData()
	activeObjectives = _G.QuestController.GetActiveObjectives(PLAYER)
	
	-- Update Badge
	local notSeenCount = 0
	for _,obj in ipairs(activeObjectives) do
		if not obj.hasSeen then
			notSeenCount = notSeenCount + 1
		end
	end
	if notSeenCount <= 0 then
		BADGE.visibility = Visibility.FORCE_OFF
	else
		BADGE.visibility = Visibility.INHERIT
		
		local uiText = BADGE:FindDescendantByType("UIText")
		uiText.text = tostring(notSeenCount)
	end
	
	-- State change
	if currentState == STATE_HIDDEN then
		SetState(STATE_COLLAPSED)
	end
end

Events.Connect("Quest_Changed", UpdateData)


function IsInActiveState()
	if currentState == STATE_HIDDEN then
		return false
	end
	local appState = _G.AppState.GetLocalState()
	return
		appState == _G.AppState.SocialHub or
		appState == _G.AppState.Mailbox or
		appState == _G.AppState.Adventure
end


PLAYER.bindingPressedEvent:Connect(OnBindingPressed)


Task.Wait()
CONTENT_SCRIPT.context.OnObjectiveSelected = OnObjectiveSelected


