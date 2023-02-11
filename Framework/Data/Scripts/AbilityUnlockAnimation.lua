
local SCREEN_FLASH = script:GetCustomProperty("ScreenFlash"):WaitForObject()

local SOUND_1 = script:GetCustomProperty("Sound1"):WaitForObject()
local SOUND_2 = script:GetCustomProperty("Sound2"):WaitForObject()
local SOUND_3 = script:GetCustomProperty("Sound3"):WaitForObject()

local GROW_SPEED = 0.2
local FOCUS_START_SIZE = 1800
local FOCUS_SHRINK_SPEED = 120
local FADE_WHITE_ACCEL = 0.00017
local ACTION_PANEL_SPEED = 0.05


function PlayForSlot(slot)
	PlaySFX()
	
	local contents = slot:GetCustomProperty("Contents"):WaitForObject()
	local actionPanel = slot:GetCustomProperty("ActionPanel"):WaitForObject()
	local whiteFill = slot:GetCustomProperty("WhiteFill"):WaitForObject()
	local focusRing = slot:GetCustomProperty("FocusRing"):WaitForObject()
	local defaultSlotSize = slot.width
	
	-- Set initial state for elements
	slot.width = 0
	slot.height = 0
	contents.visibility = Visibility.FORCE_OFF
	actionPanel.opacity = 0
	whiteFill.opacity = 0
	focusRing.visibility = Visibility.FORCE_OFF
	focusRing.width = FOCUS_START_SIZE
	focusRing.height = FOCUS_START_SIZE
	
	Task.Wait()
	slot.visibility = Visibility.INHERIT
	
	-- Scale up the slot
	local f_size = 0.0
	while slot.width < defaultSlotSize do
		Task.Wait()
		f_size = CoreMath.Lerp(f_size, defaultSlotSize, GROW_SPEED)
		slot.width = CoreMath.Round(f_size)
		slot.height = slot.width
	end
	slot.width = defaultSlotSize
	slot.height = defaultSlotSize
	
	Task.Wait(0.4)
	
	-- Show focus ring and shrink it
	focusRing.visibility = Visibility.INHERIT
	while focusRing.width >= FOCUS_SHRINK_SPEED do
		Task.Wait()
		focusRing.width = focusRing.width - FOCUS_SHRINK_SPEED
		focusRing.height = focusRing.width
	end
	focusRing.width = 0
	focusRing.height = 0
	focusRing.visibility = Visibility.FORCE_OFF
	
	-- Show the white fill + glow
	whiteFill.opacity = 0.3
	Task.Wait()
	whiteFill.opacity = 0.65
	Task.Wait()
	whiteFill.opacity = 1.0
	
	-- Flash the whole screen white, for a couple of frames
	SCREEN_FLASH.visibility = Visibility.INHERIT
	Task.Wait(0.016)
	SCREEN_FLASH.visibility = Visibility.FORCE_OFF
	
	-- Enable the contents
	contents.visibility = Visibility.INHERIT
	
	-- Enable action panel
	Task.Spawn(function()
		while actionPanel.opacity < 0.98 do
			Task.Wait()
			actionPanel.opacity = actionPanel.opacity + ACTION_PANEL_SPEED
		end
		actionPanel.opacity = 1
	end, 2.0)
	
	-- Fade out the white fill + glow
	local fadeSpeed = 0
	while whiteFill.opacity > 0.01 do
		Task.Wait()
		fadeSpeed = fadeSpeed + FADE_WHITE_ACCEL
		whiteFill.opacity = whiteFill.opacity - fadeSpeed
	end
	whiteFill.opacity = 0
end

function PlaySFX()
	local delay1 = script:GetCustomProperty("Delay1")
	local delay2 = script:GetCustomProperty("Delay2")
	local delay3 = script:GetCustomProperty("Delay3")
	if SOUND_1 then Task.Spawn(function() SOUND_1:Play() end, delay1) end
	if SOUND_2 then Task.Spawn(function() SOUND_2:Play() end, delay2) end
	if SOUND_3 then Task.Spawn(function() SOUND_3:Play() end, delay3) end
end

