--[[
	Tag Getter
	v1.2
	by: standardcombo
	
	Utility functions for operating on combat tags, such as retrieving tags
	on a Core Object or comparing a specific tag against an object/table to
	see if that object has the given tag.
	
	Interface:
	- GetTags(object)
	- AddTag(object, tag, isTemporary)
	- AddUnique(object, tag, isTemporary)
	- RemoveTag(object, tag)
	- Contains(object, tag)
	- ClearTemporary(object)
	- Serialize(object)
	where 'object' is of types table, Player or CoreObject, and 'tag' is of type string.
	
	Setup:

	A magic weapon could have these tags added to it as custom properties:
	Tag1 = "Fire"
	Tag2 = "Demon"
	
	then, a script inside the weapon could say:
	
	local WEAPON = script:FindAncestorByType("Weapon")
	local MODULE = require( script:GetCustomProperty("ModuleManager") )
	function TAGS() return MODULE.Get("standardcombo.Combat.Tags") end
	local tags = TAGS().GetTags(WEAPON)
	
	The script should have a reference to the ModuleManager script.
--]]

local API = {}
_G["standardcombo.Combat.Tags"] = API

-- Gathers the tags on an object and returns the table
function API.GetTags(obj)
	if not Object.IsValid(obj) then return {} end

	if obj.serverUserData and obj.serverUserData.combatTags then
		return obj.serverUserData.combatTags
	end

	if type(obj) == "table" then
		return obj
	end

	if not obj.GetCustomProperties then
		return {}
	end

	local tags = {}
	for k,v in pairs(obj:GetCustomProperties()) do
		if string.sub(k,1,4) == "Tag_" then
			tags[v] = 1
		end
	end
	return tags
end

-- Add a tag to a table or object
function API.AddTag(obj, tag, isTemporary)
	-- Player or NPC/Equipment that's already been cached
	if obj.serverUserData and obj.serverUserData.combatTags then
		API.AddTag(obj.serverUserData.combatTags, tag, isTemporary)

	-- Table
	elseif type(obj) == "table" then
		if obj[tag] then
			obj[tag] = obj[tag] + 1
		else
			obj[tag] = 1
		end
		if isTemporary then
			AddTemporary(obj, tag)
		end

	-- NPC/Equipment
	elseif obj.GetCustomProperties ~= nil then
		if obj.serverUserData then
			-- Cache tags into user data table
			obj.serverUserData.combatTags = API.GetTags(obj)
			API.AddTag(obj.serverUserData.combatTags, tag, isTemporary)
		else
			warn("Tried to add tag " .. tag .. " to " .. tostring(obj) .. " but was not in server.")
		end
	else
		warn("Tried to add tag " .. tag .. " to " .. tostring(obj) .. " but it's not a valid object type.")
	end
end

-- Adds a tag to an object/table, but only if that tag does not exist yet
function API.AddUnique(obj, tag, isTemporary)
	if not API.Contains(obj, tag) then
		API.AddTag(obj, tag, isTemporary)
	end
end

-- Remove a tag from a table or object
function API.RemoveTag(obj, tag)
	-- Player or NPC/Equipment that's already been cached
	if obj.serverUserData and obj.serverUserData.combatTags then
		API.RemoveTag(obj.serverUserData.combatTags, tag)

	-- Table
	elseif type(obj) == "table" then
		if obj[tag] then
			obj[tag] = obj[tag] - 1
			if obj[tag] <= 0 then
				obj[tag] = nil
			end
		end

	-- NPC/Equipment
	elseif obj.GetCustomProperties ~= nil then
		if obj.serverUserData then
			-- Cache tags into user data table
			obj.serverUserData.combatTags = API.GetTags(obj)
			API.RemoveTag(obj.serverUserData.combatTags, tag)
		else
			warn("Tried to remove tag " .. tag .. " from " .. tostring(obj) .. " but was not in server.")
		end
	else
		warn("Tried to remove tag " .. tag .. " from " .. tostring(obj) .. " but it's not a valid object type.")
	end
end

-- Given an object and a tag, searches that object/player/table to see if
-- it contains that tag.
function API.Contains(obj, compareTo)
	-- Player or NPC/Equipment that's already been cached
	if obj.serverUserData and obj.serverUserData.combatTags then
		return obj.serverUserData.combatTags[compareTo] ~= nil

	-- Table
	elseif type(obj) == "table" then
		return obj[compareTo] ~= nil

	-- NPC/Equipment
	elseif obj.GetCustomProperties ~= nil then
		if obj.serverUserData then
			-- Cache tags into user data table
			obj.serverUserData.combatTags = API.GetTags(obj)
			return obj.serverUserData.combatTags[compareTo] ~= nil
		end
		-- This is probably called in client context? Support it anyway
		for k,tag in pairs(obj:GetCustomProperties()) do
			if tag == compareTo and string.sub(k,1,4) == "Tag_" then
				return true
			end
		end
	end
	return false
end

-- Clears from 
local temporaryTags = {}

function API.ClearTemporary(obj)
	local tagTable = obj
	if obj.serverUserData and obj.serverUserData.combatTags then
		tagTable = obj.serverUserData.combatTags
		
	elseif obj.GetCustomProperties ~= nil then
		tagTable = API.GetTags(obj)
	end

	local tempTags = temporaryTags[tagTable]
	if tempTags then
		for _,tag in ipairs(tempTags) do
			API.RemoveTag(tagTable, tag)
		end
	end
end

function AddTemporary(tagTable, tag)
	if not temporaryTags[tagTable] then
		temporaryTags[tagTable] = {}
	end
	table.insert(temporaryTags[tagTable], tag)
end

-- Converts a table of tags into
function API.Serialize(obj)
	local tagTable = obj
	if obj.serverUserData and obj.serverUserData.combatTags then
		tagTable = obj.serverUserData.combatTags
		
	elseif obj.GetCustomProperties ~= nil then
		tagTable = API.GetTags(obj)
	end
	local result = ""
	for k,v in pairs(tagTable) do
		while v > 0 do
			if result == "" then
				result = k
			else
				result = result .. "," .. k
			end
			v = v - 1
		end
	end
	return result
end


return API

