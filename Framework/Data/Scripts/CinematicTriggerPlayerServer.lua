--[[
	Cinematic Trigger Player - Server
	v1.1
	by: standardcombo
--]]

local ROOT = script.parent
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local EVENT_NAME = ROOT:GetCustomProperty("BroadcastEvent")
local SINGLE_USE = ROOT:GetCustomProperty("SingleUse")

local triggeredPlayers = {}


function OnBeginOverlap(trigger, player)
	if player:IsA("Player") then
		if SINGLE_USE then
			if triggeredPlayers[player.id] then return end
			triggeredPlayers[player.id] = true
		end
	
		Events.BroadcastToPlayer(player, EVENT_NAME)
	end
end

TRIGGER.beginOverlapEvent:Connect(OnBeginOverlap)



