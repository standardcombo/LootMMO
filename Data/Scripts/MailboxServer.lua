

function OnMailboxOpened(player)
	if Object.IsValid(player) then
		Events.Broadcast("Quest_Welcome", player, "OpenMail")
	end
end

function OnMailboxClosed(player)
	if Object.IsValid(player) then
		Events.Broadcast("Quest_Welcome", player, "CloseMail")
	end
end

Events.Connect("MailboxOpened", OnMailboxOpened)
Events.Connect("MailboxClosed", OnMailboxClosed)

