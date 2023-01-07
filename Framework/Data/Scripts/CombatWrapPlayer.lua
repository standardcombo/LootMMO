--[[
	Combat Wrap - Player
	v1.0.0
	by: standardcombo
	
	Provides an interface of combat functions that operate on a Player object.
	
	Interface:
	- GetName()
	- GetTeam()
	- GetHitPoints()
	- GetMaxHitPoints()
	- GetVelocity()
	- ApplyDamage()
	- IsDead()
	- IsHeadshot()
	- IsValidObject()
	- AddImpulse()
	- FindInSphere()
	- GetMaxWalkSpeed()
	- SetMaxWalkSpeed()
--]]

local wrapper = {}

	
-- GetName()
function wrapper.GetName(player)
	return player.name
end

-- GetTeam()
function wrapper.GetTeam(player)
	return player.team
end

-- GetHitPoints()
function wrapper.GetHitPoints(player)
	return player.hitPoints
end

-- GetMaxHitPoints()
function wrapper.GetMaxHitPoints(player)
	return player.maxHitPoints
end

-- GetVelocity()
function wrapper.GetVelocity(player)
	return player:GetVelocity()
end

-- ApplyDamage()
function wrapper.ApplyDamage(attackData)
	attackData.object:ApplyDamage(attackData.damage)
end

-- AddImpulse()
function wrapper.AddImpulse(player, direction)
	player:AddImpulse(direction)
end

-- IsDead()
function wrapper.IsDead(player)
	return player.isDead
end

-- IsHeadshot()
function wrapper.IsHeadshot(player, hitResult, position)
	if hitResult then
		return hitResult.socketName == "head"
	end
	local playerPos = player:GetWorldPosition()
	local playerScale = player:GetWorldScale()
	
	local headMinZ = 65
	if player.isCrouching then
		headMinZ = 30
	end
	headMinZ = playerPos.z + headMinZ * playerScale.z
	return position.z > headMinZ
end

-- IsValidObject()
function wrapper.IsValidObject(player)
	return Object.IsValid(player) and player:IsA("Player")
end

-- FindInSphere()
function wrapper.FindInSphere(position, radius, parameters)
	return Game.FindPlayersInSphere(position, radius, parameters)
end

-- GetMaxWalkSpeed()
function wrapper.GetMaxWalkSpeed(player)
	return player.maxWalkSpeed
end

-- SetMaxWalkSpeed()
function wrapper.SetMaxWalkSpeed(player, value)
	player.maxWalkSpeed = value
end

return wrapper