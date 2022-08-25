local MAIN_CLASS = require(script:GetCustomProperty('Main_Class'))
local SUB_CLASS = require(script:GetCustomProperty('Sub_Class'))

local CompletedClasses = {}

for key, value in pairs(SUB_CLASS) do
    CompletedClasses[key] = value
    if MAIN_CLASS[value['MainClass']] then
        CompletedClasses[key]['MainClass'] = MAIN_CLASS[value['MainClass']]
    end
end

local Api = {}
function Api.GetClass(name)
    return CompletedClasses[name]
end

_G['Character.Classes'] = Api
