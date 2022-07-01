
local ITEM_ID = "pint"

local PICKUP_TEMPLATE = script:GetCustomProperty("PickupTemplate")


function OnDeliver(player, pos, rot)
	local fullCup = GetFullCup(player)
	if fullCup then
		World.SpawnAsset(PICKUP_TEMPLATE, {position = pos, rotation = rot})
		fullCup:Destroy()
	end
end

Events.ConnectForPlayer("DeliverCup", OnDeliver)


function GetFullCup(player)
	for _,equip in ipairs(player:GetEquipment()) do
		local itemId, exists = equip:GetCustomProperty("itemId")
		if exists and itemId == ITEM_ID 
		and equip:GetCustomProperty("usesRemaining") > 0 then
			return equip
		end
	end
	return nil
end

