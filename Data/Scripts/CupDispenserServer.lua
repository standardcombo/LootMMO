
local ITEM_ID = "pint"

local NET_OBJECT = script:GetCustomProperty("NetObject"):WaitForObject()
local EMPTY_CUP = script:GetCustomProperty("EmptyCup")

local REFILL_DELAY = 20


Events.ConnectForPlayer("TakeCup", function(player, cupNumber)
	NET_OBJECT:SetCustomProperty("Cup" .. cupNumber, false)
	NET_OBJECT:ForceReplication()
	
	local item = _G.ItemFactory.Spawn(ITEM_ID)
	item:SetCustomProperty("usesRemaining", 0)
	
	_G.EquipmentStack.Equip(player, item)
	
	item.destroyEvent:Connect(function()
		_G.EquipmentStack.Unequip(player, item)
	end)
	
	Task.Wait(REFILL_DELAY)
	NET_OBJECT:SetCustomProperty("Cup" .. cupNumber, true)
	NET_OBJECT:ForceReplication()
end)