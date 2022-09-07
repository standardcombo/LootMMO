

local AUDIO_1 = script:GetCustomProperty("Audio1"):WaitForObject()
local AUDIO_2 = script:GetCustomProperty("Audio2"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local CAMERA = script:GetCustomProperty("Camera"):WaitForObject()
local SCREEN_FRAME = script:GetCustomProperty("ScreenFrame"):WaitForObject()
local BLACK_BG = script:GetCustomProperty("BlackBG"):WaitForObject()
local HUD = script:GetCustomProperty("HUD"):WaitForObject()

local KEY_BINDING = "ability_extra_24" --T

local PLAYER = Game.GetLocalPlayer()
local AUDIO_POS = AUDIO_1:GetWorldPosition()

local allAudio = {}
local isFocused = false
local escHook = nil


function SetFocus(enabled)
	isFocused = enabled
	
	if enabled then
		-- Change app state
		if _G.AppState.GetLocalState() == _G.AppState.SocialHub then
			_G.AppState.SetLocalState(_G.AppState.Minigame)
		end
		
		-- The player can now hear it
		EnableAudio()
		
		-- Focus camera
		PLAYER:SetOverrideCamera(CAMERA)
		
		-- Hide frame, show black background
		SCREEN_FRAME.visibility = Visibility.FORCE_OFF
		BLACK_BG.visibility = Visibility.INHERIT
		
		-- Connect to ESC key
		escHook = Input.escapeHook:Connect(function(player, params)
			params.openPauseMenu = false
			HUD.visibility = Visibility.INHERIT
			SetFocus(false)
		end)
		
	else
		-- Change app state
		if _G.AppState.GetLocalState() == _G.AppState.Minigame then
			_G.AppState.SetLocalState(_G.AppState.SocialHub)
		end
		
		-- Player cannot hear it anymore
		DisableAudio()
		
		-- Revert camera
		if PLAYER:GetActiveCamera() == CAMERA then
			PLAYER:ClearOverrideCamera()
		end
		
		-- Show frame, hide black background
		SCREEN_FRAME.visibility = Visibility.INHERIT
		BLACK_BG.visibility = Visibility.FORCE_OFF
		
		-- Clear the ESC key
		if escHook then
			escHook:Disconnect()
			escHook = nil
		end
	end
end

function EnableAudio()
	-- Enable the audio for video stream
	AUDIO_1:SetWorldPosition(AUDIO_POS)
	AUDIO_2:SetWorldPosition(AUDIO_POS)
	
	-- Disable all other audio
	for _,a in ipairs(allAudio) do
		if Object.IsValid(a) and a.clientUserData 
		and a.clientUserData.defaultVolume then
			local name = a.name
			a.volume = 0
		end
	end
end

function DisableAudio()
	-- Disable the audio for video stream
	AUDIO_1:SetWorldPosition(AUDIO_POS + Vector3.New(0, 0, -20000))
	AUDIO_2:SetWorldPosition(AUDIO_POS + Vector3.New(0, 0, -20000))
	
	-- Turn other audio back on
	for _,a in ipairs(allAudio) do
		if Object.IsValid(a) and a.clientUserData 
		and a.clientUserData.defaultVolume then
			a.volume = a.clientUserData.defaultVolume
		end
	end
end


function FindAllAudio()
	allAudio = World.FindObjectsByType("Audio")
	local smartAudio = World.FindObjectsByType("SmartAudio")
	for _, sa in ipairs(smartAudio) do
		table.insert(allAudio, sa)
	end
	for i, a in ipairs(allAudio) do
		if a == AUDIO_1 or a == AUDIO_2 then
			table.remove(allAudio, i)
			
		elseif a.clientUserData then
			a.clientUserData.defaultVolume = a.volume
		end
	end
end


function OnBeginOverlap(trigger, player)
	if player == PLAYER then
		HUD.visibility = Visibility.INHERIT
	end
end


function OnEndOverlap(trigger, player)
	if player == PLAYER then
		HUD.visibility = Visibility.FORCE_OFF
		
		if isFocused then
			SetFocus(false)
		end
	end
end


function OnBindingPressed(player, action)
	if action == KEY_BINDING then
		if HUD.visibility == Visibility.INHERIT then
			HUD.visibility = Visibility.FORCE_OFF
			SetFocus(true)
			
		elseif isFocused then
			HUD.visibility = Visibility.INHERIT
			SetFocus(false)
		end
	end
end


TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)
TRIGGER.endOverlapEvent:Connect(OnEndOverlap)

PLAYER.bindingPressedEvent:Connect(OnBindingPressed)

-- Begin the game with audio off
DisableAudio()

Task.Wait()
FindAllAudio()

