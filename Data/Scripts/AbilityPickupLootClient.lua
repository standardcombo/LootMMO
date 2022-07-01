--[[
	Ability Pickup Loot - Client
	v1.0
	by: standardcombo
	
	Plays an animation when a player picks up some loot.
--]]

local ABILITY = script:GetCustomProperty("Ability"):WaitForObject()
local EVENT_NAME = script:GetCustomProperty("EventName")

function OnPickupLoot()
	if ABILITY.owner and ABILITY.owner == Game.GetLocalPlayer() then
		ABILITY:Activate()
	end
end
Events.Connect(EVENT_NAME, OnPickupLoot)