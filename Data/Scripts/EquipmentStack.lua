--[[
	Animation Stance Stack
	by: standardcombo
	v1.0
--]]

local API = {}
_G.EquipmentStack = API


function GetStackPlayer(player, socket)
	if player.serverUserData.EquipmentStackCollection == nil then
		player.serverUserData.EquipmentStackCollection = {}
	end
	if player.serverUserData.EquipmentStackCollection[socket] == nil then
		player.serverUserData.EquipmentStackCollection[socket] = {}
	end
	return player.serverUserData.EquipmentStackCollection[socket]
end


function API.Equip(player, equipment, priority)
	local socket = equipment.socket
	priority = priority or 0
	
	local stack = GetStackPlayer(player, socket)
	
	for _,entry in ipairs(stack) do
		if entry.value == equipment then
			warn("Same Equipment attempted to be added again: "..tostring(equipment))
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
		-- Disable previous
		local topEntry = stack[#stack]
		if topEntry then
			SetEnabled(topEntry.value, false)
		end
		-- Equip new one
		equipment:Equip(player)
	end
	table.insert(stack, i + 1, {value = equipment, priority = priority})
end


function API.Unequip(player, equipment)
	if not Object.IsValid(equipment) then
		CleanupDestroyedEntries(player)
		return
	end
	local socket = equipment.socket
	local stack = GetStackPlayer(player, socket)
	for i,entry in ipairs(stack) do
		if entry.value == equipment then
			table.remove(stack, i)
			
			-- If the last remaining element is being removed, simply disable it
			if #stack == 0 then
				equipment:Unequip()
			
			-- If the top element is being removed, apply the previous entry
			elseif i == #stack + 1 then
				local topEntry = stack[#stack]
--				topEntry.value:Equip(player)
				SetEnabled(topEntry.value, true)
			end
			return
		end
	end
end


function SetEnabled(equipment, value)
	if not Object.IsValid(equipment) then return end
	
	equipment.isEnabled = value
	
	for _,ability in ipairs(equipment:GetAbilities()) do
		ability.isEnabled = value
	end
end


function CleanupDestroyedEntries(player)
	if not player.serverUserData.EquipmentStackCollection then return end
	for socket,stack in pairs(player.serverUserData.EquipmentStackCollection) do
		for i,entry in ipairs(stack) do
			if not Object.IsValid(entry.value) then
				table.remove(stack, i)
			end
		end
	end
end

