--[[
	Modal Popup
	v1.2
	by: standardcombo
--]]

local MAIN_PANEL = script:GetCustomProperty("MainPanel"):WaitForObject()
local OUTSIDE_BUTTON = script:GetCustomProperty("OutsideButton"):WaitForObject()
local CLOSE_BUTTON = script:GetCustomProperty("CloseButton"):WaitForObject()
local OPEN_SFX = script:GetCustomProperty("OpenSFX"):GetObject()
local CLOSE_SFX = script:GetCustomProperty("CloseSFX"):GetObject()
local HIDE_SFX = script:GetCustomProperty("HideSFX"):GetObject()
local FADE_COLOR = script:GetCustomProperty("FadeColor")
local MOVE_SPEED = script:GetCustomProperty("MoveSpeed")
local OFF_Y = script:GetCustomProperty("OffScreenY")
local SHOW_CURSOR = script:GetCustomProperty("ShowCursor")

local defaultY = MAIN_PANEL.y

STATE_HIDDEN = 1
STATE_IN = 2
STATE_IDLE = 3
STATE_OUT = 4
currentState = STATE_HIDDEN
elapsedTime = 0


function Show()
	if OPEN_SFX then
		OPEN_SFX:Play()
	end
	SetState(STATE_IN)
end

function Hide()
	if currentState == STATE_IN
	or currentState == STATE_IDLE
	then
		if HIDE_SFX then
			HIDE_SFX:Play()
		end
		SetState(STATE_OUT)
		Events.Broadcast("ModalHidden", script.context)
	end
end

function SetState(newState)
	if newState == STATE_HIDDEN then
		MAIN_PANEL.visibility = Visibility.FORCE_OFF
		
		if OUTSIDE_BUTTON then
			OUTSIDE_BUTTON.visibility = Visibility.FORCE_OFF
		end
		
	elseif newState == STATE_IN then
		MAIN_PANEL.visibility = Visibility.INHERIT
		
		if OUTSIDE_BUTTON then
			OUTSIDE_BUTTON.visibility = Visibility.INHERIT
		end
		if SHOW_CURSOR then
			if _G.CursorStack then
				_G.CursorStack.Enable()
			else
				UI.SetCursorVisible(true)
				UI.SetCanCursorInteractWithUI(true)
			end
		end
		MAIN_PANEL.y = OFF_Y
	
	elseif newState == STATE_IDLE then
		-- do nothing
	
	elseif newState == STATE_OUT then
		if SHOW_CURSOR then
			if _G.CursorStack then
				_G.CursorStack.Disable()
			else
				UI.SetCursorVisible(false)
				UI.SetCanCursorInteractWithUI(false)
			end
		end
	end
	currentState = newState
	elapsedTime = 0
end


function Tick(deltaTime)
	elapsedTime = elapsedTime + deltaTime
	
	if currentState == STATE_IN then
		MAIN_PANEL.y = CoreMath.Lerp(MAIN_PANEL.y, defaultY, deltaTime * MOVE_SPEED)
		if MAIN_PANEL.y < defaultY + 1 then
			MAIN_PANEL.y = defaultY
			SetState(STATE_IDLE)
		end
		UpdateFadeColor()
	
	elseif currentState == STATE_OUT then
		MAIN_PANEL.y = CoreMath.Lerp(MAIN_PANEL.y, OFF_Y, deltaTime * MOVE_SPEED)
		if MAIN_PANEL.y > OFF_Y - 1 then
			SetState(STATE_HIDDEN)
		end
		UpdateFadeColor()
	end
end


function UpdateFadeColor()
	if OUTSIDE_BUTTON then
		local t = (OFF_Y - MAIN_PANEL.y) / OFF_Y
		local c = Color.Lerp(Color.New(0,0,0,0), FADE_COLOR, t)
		OUTSIDE_BUTTON:SetButtonColor(c)
	end
end


function OnClosePressed()
	if currentState == STATE_IDLE
	or (currentState == STATE_IN and elapsedTime >= 0.15) then
		Hide()
		if CLOSE_SFX then
			CLOSE_SFX:Play()
		end
	end
end

if OUTSIDE_BUTTON then
	OUTSIDE_BUTTON.clickedEvent:Connect(OnClosePressed)
end
if CLOSE_BUTTON then
	CLOSE_BUTTON.clickedEvent:Connect(OnClosePressed)
end

