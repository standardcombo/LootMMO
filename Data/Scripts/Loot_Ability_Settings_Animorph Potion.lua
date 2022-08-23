local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local STATS_CONNECTOR = require(script:GetCustomProperty('Stats_Connector'))
local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()

local modifiers = {
    [MODIFIERS.Duration.name] = setmetatable(
        {
            calculation = function(stats)
                return 20
            end
        },
        {__index = MODIFIERS.Duration}
    ),
    [MODIFIERS.Cooldown.name] = setmetatable(
        {
            calculation = function(stats)
                return 20
            end
        },
        {__index = MODIFIERS.Cooldown}
    ),
    [MODIFIERS.Radius.name] = setmetatable(
        {
            calculation = function(stats)
                return 20
            end
        },
        {__index = MODIFIERS.Radius}
    )
}
ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
