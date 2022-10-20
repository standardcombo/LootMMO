--[[
	Leap Ability - Client
	v1.1
	by: standardcombo
	
	Gives the player a vertical impulse when the ability executes.
--]]

local ABILITY = script:GetCustomProperty("Ability"):WaitForObject()
local LEAP_EFFECTS = script:GetCustomProperty("LeapEffects")


function OnExecute(ability)
	local pos = ability.owner:GetWorldPosition()
	World.SpawnAsset(LEAP_EFFECTS, {position = pos})
end


ABILITY.executeEvent:Connect(OnExecute)