--[[
	Leap Ability - Server
	v1.1
	by: standardcombo
	
	Gives the player a vertical impulse when the ability executes.
--]]

local ABILITY = script:GetCustomProperty("Ability"):WaitForObject()
local LEAP_AMOUNT = script:GetCustomProperty("LeapAmount")
local LEAP_EFFECTS = script:GetCustomProperty("LeapEffects")


function OnExecute(ability)
	local player = ability.owner
	if Object.IsValid(player) then
		player:AddImpulse(Vector3.UP * LEAP_AMOUNT)
	end
end


ABILITY.executeEvent:Connect(OnExecute)