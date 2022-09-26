local LOOT_ABILITY_EQUIPMENT = _G['Ability.Equipment']
local EquipApi = {}

function EquipApi.EquipEquipment(player, equipmentName, slot)
    slot = slot or ''
    local address = LOOT_ABILITY_EQUIPMENT.GetEquipment(equipmentName)
    if not address then
        return
    end
    local newEquipment = World.SpawnAsset(address)
    if not newEquipment then
        warn(equipmentName .. ' not found.')
        return
    end 
    newEquipment.name = equipmentName
    newEquipment:SetCustomProperty('AbilityBinding', slot)
    newEquipment:Equip(player)
    return newEquipment
end

_G['Equipper'] = EquipApi

Events.Connect('Equipper_Equip', EquipApi.EquipEquipment)
