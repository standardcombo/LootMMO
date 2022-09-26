local API = {}

_G['Inventory.API'] = API

function API.MoveInventory(oldInventory, newInventory, slotA, slotB)
    warn("Not Yet Implimented")
end 

function API.MoveSlot(player, inventory, slotA, SlotB)

end

function API.Remove(player, inventory, slotA)


end 



Events.Connect('inventory.move', API.MoveSlot)
Events.Connect('inventory.remove', API.Remove) 
return API
