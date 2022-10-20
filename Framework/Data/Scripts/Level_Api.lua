local API = {}
_G['Loot.level'] = API
local LEVEL = require(script:GetCustomProperty('Level'))
local newKeys = {}
local levelKeys = {}
for index, value in ipairs(LEVEL) do
    table.insert(newKeys, CurveKey.New(value['XP'], index))
    table.insert(levelKeys, CurveKey.New(index, value['XP']))
end
local XPCURVE = SimpleCurve.New(newKeys)
local LEVELCURVE = SimpleCurve.New(levelKeys)

function API.GetTable()
    return LEVEL
end
function API.GetLevelCurve()
    return LEVELCURVE
end
function API.GetXpCurve()
    return XPCURVE
end

return API
