--[[
	Damage Feedback - Client
	v1.1
	by: Wave Paradigm, standardcombo
	
	By default player damaged is server-only.
	This script listens for the event "ShowDamageFeedback" and provide feedback
	to the player receiving the damage.
	
	Listens to: ShowDamageFeedback
--]]

function OnShowDamageFeedback(value, position, damageColor)
	local player = Game.GetLocalPlayer()
	local viewPos = player:GetViewWorldPosition()
	local distance = (viewPos - position).sizeSquared
	
	-- Nearby damage displays a big font
	local isBig = (distance < 1000000) -- 10 meters squared

	UI.ShowFlyUpText(tostring(value), position, {color = damageColor, isBig = isBig})
end

Events.Connect("ShowDamageFeedback", OnShowDamageFeedback)