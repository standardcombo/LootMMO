
local POPUP_ROOT = script:GetCustomProperty("PopupRoot"):WaitForObject()
local EVENT_ID = script:GetCustomProperty("EventID")
local DELAY = script:GetCustomProperty("Delay")

local EASE_UI_ASSET = script:GetCustomProperty("EaseUI")
local EaseUI = nil
if EASE_UI_ASSET then
	EaseUI = require(EASE_UI_ASSET)
end
local FALLBACK_LERP = 14

local HIDDEN_X = 500
local IN_DELAY = DELAY
local IN_DURATION = 0.7
local OUT_DURATION = 0.9
local WAITING_1_DURATION = 5.8
local WAITING_2_DURATION = 0.8
local ANIM_DURATION = 0.6

local STATE_HIDDEN = 0
local STATE_IN_DELAY = 1
local STATE_IN = 2
local STATE_WAITING_1 = 3
local STATE_ANIM_BEST = 4
local STATE_WAITING_2 = 5
local STATE_OUT = 6

local currentState = STATE_HIDDEN
local stateElapsedTime = 0

function SetState(newState)
	--print("TournamentPopup SetState() = " .. tostring(newState))
	
	if newState == STATE_HIDDEN then
		POPUP_ROOT.visibility = Visibility.FORCE_OFF
		
	elseif newState == STATE_IN_DELAY then
		POPUP_ROOT.x = HIDDEN_X
		
	elseif newState == STATE_IN then
		POPUP_ROOT.x = HIDDEN_X
		POPUP_ROOT.visibility = Visibility.FORCE_ON
		
		if EaseUI then
			EaseUI.EaseX(POPUP_ROOT, 0, IN_DURATION, EaseUI.EasingEquation.ELASTIC, EaseUI.EasingDirection.OUT)
		end
		
	elseif newState == STATE_WAITING_1 then
		--
	
	elseif newState == STATE_OUT then
		if EaseUI then
			EaseUI.EaseX(POPUP_ROOT, HIDDEN_X, OUT_DURATION, EaseUI.EasingEquation.BOUNCE, EaseUI.EasingDirection.OUT)
		end
	end
	
	currentState = newState
	stateElapsedTime = 0
end


function Tick(deltaTime)
	stateElapsedTime = stateElapsedTime + deltaTime
	
	-- Update state
	if currentState == STATE_IN_DELAY and stateElapsedTime >= IN_DELAY then
		SetState(STATE_IN)
		
	elseif currentState == STATE_IN then
		if stateElapsedTime >= IN_DURATION then
			SetState(STATE_WAITING_1)
		else
			local t = CoreMath.Clamp(deltaTime * FALLBACK_LERP)
			POPUP_ROOT.x = CoreMath.Lerp(POPUP_ROOT.x, 0, t)
		end
		
	elseif currentState == STATE_WAITING_1 and stateElapsedTime >= WAITING_1_DURATION then
		SetState(STATE_ANIM_BEST)
		
	elseif currentState == STATE_ANIM_BEST then
		--AnimateNumber(BEST_TEXT, bestAnimStart, bestAnimEnd, stateElapsedTime / ANIM_DURATION)
		
		if stateElapsedTime >= ANIM_DURATION then
			SetState(STATE_WAITING_2)
		end
		
	elseif currentState == STATE_WAITING_2 and stateElapsedTime >= WAITING_2_DURATION then
		SetState(STATE_OUT)
						
	elseif currentState == STATE_OUT then
		if stateElapsedTime >= OUT_DURATION then
			SetState(STATE_HIDDEN)
		else
			local t = CoreMath.Clamp(deltaTime * FALLBACK_LERP)
			POPUP_ROOT.x = CoreMath.Lerp(POPUP_ROOT.x, HIDDEN_X, t)
		end
	end
end


function Show()
	SetState(STATE_IN_DELAY)
end

Events.Connect(EVENT_ID, Show)

