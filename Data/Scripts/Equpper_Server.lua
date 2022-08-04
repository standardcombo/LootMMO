local LOOT_ABILITY_EQUIPMENT = require(script:GetCustomProperty('Loot_Ability_Equipment'))

function EquipEquipment(player, equipmentName, slot)
    slot = slot or ''
    if not LOOT_ABILITY_EQUIPMENT[equipmentName] then
        return
    end
    if not LOOT_ABILITY_EQUIPMENT[equipmentName]['equipment'] then
        return
    end

    local newEquipment = World.SpawnAsset(LOOT_ABILITY_EQUIPMENT[equipmentName]['equipment'])
    newEquipment.name = equipmentName
    newEquipment:SetCustomProperty('AbilityBinding', slot)
    newEquipment:Equip(player)
end

Events.Connect('Equipper_Equip', EquipEquipment)
