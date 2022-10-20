--[[
	Player Join Messages in Chat
	by: standardcombo
	v1.0
--]]

local messages = {
	"{0} dropped in. Welcome!",
	"{0} is here. Say hi!",
	"Welcome {0}. Greetings!",
	"Hey everyone, it's {0}!",
	"Glad you are here {0}!",
	"Brace yourselves, {0} has arrived!",
}

Game.playerJoinedEvent:Connect(function(player)
	Task.Wait(2)
	if Object.IsValid(player) then
		local index = math.random(1, #messages)
		local msg = messages[index]
		msg = msg:gsub("{0}", player.name)
		Chat.BroadcastMessage(msg)
	end
end)