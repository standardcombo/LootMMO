local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'Duration',
        'Cooldown'
    }
)
--Formula: Min + (Max - Min) * VIT / 172
modifiers['Duration'].calString = "2 + (5 - 2) * VIT / 172"
modifiers['Duration'].calculation = function(stats)
    local min = 2
    local max = 5
    local VIT = stats.V
    local result = min + (max - min) * VIT / 172
    return result
end

--Formula: Min - Star Rating * Base Modifier
modifiers['Cooldown'].calString = "12 - Star Rating * 0.5"
modifiers['Cooldown'].calculation = function(stats)
    local min = 12
    local starRating = stats['Stone Wall']
    local baseModifier = 0.5
    return min - starRating * baseModifier
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
