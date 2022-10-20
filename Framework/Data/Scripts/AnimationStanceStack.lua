--[[
	Animation Stance Stack
	by: standardcombo
	v1.0
--]]

local API = {}
_G.StanceStack = API


function GetStackPlayer(player)
	if player.serverUserData.AnimationStanceStack == nil then
		player.serverUserData.AnimationStanceStack = {}
	end
	return player.serverUserData.AnimationStanceStack
end


function API.Add(player, stance, callerId)
	player.animationStance = stance
	
	local stack = GetStackPlayer(player)
	
	for _,entry in ipairs(stack) do
		if entry.id == callerId and entry.value == stance then
			warn("Same Animation Stance attempted to be added again: "..stance)
			return
		end
	end
	
	table.insert(stack, {id = callerId, value = stance})
end


function API.Remove(player, stance, callerId)
	local stack = GetStackPlayer(player)
	for i,entry in ipairs(stack) do
		if entry.id == callerId and entry.value == stance then
			table.remove(stack, i)
			
			-- If the top element is being removed, apply the previous entry
			if i == #stack + 1 then
				local topEntry = stack[#stack]
				player.animationStance = topEntry.value
			end
			return
		end
	end
end


function OnPlayerJoined(player)
	-- Bottom value, default
	API.Add(player, player.animationStance, -1)
end
Game.playerJoinedEvent:Connect(OnPlayerJoined)

