local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local MODIFIERAPI = _G['Ability.Modifiers']

local modifiers =
    MODIFIERAPI.SetupMultipleNewModifiers(
    {
        'DOT',
        'Cooldown',
        'Radius',
        'Duration'
    }
)
--Formula: Min + (Max - Min) * SP / 156
modifiers['DOT'].calString = "10 + (50 - 10) * SP / 156"
modifiers['DOT'].calculation = function(stats)
    local min = 10
    local max = 50
    local SP = stats.SP
    local dmg = min + (max - min) * SP / 156
    return dmg
end

--Formula: Min - Star Rating * Base Modifier
modifiers['Cooldown'].calString = "20 - Star Rating * 0.5"
modifiers['Cooldown'].calculation = function(stats)
    local min = 20
    local starRating = stats['Tornado']
    local baseModifier = 0.5
    return min - starRating * baseModifier
end

--Formula: Min + (Max - Min) * WIS / 172
modifiers['Radius'].calString = "200 + (800 - 200) * WIS / 172"
modifiers['Radius'].calculation = function(stats)
    local min = 200
    local max = 800
    return min + (max - min) * stats.W / 172
end

--Formula: Min + (Max - Min) * WIS / 172
modifiers['Duration'].calString = "5 + (10 - 5) * WIS / 172"
modifiers['Duration'].calculation = function(stats)
    local min = 5
    local max = 10
    return min + (max - min) * stats.W / 172
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
