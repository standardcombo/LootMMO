local API = {}
Task.Wait()
local EquipApi = _G["Character.EquipAPI"]
_G['Inventory.API'] = API

function API.MoveInventory(oldInventory, newInventory, slotA, slotB)
	warn("Not Yet Implimented")
end

function API.MoveSlot(player, slotA, slotB)
	local char = EquipApi.GetCurrentCharacter(player)
	if char then
		local inv = char:GetComponent("Inventory")
		inv:GetInventory():MoveFromSlot(slotA, slotB)
	end
end

function API.Remove(player, inventory, slotA)


end

Events.ConnectForPlayer('inventory.move', API.MoveSlot)
Events.ConnectForPlayer('inventory.remove', API.Remove)
return API
