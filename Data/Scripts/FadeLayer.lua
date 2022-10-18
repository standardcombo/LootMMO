--[[
	Fade Layer
	v1.0
	by: standardcombo
	
	Starts with the full screen black and fades in over time. Events can be called
	by other scripts to fade in/out at any time, based on game logic.
	
	
	Setup
	=====
	Simply have the Fade Layer group in the hierarchy.
	
	
	Usage
	=====
	E.g.:
	-- Call this in a client script to fade the screen to black
	Events.Broadcast("FadeOut", 3)
	
	
	Events
	======
	"FadeIn" (optional speed parameter)
		Changes the layer to transparent over time.
		
	"FadeOut" (optional speed parameter)
		Changes the layer to black over time.
]]

local IMAGE = script:GetCustomProperty("Image"):WaitForObject()
local LERP_SPEED = 0.65

Task.Wait(0.1)

local STATE_FADE_IN = 1
local STATE_FADE_OUT = 2
local STATE_IDLE = 3
local currentState = STATE_FADE_IN

local speedMultiplier = 1


function Tick(deltaTime)
	if currentState == STATE_IDLE then return end
	
	local c = IMAGE:GetColor()
	local t = deltaTime * LERP_SPEED * speedMultiplier
	
	if currentState == STATE_FADE_IN then
		c.a = CoreMath.Lerp(c.a, 0, t)
		if c.a < 0.01 then
			currentState = STATE_IDLE
			c.a = 0
		end
	else
		c.a = CoreMath.Lerp(c.a, 1, t)
		if c.a > 0.99 then
			currentState = STATE_IDLE
			c.a = 1
		end
	end
	
	IMAGE:SetColor(c)
end

Events.Connect("FadeIn", function(speedOverride)
	currentState = STATE_FADE_IN
	speedMultiplier = speedOverride or 1
end)

Events.Connect("FadeOut", function(speedOverride)
	currentState = STATE_FADE_OUT
	speedMultiplier = speedOverride or 1
end)


