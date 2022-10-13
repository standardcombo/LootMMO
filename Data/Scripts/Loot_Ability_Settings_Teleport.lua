local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Cooldown',
        'Range'
    }
)

modifiers['Cooldown'].calString = "20 - Star Rating * 0.5"
modifiers['Cooldown'].calculation = function(stats)
    --Formula: Min - Star Rating * Base Modifier
    local min = 20
    local starRating = stats['Teleport']
    local BaseModifier = 0.5
    return min - starRating * BaseModifier
end

modifiers['Range'].calString = "2000 + (3000 - 2000) * WIS / 172"
modifiers['Range'].calculation = function(stats)
    local min = 2000
    local max = 3000
    return min + (max - min) * stats.W / 172
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
