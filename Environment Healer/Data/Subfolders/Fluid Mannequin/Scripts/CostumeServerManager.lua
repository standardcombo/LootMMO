local costumeEquipmentTemplate = script:GetCustomProperty("CostumeEquipmentTemplate"):WaitForObject()
local pickupTrigger = script:GetCustomProperty("PickupTrigger"):WaitForObject()

local playerVisibility = costumeEquipmentTemplate:GetCustomProperty("PlayerVisibility")

local originalVisibility = nil

function OnEquipCostume(costume, player) -- save original visibility and set costume visibility (if setting visibility is allowed).

	originalVisibility = player:GetVisibility()
	
	if playerVisibility == 0 then
	
		player:SetVisibility(false, false)
		
	elseif playerVisibility > 0 then
	
		player:SetVisibility(true, false)
		
	end

end

function OnUnequipCostume(costume, player) -- restore original visibility (if setting visibility is allowed).

	if playerVisibility >= 0 then
	
		player:SetVisibility(originalVisibility, false)
		
	end
	
	pickupTrigger.collision = Collision.INHERIT

end

costumeEquipmentTemplate.equippedEvent:Connect(OnEquipCostume)
costumeEquipmentTemplate.unequippedEvent:Connect(OnUnequipCostume)