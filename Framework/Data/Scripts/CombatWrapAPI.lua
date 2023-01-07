--[[
	Combat Wrap API
	v1.0.0
	by: standardcombo, WaveParadigm
	
	Identifies the type of object and wraps it with a common interface for combat-related functions.
	
	Interface:
	- CombatWrapAPI.GoingToTakeDamage (Event)
	- CombatWrapAPI.OnDamageTaken (Event)
	- CombatWrapAPI.ObjectHasDied (Event)
	- ApplyDamage()
	- GetName()
	- GetTeam()
	- GetHitPoints()
	- GetMaxHitPoints()
	- GetVelocity()
	- IsDead()
	- IsHeadshot()
	- IsValidObject()
	- AddImpulse()
	- FindInSphere()
	- GetMaxWalkSpeed()
	- SetMaxWalkSpeed()
--]]
-- Registers itself into the global table
local API = {}
_G["standardcombo.Combat.Wrap"] = API

-- Module dependencies
local MODULE = require( script:GetCustomProperty("ModuleManager") )
function CROSS_CONTEXT_CALLER()
	return MODULE.Get("standardcombo.Utils.CrossContextCaller")
end

function TAGS() return MODULE.Get("standardcombo.Combat.Tags") end

-- The different entity wrappers
local PLAYER_WRAPPER = require( script:GetCustomProperty("CombatWrapPlayer") )
local NPC_WRAPPER = require( script:GetCustomProperty("CombatWrapNPC") )

-- ApplyDamage()
-- Attack Data table keys = {object, damage, source, item, position, rotation, tags}
function API.ApplyDamage(attackData)
	if type(attackData) ~= "table" then
		error("ApplyDamage() expected table with attackData, but received " ..
			tostring(attackData) .. " instead. \n" .. CoreDebug.GetStackTrace())
		return
	end

	local object = attackData.object
	
	if not API.IsValidObject(object) then return end
	if API.IsDead(object) then return end
	
	-- Prefer to apply damage to damageable objects
	if (not object:IsA("Damageable")) then
		local damageableObj = object:FindAncestorByType("Damageable")
		if damageableObj then
			object = damageableObj
			attackData.object = damageableObj
		end
	end

	Events.Broadcast("CombatWrapAPI.GoingToTakeDamage", attackData)

	CROSS_CONTEXT_CALLER().Call(
		function()
			GetWrapperFor(object).ApplyDamage(attackData)

			Events.Broadcast("CombatWrapAPI.OnDamageTaken", attackData)

			if API.IsDead(object) then
				Events.Broadcast("CombatWrapAPI.ObjectHasDied", attackData)
			end
			
			TAGS().ClearTemporary(attackData.tags)
		end
	)
end

-- GetName()
function API.GetName(object)
	return GetWrapperFor(object).GetName(object)
end

-- GetTeam()
function API.GetTeam(object)
	return GetWrapperFor(object).GetTeam(object)
end

-- GetHitPoints()
function API.GetHitPoints(object)
	return GetWrapperFor(object).GetHitPoints(object)
end

-- GetMaxHitPoints()
function API.GetMaxHitPoints(object)
	return GetWrapperFor(object).GetMaxHitPoints(object)
end

-- GetVelocity()
function API.GetVelocity(object)
	return GetWrapperFor(object).GetVelocity(object)
end

-- IsDead()
function API.IsDead(object)
	return GetWrapperFor(object).IsDead(object)
end

-- IsHeadshot()
function API.IsHeadshot(object, hitResult, position)
	return GetWrapperFor(object).IsHeadshot(object, hitResult, position)
end

-- IsValidObject()
function API.IsValidObject(object)
	return GetWrapperFor(object).IsValidObject(object)
end

-- AddImpulse()
function API.AddImpulse(object, direction)
	GetWrapperFor(object).AddImpulse(object, direction)
end

-- FindInSphere()
function API.FindInSphere(position, radius, parameters)
	local players = PLAYER_WRAPPER.FindInSphere(position, radius, parameters)
	local NPCs = NPC_WRAPPER.FindInSphere(position, radius, parameters)

	local enemies = players
	for _, npc in ipairs(NPCs) do
		table.insert(enemies, npc)
	end
	return enemies
end

-- GetAll()
function API.GetAll()
	local players = PLAYER_WRAPPER.GetAll()
	local npcs = NPC_WRAPPER.GetAll()

	local allObjects = players
	for _, npc in ipairs(npcs) do
		table.insert(allObjects, npc)
	end
	return allObjects
end

-- GetMaxWalkSpeed()
function API.GetMaxWalkSpeed(object)
	return GetWrapperFor(object).GetMaxWalkSpeed(object)
end

-- SetMaxWalkSpeed()
function API.SetMaxWalkSpeed(object, value)
	GetWrapperFor(object).SetMaxWalkSpeed(object, value)
end


function GetWrapperFor(object)
	if object and object:IsA("Player") then
		return PLAYER_WRAPPER
	end
	return NPC_WRAPPER
end
