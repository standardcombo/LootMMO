--[[
	DestructibleWeapon - Client
	v0.11.0
	by: standardcombo, Chris C.
	
	Place this script in a Weapon's client-context to show damage feedback
	when using the Destructible Weapon system.
--]]

local WEAPON = script:FindAncestorByType("Equipment")

function OnShowDamageFeedback(amount, position)
	local player = Game.GetLocalPlayer()
	
--	local templateRoot = script:FindTemplateRoot()
--	print("DestructibleWeaponClient: " .. tostring(templateRoot) .. "; " .. tostring(amount) .. "; " .. tostring(position) .. "; " .. tostring(player))
	
	local viewPos = player:GetViewWorldPosition()
	local distance = (viewPos - position).sizeSquared
	local isBig = (distance < 1000000) -- 10 meters squared
	local damageColor = Color.RED
	
	if amount == 0 then 
		damageColor = Color.WHITE 
		amount = "Blocked"
	end
	
	UI.ShowFlyUpText(tostring(amount), position, {color = damageColor, isBig = isBig})
end

local damagedListener = Events.Connect("ShowDamageFeedback", OnShowDamageFeedback)


function Cleanup()
	if damagedListener then
		damagedListener:Disconnect()
		damagedListener = nil
	end
end

function OnDestroyed(obj)
	Cleanup()
end

WEAPON.destroyEvent:Connect(OnDestroyed)

