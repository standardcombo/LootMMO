

function CraftEquipmentOpened(player)
	if Object.IsValid(player) then
		Events.Broadcast("Quest.Anvil", player, "Open")
	end
end

function CraftEquipmentClosed(player)
	if Object.IsValid(player) then
		Events.Broadcast("Quest.Anvil", player, "Close")
	end
end

Events.Connect("CraftEquipmentOpened", CraftEquipmentOpened)
Events.Connect("CraftEquipmentClosed", CraftEquipmentClosed)

