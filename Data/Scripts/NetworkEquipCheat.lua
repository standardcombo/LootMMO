local EQUIPMENT = script:FindAncestorByType('Equipment')

local function ForceReplicate()
    EQUIPMENT:ForceReplication()
end

EQUIPMENT.equippedEvent:Connect(ForceReplicate)
EQUIPMENT.unequippedEvent:Connect(ForceReplicate)
EQUIPMENT.customPropertyChangedEvent:Connect(ForceReplicate)
