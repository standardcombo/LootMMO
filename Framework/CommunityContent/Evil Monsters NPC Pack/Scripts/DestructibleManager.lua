--[[
	Destructible Manager
	v0.11.0
	by: standardcombo, Chris C.
	
	Applies damage to non-player objects.
--]]

-- Registers itself into the global table
local API = {}
_G["standardcombo.NPCKit.DestructibleManager"] = API


local objectList = {}
local IDs = {}

local lastId = 0


function API.GetObjects()
	return objectList
end

function OnDestroyed(obj)
	local theScript = objectList[obj]
	IDs[theScript] = nil
	objectList[obj] = nil
end

function API.Register(theScript)
	local obj = theScript:FindTemplateRoot()
	if (obj == nil) then
		error("DestructibleObjectServer must be part of a template.  "..theScript.name.." is not a template. Maybe it's been deinstanced?")

	elseif (objectList[obj] == nil) then
		obj.destroyEvent:Connect(OnDestroyed)
		objectList[obj] = theScript
		local id = GetIdFor(theScript)
		return id
	else
		error("Multiple DestructibleObject scripts under the same object.  Don't do that.")
	end
	return -1
end

function API.GetRegisteredObject(object)
	local table = nil
	local obj = object:FindTemplateRoot()
	if obj ~= nil then
		return objectList[obj], obj
	end
	return nil, nil
end

function GetIdFor(theScript)
	local id = IDs[theScript]
	if id then
		return id
	end
	lastId = lastId + 1
	id = lastId

	IDs[theScript] = id
	return id
end

function API.DamageObject(attackData)
	--print("DamageObject() object = " .. tostring(object))
	local object = attackData.object
	if object ~= nil and object:IsA("CoreObject") then
		local theScript, obj = API.GetRegisteredObject(object)
		if theScript ~= nil then --and GetObjectTeam(object) ~= GetObjectTeam(source) then
			theScript.context.ApplyDamage(attackData)
		end
	end
end

