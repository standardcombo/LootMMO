--[[
	IK Stack
	by: standardcombo
	v1.0
--]]

local API = {}
_G.IkStack = API


function GetStackForPlayerAndType(player, type)
	if player.clientUserData.IKStackCollection == nil then
		player.clientUserData.IKStackCollection = {}
	end
	if player.clientUserData.IKStackCollection[type] == nil then
		player.clientUserData.IKStackCollection[type] = {}
	end
	return player.clientUserData.IKStackCollection[type]
end


function API.Add(player, ikAnchor, priority)
	priority = priority or 0
	
	local stack = GetStackForPlayerAndType(player, ikAnchor.anchorType)
	--print("IKStack.Add() #stack = " .. #stack)
	
	for _,entry in ipairs(stack) do
		if entry.value == ikAnchor then
			warn("Same IK Anchor attempted to be added again: "..ikAnchor.id)
			return
		end
	end
	
	local i = #stack
	while i >= 1 do
		if priority >= stack[i].priority then
			break
		end
		i = i - 1
	end
	
	if i == #stack then
		ikAnchor:Activate(player)
	end
	table.insert(stack, i + 1, {id = ikAnchor.id, value = ikAnchor, priority = priority})
end


function API.Remove(player, ikAnchor)
	if not Object.IsValid(ikAnchor) then
		CleanupDestroyedEntries(player)
		return
	end
	local stack = GetStackForPlayerAndType(player, ikAnchor.anchorType)
	--print("IKStack.Remove() #stack = " .. #stack)
	for i,entry in ipairs(stack) do
		if entry.id == ikAnchor.id and entry.value == ikAnchor then
			table.remove(stack, i)
			
			-- If the last remaining element is being removed, simply disable it
			if #stack == 0 then
				ikAnchor:Deactivate()
			
			-- If the top element is being removed, apply the previous entry
			elseif i == #stack + 1 then
				local topEntry = stack[#stack]
				topEntry.value:Activate(player)
			end
			return
		end
	end
end


function CleanupDestroyedEntries(player)
	if not player.clientUserData.IKStackCollection then return end
	for type,stack in pairs(player.clientUserData.IKStackCollection) do
		for i,entry in ipairs(stack) do
			if not Object.IsValid(entry.value) then
				table.remove(stack, i)
			end
		end
	end
end

