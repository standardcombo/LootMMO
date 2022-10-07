local ENTER_TRIGGER = script:GetCustomProperty("EnterTrigger"):WaitForObject()
local EXIT_TRIGGER = script:GetCustomProperty("ExitTrigger"):WaitForObject()

local AppState = _G["AppState"]

local MODAL = script:GetCustomProperty("ModalPopup"):WaitForObject()
MODAL = MODAL.context


local MAIN_PANEL = script:GetCustomProperty("MainPanel"):WaitForObject()
local CLOSE_BUTTON = script:GetCustomProperty("CloseButton"):WaitForObject()

local STATE_DISABLED = 1
local STATE_ENTERING = 2
local STATE_IDLE = 3
local currentState = STATE_DISABLED
local stateElapsedTime = 0

function SetState(newState)
	if newState == STATE_DISABLED then
		ENTER_TRIGGER.isInteractable = true

	elseif newState == STATE_ENTERING then
		ENTER_TRIGGER.isInteractable = false

	elseif newState == STATE_IDLE then
		--
	end
	currentState = newState
	stateElapsedTime = 0
end 

local function Open()
	MODAL.Show()
	SetState(STATE_ENTERING)

	Events.BroadcastToServer("CraftPotionsOpened", Game.GetLocalPlayer())
end

local function Close()
	MODAL.Hide()
end

SetState(STATE_DISABLED)

function OnInteracted(trigger, player)
	AppState.SetLocalState(AppState.Cauldron)
end

function OnLeaveArea(trigger, player)
	if player == Game.GetLocalPlayer() then
		AppState.SetLocalState(AppState.SocialHub)
	end
end

Events.Connect(AppState.EnterKey, function(_,newState)
	if newState == AppState.Cauldron then
		Open()
	elseif newState ~= AppState.Cauldron then
		Close()
	end
end)
ENTER_TRIGGER.interactedEvent:Connect(OnInteracted)
EXIT_TRIGGER.endOverlapEvent:Connect(OnLeaveArea)

function OnModalHidden(modal)
	if modal == MODAL then
		local player = Game.GetLocalPlayer()
		Events.BroadcastToServer("CraftPotionsClosed", player)

		Task.Wait(0.5)

		SetState(STATE_DISABLED)
	end
end

Events.Connect("ModalHidden", OnModalHidden)
