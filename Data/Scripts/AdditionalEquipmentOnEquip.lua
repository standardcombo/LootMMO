--[[
	Additional Equipment OnEquip
	v1.0
	by: standardcombo
	
	Gives owner an additional equipment when this is equipped.
	Destroys it when this is unequipped.
--]]

local EQUIPMENT = script:FindAncestorByType("Equipment")
local SOCKET = script:GetCustomProperty("Socket") or "right_prop"
local SECONDARY_EQUIPMENT = script:GetCustomProperty("SecondaryEquipment")

local extraEquipment = nil

local function OnEquipped(whichEquipment, player)
    if SECONDARY_EQUIPMENT and not Object.IsValid(extraEquipment) then
        extraEquipment = World.SpawnAsset(SECONDARY_EQUIPMENT, {
        	position = script:GetWorldPosition(),
        	networkContext = NetworkContextType.NETWORKED
        })
    end
    if Object.IsValid(extraEquipment) then
        extraEquipment.socket = SOCKET
        extraEquipment:Equip(player)
        extraEquipment.visibility = Visibility.INHERIT
    end
end

local function OnUnequipped()
    if Object.IsValid(extraEquipment) then
        extraEquipment:Unequip()
        extraEquipment:Destroy()
        extraEquipment = nil
    end
end

EQUIPMENT.equippedEvent:Connect(OnEquipped)
EQUIPMENT.unequippedEvent:Connect(OnUnequipped)