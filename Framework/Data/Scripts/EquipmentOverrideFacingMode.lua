
local EQUIPMENT = script:FindAncestorByType("Equipment")
local DESIRED_FACING_MODE = script:GetCustomProperty("FacingMode")


local oldFacingMode = nil


function OnEquipped(_, player)
	oldFacingMode = player.desiredFacingMode
	player.desiredFacingMode = DESIRED_FACING_MODE
end

function OnUnequipped(_, player)
	player.desiredFacingMode = oldFacingMode
end

EQUIPMENT.equippedEvent:Connect(OnEquipped)
EQUIPMENT.unequippedEvent:Connect(OnUnequipped)

