--[[
	NPC Headshot - server component
	v0.11.0
	by: standardcombo
	
	Optional component that allows an NPC to specify a head point, for increased
	damage from some weapons. Position the script at the center of where the
	head will be, when the NPC is in their Ready/Idle stances. Note that head
	position on animated meshes is often higher when they are in Bind stance.
--]]

local RADIUS = script:GetCustomProperty("Radius")
local RADIUS_SQUARED = RADIUS * RADIUS

function IsHeadshot(damagePos)
	local headPos = script:GetWorldPosition()
	local v = headPos - damagePos	
	local distanceSquared = v.sizeSquared
	return distanceSquared <= RADIUS_SQUARED
end