
function TAGS() return _G["standardcombo.Combat.Tags"] end

function OnObjectDied(attackData)
	local tags = TAGS().GetTags(attackData.object)
	for tag,_ in pairs(tags) do
		--print("NPC died with tag: ".. tag)
		Events.Broadcast("Quest_NPCDied", tag)
	end
end

Events.Connect("CombatWrapAPI.ObjectHasDied", OnObjectDied)

