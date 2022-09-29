
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()

local MODAL = script:GetCustomProperty("ModalPopup"):WaitForObject()
MODAL = MODAL.context

local MAIN_PANEL = script:GetCustomProperty("MainPanel"):WaitForObject()
local PAGE_1 = script:GetCustomProperty("Page1"):WaitForObject()
local PAGE_2 = script:GetCustomProperty("Page2"):WaitForObject()
local BODY_PAGE_1 = script:GetCustomProperty("BodyPage1"):WaitForObject()
local NEXT_BUTTON = script:GetCustomProperty("NextButton"):WaitForObject()
local CLOSE_BUTTON = script:GetCustomProperty("CloseButton"):WaitForObject()

local DEFAULT_HEIGHT = MAIN_PANEL.height
local CLOSED_HEIGHT = 210
local fHeight = CLOSED_HEIGHT

local OPEN_CLOSE_SPEED = 10

local STATE_DISABLED = 1
local STATE_ENTERING = 2
local STATE_OPENING = 3
local STATE_IDLE = 4
local STATE_CLOSING = 5
local currentState = STATE_DISABLED
local stateElapsedTime = 0

local pageIndex = 1
local nextPageIndex = 1

-- Replace the player's name in the text body
local playerName = Game.GetLocalPlayer().name
BODY_PAGE_1.text = string.gsub(BODY_PAGE_1.text, "%<player name>", playerName)


function SetState(newState)
	if newState == STATE_DISABLED then
		MAIN_PANEL.height = CLOSED_HEIGHT
		fHeight = CLOSED_HEIGHT
		
	elseif newState == STATE_ENTERING then
		pageIndex = 1
		CLOSE_BUTTON.visibility = Visibility.FORCE_OFF
		
	elseif newState == STATE_IDLE then
		CLOSE_BUTTON.visibility = Visibility.INHERIT
	end
	
	if pageIndex == 1 then
		PAGE_1.visibility = Visibility.INHERIT
		PAGE_2.visibility = Visibility.FORCE_OFF
	else
		PAGE_1.visibility = Visibility.FORCE_OFF
		PAGE_2.visibility = Visibility.INHERIT
	end
	
	currentState = newState
	stateElapsedTime = 0
end


SetState(STATE_DISABLED)


function Tick(deltaTime)
	if currentState == STATE_DISABLED then return end
	
	stateElapsedTime = stateElapsedTime + deltaTime
	local t = CoreMath.Clamp(deltaTime * OPEN_CLOSE_SPEED)
	
	if currentState == STATE_ENTERING then
		if stateElapsedTime > 0.5 then
			SetState(STATE_OPENING)
		end
		
	elseif currentState == STATE_OPENING then
		fHeight = CoreMath.Lerp(MAIN_PANEL.height, DEFAULT_HEIGHT, t)
		MAIN_PANEL.height = CoreMath.Round(fHeight)
		
		if stateElapsedTime > 0.5 then
			SetState(STATE_IDLE)
		end
		
	elseif currentState == STATE_CLOSING then
		fHeight = CoreMath.Lerp(MAIN_PANEL.height, CLOSED_HEIGHT, t)
		MAIN_PANEL.height = CoreMath.Round(fHeight)
		
		if stateElapsedTime > 0.45 then
			pageIndex = nextPageIndex
			SetState(STATE_OPENING)
		end
	end
end


function OnInteracted(trigger, player)
	TRIGGER.isInteractable = false
	
	MODAL.Show()
	SetState(STATE_ENTERING)
	
	Events.BroadcastToServer("MailboxOpened", player)
end

TRIGGER.interactedEvent:Connect(OnInteracted)


function OnModalHidden(modal)
	if modal == MODAL then
		local player = Game.GetLocalPlayer()
		Events.BroadcastToServer("MailboxClosed", player)
		
		Task.Wait(1.5)
		TRIGGER.isInteractable = true
		
		SetState(STATE_DISABLED)
	end
end

Events.Connect("ModalHidden", OnModalHidden)


function OnNextPage(btn)
	if currentState == STATE_IDLE then
		nextPageIndex = pageIndex + 1
		SetState(STATE_CLOSING)
	end
end

NEXT_BUTTON.clickedEvent:Connect(OnNextPage)


