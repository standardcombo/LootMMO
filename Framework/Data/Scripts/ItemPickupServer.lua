
local ITEM_ID = script:GetCustomProperty("ItemId")
local VFX = script:GetCustomProperty("VFX")


function OnPickup(player, obj)
	if obj ~= script then return end
		
	World.SpawnAsset(VFX, {position = script:GetWorldPosition()})
	
	script:Destroy()
	
	local item = _G.ItemFactory.Spawn(ITEM_ID)
	if item then
		--[[for _,equip in ipairs(player:GetEquipment()) do
			if equip.socket == item.socket then
				equip.isEnabled = false
			end
		end--]]
		--item:Equip(player)
		_G.EquipmentStack.Equip(player, item)
		
		item.destroyEvent:Connect(function()
			_G.EquipmentStack.Unequip(player, item)
		end)
	end
end

Events.ConnectForPlayer("PickupItem", OnPickup)