--[[
	Loot Drop - Data Entry
	v2.0
	by: standardcombo
	
	Represents one possible loot to drop.
--]]


--[[
	The ID of the group this entry belongs to. Loot drops begin with a given ID.
	Entries	that share a common ID form a group, from which one random entry is chosen.
	If a group only has one entry, then that entry is always chosen and the incidence
	property doesn't matter.
--]]
function GetId()
	return script.parent.name
end


--[[
	How frequently this loot will be dropped, in relationship to other entries in the same group.
	E.g. If one entry has incidence 1 and the other has incidence 2, then the second entry is
	twice as likely to drop.
--]]
function GetIncidence()
	return script:GetCustomProperty("Incidence")
end


-- Reference to the asset that will be spawned.
function GetTemplate()
	return script:GetCustomProperty("Template")
end

