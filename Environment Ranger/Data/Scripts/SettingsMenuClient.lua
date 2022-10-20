local API_GS = require(script:GetCustomProperty("APIGameSettings"))

local PANEL = script:GetCustomProperty("Panel"):WaitForObject()
local CLASSIC_CONTROL_MODE_BUTTON = script:GetCustomProperty("ClassicControlModeButton"):WaitForObject()
local CLASSIC_RADIO_CIRCLE = script:GetCustomProperty("ClassicRadioCircle"):WaitForObject()
local ACTION_CONTROL_MODE_BUTTON = script:GetCustomProperty("ActionControlModeButton"):WaitForObject()
local ACTION_RADIO_CIRCLE = script:GetCustomProperty("ActionRadioCircle"):WaitForObject()
local SLOT_BUTTONS =
{
	script:GetCustomProperty("SlotButton1"):WaitForObject(),
	script:GetCustomProperty("SlotButton2"):WaitForObject(),
	script:GetCustomProperty("SlotButton3"):WaitForObject(),
	script:GetCustomProperty("SlotButton4"):WaitForObject(),
	script:GetCustomProperty("SlotButton5"):WaitForObject(),
	script:GetCustomProperty("SlotButton6"):WaitForObject(),
	script:GetCustomProperty("SlotButton7"):WaitForObject(),
	script:GetCustomProperty("SlotButton8"):WaitForObject()
}
local CLOSE_BUTTON = script:GetCustomProperty("CloseButton"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

local activeBindingIndex = 0
local isMenuOpen = false

function SetControlMode(controlMode)
	if controlMode == API_GS.CONTROL_MODE_CLASSIC then
		CLASSIC_RADIO_CIRCLE.visibility = Visibility.INHERIT
		ACTION_RADIO_CIRCLE.visibility = Visibility.FORCE_OFF
		API_GS.SetControlMode(API_GS.CONTROL_MODE_CLASSIC)
	elseif controlMode == API_GS.CONTROL_MODE_ACTION then
		CLASSIC_RADIO_CIRCLE.visibility = Visibility.FORCE_OFF
		ACTION_RADIO_CIRCLE.visibility = Visibility.INHERIT
		API_GS.SetControlMode(API_GS.CONTROL_MODE_ACTION)
	end
end

function OpenMenu()
	PANEL.visibility = Visibility.INHERIT
	isMenuOpen = true
end

function CloseMenu()
	PANEL.visibility = Visibility.FORCE_OFF
	activeBindingIndex = 0
	isMenuOpen = false
end

function OnBindingPressed(player, binding)
--[[	if binding == "ability_extra_28" then
		if isMenuOpen then
			CloseMenu()
		else
			OpenMenu()
		end
	end]]
end

function OnClassicControlModeButtonClicked(button)
	SetControlMode(API_GS.CONTROL_MODE_CLASSIC)
end

function OnActionControlModeButtonClicked(button)
	SetControlMode(API_GS.CONTROL_MODE_ACTION)
end

function OnSlotButtonPressed(button, index)

end

function OnCloseButtonClicked(button)
	CloseMenu()
end

LOCAL_PLAYER.bindingPressedEvent:Connect(OnBindingPressed)
CLASSIC_CONTROL_MODE_BUTTON.clickedEvent:Connect(OnClassicControlModeButtonClicked)
ACTION_CONTROL_MODE_BUTTON.clickedEvent:Connect(OnActionControlModeButtonClicked)

for i, button in pairs(SLOT_BUTTONS) do
	button.clickedEvent:Connect(OnSlotButtonPressed, i)
end

CLOSE_BUTTON.clickedEvent:Connect(OnCloseButtonClicked)

SetControlMode(API_GS.GetControlMode())	-- Initialize radio button state
