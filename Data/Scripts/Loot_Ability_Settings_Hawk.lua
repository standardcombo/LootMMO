local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local STATS_CONNECTOR = require(script:GetCustomProperty('Stats_Connector'))
local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()

local modifiers = {
    [MODIFIERS.Damage.name] = setmetatable({}, {__index = MODIFIERS.Damage}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Duration.name] = setmetatable({}, {__index = MODIFIERS.Duration})
}

modifiers[MODIFIERS.Damage.name].calculation = function(stats)
    return 40
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(stats)
    return 40
end
modifiers[MODIFIERS.Duration.name].calculation = function(stats)
    return 15
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
