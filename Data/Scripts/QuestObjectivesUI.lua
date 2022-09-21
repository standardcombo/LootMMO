
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
local NOTIFICATION_RING = script:GetCustomProperty("NotificationRing"):WaitForObject()
local FTUE_ARROW = script:GetCustomProperty("FTUEArrow"):WaitForObject()

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
local badgeNotSeenCount = 0

local notifRingMaxSize = NOTIFICATION_RING.width

local fWidth = COLLAPSED_WIDTH
local fHeight = COLLAPSED_HEIGHT

local activeObjectives = {}
local selectedObjective = nil
local selectedRow = nil
local nextSelectedObjective = nil
local nextSelectedRow = nil

local pendingUpdateData = false

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
	-- Exit state changes
	if currentState == STATE_EXPANDED then
		_G.CursorStack.Disable()
		FTUE_ARROW.visibility = Visibility.FORCE_OFF
	end
	
	-- Enter state changes
	if newState == STATE_HIDDEN then
		-- Nothing
		
	elseif newState == STATE_COLLAPSED then
		-- Nothing
		
	elseif newState == STATE_EXPANDED then
		_G.CursorStack.Enable()
		
		if currentState == STATE_SELECTED then
			EXPANDING_PANEL.opacity = 1
			fHeight = selectedRow.height
			EXPANDING_PANEL.height = fHeight
		end
		
		UpdateContents()
		
		if not _G.QuestController.HasCompleted(PLAYER, "Welcome") then
			FTUE_ARROW.visibility = Visibility.INHERIT
		end
		
	elseif newState == STATE_SELECTED then
		local pos = selectedRow:GetAbsolutePosition()
		selectedRow.parent = ROOT
		selectedRow:SetAbsolutePosition(pos)
		
	elseif newState == STATE_COMPLETED_1 then
		-- nothing
		
	elseif newState == STATE_COMPLETED_2 then
		if nextSelectedRow then
			nextSelectedRow.opacity = 0
			nextSelectedRow.parent = selectedRow.parent
			local pos = selectedRow:GetAbsolutePosition()
			pos.y = pos.y + selectedRow.height + 10
			nextSelectedRow:SetAbsolutePosition(pos)
		end
		
	elseif newState == STATE_COMPLETED_3 then
		if nextSelectedRow then
			-- Tell the quest system to select this objective
			_G.QuestController.SelectObjective(Game.GetLocalPlayer(), nextSelectedObjective)
			
			-- Change the state of the row
			CONTENT_SCRIPT.context.SetRowStateSelected(nextSelectedRow)
		end
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
	
	if pendingUpdateData then
		deltaTime = deltaTime * 2
	end
	
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
		EXPANDING_PANEL.opacity = CoreMath.Lerp(EXPANDING_PANEL.opacity, 1, t)
		
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
		EXPANDING_PANEL.opacity = CoreMath.Lerp(EXPANDING_PANEL.opacity, 1, t)
	
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
			
		elseif nextSelectedRow then
			nextSelectedRow.opacity = CoreMath.Lerp(nextSelectedRow.opacity, 1, t)
		end
		
	elseif currentState == STATE_COMPLETED_3 then
		if stateElapsedTime > 1 then
			selectedObjective = nil
			selectedRow = nil
			
			if nextSelectedObjective then
				OnObjectiveSelected(nextSelectedObjective, nextSelectedRow)
				nextSelectedObjective = nil
				nextSelectedRow = nil
				
			else
				UpdateBadge(true)
				
				if badgeNotSeenCount > 0 then
					SetState(STATE_COLLAPSED)
				else
					SetState(STATE_HIDDEN)
				end
			end
			
			if pendingUpdateData then
				UpdateData()
			end
		else
			selectedRow.opacity = CoreMath.Lerp(selectedRow.opacity, 0, t)
			if nextSelectedRow then
				nextSelectedRow.y = CoreMath.Lerp(nextSelectedRow.y, 0, t / 3)
			end
		end
	end
	
	UpdateNotificationRing()
	UpdateFTUEArrow()
end

function UpdateNotificationRing()
	if BADGE.visibility == Visibility.FORCE_OFF then
		NOTIFICATION_RING.visibility = Visibility.FORCE_OFF
	else
		NOTIFICATION_RING.visibility = Visibility.INHERIT
		
		local t = math.fmod(time(), math.pi / 2)
		local wave = math.sin(t)
		local radius = wave * notifRingMaxSize
		NOTIFICATION_RING.width = CoreMath.Round(radius)
		NOTIFICATION_RING.height = CoreMath.Round(radius)
		local c = NOTIFICATION_RING:GetColor()
		c.a = 1 - wave*wave
		NOTIFICATION_RING:SetColor(c)
	end
end

function UpdateFTUEArrow()
	if FTUE_ARROW.visibility == Visibility.INHERIT then
		local t = math.sin(time() * 3)
		FTUE_ARROW.x = t * 15 - 10
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
	
	-- Tell the quest system to select this objective
	_G.QuestController.SelectObjective(PLAYER, obj)
	
	-- Go into selected UI state
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
	if currentState == STATE_COMPLETED_1
	or currentState == STATE_COMPLETED_2
	or currentState == STATE_COMPLETED_3 then
		pendingUpdateData = true
		return
	end
	pendingUpdateData = false
	
	activeObjectives = _G.QuestController.GetActiveObjectives(PLAYER)
	
	-- Check for updates in the currently selected objective
	if selectedObjective and selectedRow then
		for _,obj in ipairs(activeObjectives) do
			if obj.questId == selectedObjective.questId then
				-- Check if count progress was made on the currently selected objective
				if obj.count > 0 and _G.QuestController.GetObjectiveProgress(PLAYER, obj) < obj.count then
					CONTENT_SCRIPT.context.UpdateRowProgress(selectedRow)
				
				-- Check if the currently selected objective has been completed
				elseif obj.index > selectedObjective.index then
					nextSelectedObjective = obj
					nextSelectedRow = CONTENT_SCRIPT.context.AddObjective(obj)
					
					CONTENT_SCRIPT.context.SetRowStateCompleted(selectedRow)
					
					if currentState ~= STATE_SELECTED then
						SetState(STATE_SELECTED)
					end
					SetState(STATE_COMPLETED_1)
				end
				-- Exit condition where the selected objective is achieved
				return -- no badge update, etc
			end
		end
		
		local completedIds = _G.QuestController.GetCompletedQuestIDs(PLAYER)
		for _,id in ipairs(completedIds) do
			if id == selectedObjective.questId then
				CONTENT_SCRIPT.context.SetRowStateCompleted(selectedRow)
				
				if currentState ~= STATE_SELECTED then
					SetState(STATE_SELECTED)
				end
				SetState(STATE_COMPLETED_1)
				
				-- Exit condition where the quest for selected objective is complete
				return -- no badge update, etc
			end
		end
	end
	
	UpdateBadge()
	
	-- State change
	if currentState == STATE_HIDDEN and badgeNotSeenCount > 0 then
		SetState(STATE_COLLAPSED)
	end
end

Events.Connect("Quest_Changed", UpdateData)


function UpdateBadge(forceCountAll)
	badgeNotSeenCount = 0
	for _,obj in ipairs(activeObjectives) do
		if not obj.hasSeen or forceCountAll then
			badgeNotSeenCount = badgeNotSeenCount + 1
		end
	end
	if badgeNotSeenCount <= 0 then
		BADGE.visibility = Visibility.FORCE_OFF
	else
		BADGE.visibility = Visibility.INHERIT
		
		local uiText = BADGE:FindDescendantByType("UIText")
		uiText.text = tostring(badgeNotSeenCount)
	end
end


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


