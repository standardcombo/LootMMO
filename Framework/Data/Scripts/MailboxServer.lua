

function OnMailboxOpened(player)
	if Object.IsValid(player) then
		Events.Broadcast("Quest.Welcome", player, "OpenMail")
	end
end

function OnMailboxClosed(player)
	if Object.IsValid(player) then
		Events.Broadcast("Quest.Welcome", player, "CloseMail")
	end
end

Events.Connect("MailboxOpened", OnMailboxOpened)
Events.Connect("MailboxClosed", OnMailboxClosed)

