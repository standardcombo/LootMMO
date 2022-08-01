local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local STATS_CONNECTOR = require(script:GetCustomProperty('Stats_Connector'))
local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()

local modifiers = {
    [MODIFIERS.DOT.name] = setmetatable({}, {__index = MODIFIERS.DOT}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Radius.name] = setmetatable({}, {__index = MODIFIERS.Radius}),
    [MODIFIERS.Duration.name] = setmetatable({}, {__index = MODIFIERS.Duration})
}
modifiers[MODIFIERS.DOT.name].calculation = function()
    return 2
end
modifiers[MODIFIERS.Cooldown.name].calculation = function()
    return 2
end
modifiers[MODIFIERS.Radius.name].calculation = function()
    return 200
end
modifiers[MODIFIERS.Duration.name].calculation = function()
    return 5
end
ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
