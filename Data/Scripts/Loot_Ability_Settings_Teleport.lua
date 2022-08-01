local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
local STATS_CONNECTOR = require(script:GetCustomProperty('Stats_Connector'))
local ROOT_CALCULATION_API = require(script:GetCustomProperty('RootCalculation_Api'))
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local modifiers = {
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown})
}
modifiers[MODIFIERS.Cooldown.name].calculation = function()
    return 10 - STATS_CONNECTOR.GetStat(ROOT.owner, 'Level')
end

ROOT_CALCULATION_API.RegisterCalculation(ROOT, modifiers)
