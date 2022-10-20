

function OnMailboxOpened(player)
	if Object.IsValid(player) then
		Events.Broadcast("Quest.Anvil", player, "Open")
	end
end

function OnMailboxClosed(player)
	if Object.IsValid(player) then
		Events.Broadcast("Quest.Anvil", player, "Close")
	end
end

Events.Connect("CraftEquipmentOpened", OnMailboxOpened)
Events.Connect("CraftEquipmentClosed", OnMailboxClosed)

