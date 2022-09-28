

function OnMailboxOpened(player)
	if Object.IsValid(player) then
		Events.Broadcast("Quest.Potions", player, "Open")
	end
end

function OnMailboxClosed(player)
	if Object.IsValid(player) then
		Events.Broadcast("Quest.Potions", player, "Close")
	end
end

Events.Connect("CraftPotionsOpened", OnMailboxOpened)
Events.Connect("CraftPotionsClosed", OnMailboxClosed)

