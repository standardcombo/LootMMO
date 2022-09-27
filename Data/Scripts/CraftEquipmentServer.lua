

function OnMailboxOpened(player)
	if Object.IsValid(player) then
		Events.Broadcast("Quest_Craft1", player, "Open")
	end
end

function OnMailboxClosed(player)
	if Object.IsValid(player) then
		Events.Broadcast("Quest_Craft1", player, "Close")
	end
end

Events.Connect("CraftEquipmentOpened", OnMailboxOpened)
Events.Connect("CraftEquipmentClosed", OnMailboxClosed)

