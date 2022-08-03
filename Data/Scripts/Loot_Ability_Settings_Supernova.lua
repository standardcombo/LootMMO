local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local STATS_CONNECTOR = require(script:GetCustomProperty('Stats_Connector'))
local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()

local modifiers = {
    [MODIFIERS.Heal.name] = setmetatable({}, {__index = MODIFIERS.Heal}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Damage.name] = setmetatable({}, {__index = MODIFIERS.Damage}),
    [MODIFIERS.Stun.name] = setmetatable({}, {__index = MODIFIERS.Stun}),
    [MODIFIERS.Radius.name] = setmetatable({}, {__index = MODIFIERS.Radius}),
}
modifiers[MODIFIERS.Heal.name].calculation = function()
    return 2
end
modifiers[MODIFIERS.Cooldown.name].calculation = function()
    return 2
end
modifiers[MODIFIERS.Damage.name].calculation = function()
    return 2
end
modifiers[MODIFIERS.Stun.name].calculation = function()
    return 2
end
modifiers[MODIFIERS.Radius.name].calculation = function()
    return 2000
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)