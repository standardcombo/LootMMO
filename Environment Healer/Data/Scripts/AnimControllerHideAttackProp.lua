--[[
	Animation Controller - Hide Attack Prop
	v1.0
	by: standardcombo
	
	Controls visibility of a sub-object for an NPC, such as a throwable object
	that is visible in its hand, but should be hidden after the throw.
--]]

Task.Wait()

local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local ATTACK_PROP = script:GetCustomProperty("AttackProp"):WaitForObject()

local STATE_ATTACK_CAST = 2
local STATE_ATTACK_RECOVERY = 3


function UpdateArt(state)		
	if (state == STATE_ATTACK_CAST) then
		ATTACK_PROP.visibility = Visibility.FORCE_ON
	
	elseif (state == STATE_ATTACK_RECOVERY) then
		ATTACK_PROP.visibility = Visibility.FORCE_OFF
	end
end


function GetCurrentState()
	return ROOT:GetCustomProperty("CurrentState")
end


function OnPropertyChanged(object, propertyName)
	
	if (propertyName == "CurrentState") then
		UpdateArt(GetCurrentState())
	end
end
ROOT.customPropertyChangedEvent:Connect(OnPropertyChanged)

