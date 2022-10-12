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

modifiers['Cooldown'].calString = "8 - Star Rating * 0.5"
modifiers['Cooldown'].calculation = function(stats)
    --Formula: Min - Star Rating * Base Modifier
    local min = 8
    local starRating = stats['Teleport']
    local BaseModifier = 0.5
    return min - starRating * BaseModifier
end

modifiers['Range'].calString = "200 + (800 - 200) * WIS / 172"
modifiers['Range'].calculation = function(stats)
    local min = 600
    local max = 1200
    local maxWiz = 172
    return min + (max - min) * stats.W / maxWiz
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
