local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local STATS_CONNECTOR = require(script:GetCustomProperty('Stats_Connector'))
local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()

local modifiers = {
    [MODIFIERS.Radius.name] = setmetatable({}, {__index = MODIFIERS.Radius}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Bleed.name] = setmetatable({}, {__index = MODIFIERS.Bleed}),
    [MODIFIERS.Slow.name] = setmetatable({}, {__index = MODIFIERS.Slow})
}

modifiers[MODIFIERS.Radius.name].calculation = function(stats)
    return 200
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(stats)
    return 10
end
modifiers[MODIFIERS.Bleed.name].calculation = function(stats)
    return 5
end
modifiers[MODIFIERS.Slow.name].calculation = function(stats)
    return 5
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
