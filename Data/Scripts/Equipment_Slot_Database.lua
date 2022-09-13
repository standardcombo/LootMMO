local LOOT_EQUIPMENT_SLOTS = require(script:GetCustomProperty('Loot_Equipment_Slots'))
local api = {}
_G['Equipment.Slots'] = api

function api.GetSlots()
    local types = {}
    for key, value in pairs(LOOT_EQUIPMENT_SLOTS) do
        table.insert(types, key)
    end
    return types
end

function api.GetAcceptingSlots(type)
    local Accepting = {}
    if LOOT_EQUIPMENT_SLOTS[type] then
        Accepting = {CoreString.Split(LOOT_EQUIPMENT_SLOTS[type]['AcceptingType'], ',')}
    end
    return Accepting
end
