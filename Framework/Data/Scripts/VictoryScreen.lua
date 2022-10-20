
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local VICTORY_SFX = script:GetCustomProperty("VictorySFX"):WaitForObject()
local LOCATION_NAME = script:GetCustomProperty("LocationName"):WaitForObject()
local CLEARED_PANEL = script:GetCustomProperty("ClearedPanel"):WaitForObject()
local STAR_1 = script:GetCustomProperty("Star1"):WaitForObject()
local STAR_2 = script:GetCustomProperty("Star2"):WaitForObject()
local STAR_3 = script:GetCustomProperty("Star3"):WaitForObject()
local GENERATED_MAP = script:GetCustomProperty("GeneratedMap"):WaitForObject()

local defaultLocationNameX = LOCATION_NAME.x
local isShowing = false


function Hide()
	VICTORY_SFX:Stop()
	ROOT.visibility = Visibility.FORCE_OFF
	LOCATION_NAME.visibility = Visibility.FORCE_OFF
	CLEARED_PANEL.visibility = Visibility.FORCE_OFF
	STAR_1.visibility = Visibility.FORCE_OFF
	STAR_2.visibility = Visibility.FORCE_OFF
	STAR_3.visibility = Visibility.FORCE_OFF
end

Hide()


function Show()
	isShowing = true
	
	VICTORY_SFX:Play()
	
	ROOT.visibility = Visibility.INHERIT
	
	CLEARED_PANEL.visibility = Visibility.INHERIT
	CLEARED_PANEL.opacity = 0
	
	Task.Wait(1.1)
	LOCATION_NAME.text = GENERATED_MAP:GetCustomProperty("LocationName")
	LOCATION_NAME.visibility = Visibility.INHERIT
	LOCATION_NAME.x = defaultLocationNameX - 1000
	
	Task.Wait(0.4)
	STAR_1.visibility = Visibility.INHERIT
	
	Task.Wait(0.5)
	STAR_2.visibility = Visibility.INHERIT
	
	Task.Wait(0.5)
	STAR_3.visibility = Visibility.INHERIT
	
	Task.Wait(5)
	isShowing = false
end

Events.Connect("LevelComplete", Show)


function Tick(deltaTime)
	local t = CoreMath.Clamp(deltaTime * 12)
	
	if isShowing then
		LOCATION_NAME.x = CoreMath.Lerp(LOCATION_NAME.x, defaultLocationNameX, t)
		
		t = CoreMath.Clamp(deltaTime)
		CLEARED_PANEL.opacity = CoreMath.Lerp(CLEARED_PANEL.opacity, 1, t)
		ROOT.opacity = 1
	else
		ROOT.opacity = CoreMath.Lerp(ROOT.opacity, 0, t)
	end
end

--[[
Game.GetLocalPlayer().bindingPressedEvent:Connect(function(player, action)
	if action == "ability_extra_0" then
		Show()
		
	elseif action == "ability_extra_9" then
		Hide()
	end
end)
--]]
