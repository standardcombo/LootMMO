
local ITEM_ID = "pint"


function OnFillCup(player, obj)
	if obj ~= script then return end
	
	for _,equip in ipairs(player:GetEquipment()) do
		local itemId, exists = equip:GetCustomProperty("itemId")
		if exists and itemId == ITEM_ID then
			local def = _G.Consumables.GetDefinition(ITEM_ID)
			equip:SetCustomProperty("usesRemaining", def.numberOfUses)
			
			Events.Broadcast("Quest.Pint", player, "FillPint")
			return
		end
	end
end

Events.ConnectForPlayer("FillCup", OnFillCup)

