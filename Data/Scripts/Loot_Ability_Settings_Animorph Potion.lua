local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Duration',
        'Cooldown',
        'Radius'
    }
)

--Formula: Min + (Max - Min) * WIS / 172
modifiers['Duration'].calString = "1 + (5 - 1) * WIS / 172"
modifiers['Duration'].calculation = function(stats)
    local min = 0.5
    local max = 2
    return min + (max - min) * stats.W / 172
end

--Formula: Min - Star Rating * Base Modifier
modifiers['Cooldown'].calString = "12 - Star Rating * 0.5"
modifiers['Cooldown'].calculation = function(stats)
    local min = 12
    local starRating = stats['Animorph Potion']
    local baseModifier = 0.5
    return min - starRating * baseModifier
end

--Formula: Min + (Max - Min) * WIS / 172
modifiers['Radius'].calString = "100 + (400 - 100) * WIS / 172"
modifiers['Radius'].calculation = function(stats)
    local min = 400
    local max = 400
    local WIS = stats.W
    return min + (max - min) * WIS / 172
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
