local LOOT_STATS_MODIFIABLES = require(script:GetCustomProperty('Loot_Stats_Modifiables'))
local Api = {}

function Api.GetModifiable(name)
    return LOOT_STATS_MODIFIABLES[name]
end

function Api.SetupNewModifier(modifier)
    local modifierTable = Api.GetModifiable(modifier)
    if not modifierTable then
        warn(modifier .. ' not found')
        return
    end
    return setmetatable({}, {__index = modifierTable})
end

function Api.SetupMultipleNewModifiers(modifiers)
    local ReturnTable = {}
    for key, value in pairs(modifiers) do
        local newModifier = Api.SetupNewModifier(value)
        if newModifier then
            ReturnTable[value] = newModifier
        end
    end
    return ReturnTable
end

_G['Ability.Modifiers'] = Api
return Api
