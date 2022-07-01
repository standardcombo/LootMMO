
local MAPS = require(script:GetCustomProperty("CryptsAndCaverns"))
local CRYPTS_CAVERNS_PARSER = require(script:GetCustomProperty("CryptsCavernsParser"))
local CRYPTS_CAVERNS_SVG = script:GetCustomProperty("CryptsCavernsSVG"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local OVERRIDE_CAMERA = script:GetCustomProperty("OverrideCamera"):WaitForObject()
local PLAY_SFX = script:GetCustomProperty("PlaySFX"):WaitForObject()
local CALLOUT_SPARKLE = script:GetCustomProperty("CalloutSparkle"):WaitForObject()
local HOLDER_BONUS_XP = script:GetCustomProperty("HolderBonusXP"):WaitForObject()
local HOLDER_EXPLANATION = script:GetCustomProperty("HolderExplanation"):WaitForObject()

local CAM_APPROACH_DISTANCE = 20
local CAM_APPROACH_SPEED = 1.8

local selectedIndex = 1
local isFocused = false
local isAwaitingTransfer = false

Task.Wait()


function Play()
	if isAwaitingTransfer then return end
	isAwaitingTransfer = true
	
	PLAY_SFX:Play()
	Events.BroadcastToServer("PlayCryptsAndCaverns", selectedIndex)
	Events.Broadcast("FadeOut", 4)
end


function Tick(deltaTime)
	local t = deltaTime * CAM_APPROACH_SPEED
	OVERRIDE_CAMERA.currentDistance = CoreMath.Lerp(OVERRIDE_CAMERA.currentDistance, 0, t)
end


function EnterFocus()
	isFocused = true
	
	UI.SetCanCursorInteractWithUI(true)
	UI.SetCursorVisible(true)
	Game.GetLocalPlayer():SetOverrideCamera(OVERRIDE_CAMERA)
	OVERRIDE_CAMERA.currentDistance = CAM_APPROACH_DISTANCE
	
	CALLOUT_SPARKLE.visibility = Visibility.FORCE_OFF
	CALLOUT_SPARKLE:SetSmartProperty("Density", 0)
	
	UpdateHolderInfo()
	
	TRIGGER.isEnabled = false
	
	Events.BroadcastToServer("MapFocus", true)
end

function ExitFocus()
	if isAwaitingTransfer then return end
	
	isFocused = false
	
	UI.SetCanCursorInteractWithUI(false)
	UI.SetCursorVisible(false)
	Game.GetLocalPlayer():ClearOverrideCamera(0)
	
	CALLOUT_SPARKLE.visibility = Visibility.INHERIT
	CALLOUT_SPARKLE:SetSmartProperty("Density", 1)
	
	HideHolderInfo()
	
	Task.Wait(1)
	TRIGGER.isEnabled = true
	
	Events.BroadcastToServer("MapFocus", false)
end


function UpdateHolderInfo()
	if isFocused then
		local isSelfHolder = false --TODO
		local isPartyHolder = false --TODO

		if isSelfHolder or isPartyHolder then
			ShowHolderInfo()
			if isSelfHolder then
				HOLDER_BONUS_XP.text = "+Holder\nBonus XP!"
				HOLDER_EXPLANATION.text = "You own this NFT"
			else
				HOLDER_BONUS_XP.text = "+Party\nBonus XP!"
				HOLDER_EXPLANATION.text = "standardcombo owns this NFT"
			end
		else
			HideHolderInfo()
		end
	end
end

function ShowHolderInfo()
	HOLDER_BONUS_XP.visibility = Visibility.INHERIT
	HOLDER_EXPLANATION.visibility = Visibility.INHERIT
end

function HideHolderInfo()
	HOLDER_BONUS_XP.visibility = Visibility.FORCE_OFF
	HOLDER_EXPLANATION.visibility = Visibility.FORCE_OFF
end

HideHolderInfo()


function SetupMap()
	local mapModel = CRYPTS_CAVERNS_PARSER:new(MAPS[selectedIndex].metadata)
	CRYPTS_CAVERNS_SVG.context.Load(mapModel)
end

function Next()
	if isAwaitingTransfer then return end
	
	selectedIndex = selectedIndex + 1
	if selectedIndex > #MAPS then
		selectedIndex = 1
	end
	SetupMap()
	UpdateHolderInfo()
end

function Previous()
	if isAwaitingTransfer then return end
	
	selectedIndex = selectedIndex - 1
	if selectedIndex <= 0 then
		selectedIndex = #MAPS
	end
	SetupMap()
	UpdateHolderInfo()
end


Next()


-- Events fired from MapButtons script
Events.Connect("NextMap", Next)
Events.Connect("PreviousMap", Previous)
Events.Connect("PlayMap", Play)
Events.Connect("ExitMap", ExitFocus)

TRIGGER.interactedEvent:Connect(EnterFocus)

