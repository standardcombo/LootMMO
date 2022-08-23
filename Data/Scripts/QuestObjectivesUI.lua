
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
local nextSelectedObjective = nil
local nextSelectedRow = nil


local STATE_HIDDEN = 0
local STATE_COLLAPSED = 1
local STATE_EXPANDED = 2
local STATE_SELECTED = 3
local STATE_COMPLETED_1 = 4
local STATE_COMPLETED_2 = 5
local STATE_COMPLETED_3 = 6
local currentState = STATE_HIDDEN
local stateElapsedTime = 0


function Expand()
	SetState(STATE_EXPANDED)
end

function Collapse()
	if selectedRow then
		selectedRow = CONTENT_SCRIPT.context.GetSelectedRow()
		SetState(STATE_SELECTED)
	else
		SetState(STATE_COLLAPSED)
	end
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
	
		local pos = selectedRow:GetAbsolutePosition()
		selectedRow.parent = ROOT
		selectedRow:SetAbsolutePosition(pos)
		
	elseif newState == STATE_COMPLETED_1 then
		-- nothing
		
	elseif newState == STATE_COMPLETED_2 then
		nextSelectedRow.opacity = 0
		nextSelectedRow.parent = selectedRow.parent
		local pos = selectedRow:GetAbsolutePosition()
		pos.y = pos.y + selectedRow.height + 10
		nextSelectedRow:SetAbsolutePosition(pos)
		
	elseif newState == STATE_COMPLETED_3 then
		-- Tell the quest system to select this objective
		_G.QuestController.SelectObjective(Game.GetLocalPlayer(), nextSelectedObjective)
		
		-- Change the state of the row
		CONTENT_SCRIPT.context.SetRowStateSelected(nextSelectedRow)
		
	end
	currentState = newState
	stateElapsedTime = 0
end

function Tick(deltaTime)
	if not IsInActiveState() then
		ROOT.visibility = Visibility.FORCE_OFF
		return
	end
	ROOT.visibility = Visibility.INHERIT

	stateElapsedTime = stateElapsedTime + deltaTime

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
		
	elseif currentState == STATE_COMPLETED_1 then
		EXPANDING_PANEL.opacity = CoreMath.Lerp(EXPANDING_PANEL.opacity, 0, t)
		selectedRow.x = 0
		selectedRow.y = 0
		if stateElapsedTime > 1 then
			SetState(currentState + 1)
		end
		
	elseif currentState == STATE_COMPLETED_2 then
		if stateElapsedTime > 1 then
			SetState(currentState + 1)
		else
			nextSelectedRow.opacity = CoreMath.Lerp(nextSelectedRow.opacity, 1, t)
		end
		
	elseif currentState == STATE_COMPLETED_3 then
		if stateElapsedTime > 1 then
			selectedObjective = nextSelectedObjective
			selectedRow = nextSelectedRow
			nextSelectedObjective = nil
			nextSelectedRow = nil
			
			SetState(STATE_SELECTED)
		else
			selectedRow.opacity = CoreMath.Lerp(selectedRow.opacity, 0, t)
			nextSelectedRow.y = CoreMath.Lerp(nextSelectedRow.y, 0, t / 3)
		end
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
	--print("QuestObjectivesUI: " ..obj.questId .." selected")
	
	selectedObjective = obj
	selectedRow = uiRow
	
	SetState(STATE_SELECTED)
	
	-- TODO: Auto-nav
end


function UpdateContents()
	--print("QuestObjectivesUI::UpdateContents()")

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
	
	-- Check if the currently selected objective has been completed
	if selectedObjective and selectedRow then
		for _,obj in ipairs(activeObjectives) do
			if obj.questId == selectedObjective.questId
			and obj.index > selectedObjective.index then
				nextSelectedObjective = obj
				nextSelectedRow = CONTENT_SCRIPT.context.AddObjective(obj)
				
				CONTENT_SCRIPT.context.SetRowStateCompleted(selectedRow)
				
				if currentState ~= STATE_SELECTED then
					SetState(STATE_SELECTED)
				end
				SetState(STATE_COMPLETED_1)
				
				return --Exit condition, no badge update, etc
			end
		end	
	end
	
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


