local function UserDataBypass()
    if Environment.IsClient() then
        return 'clientUserData'
    end
    return 'serverUserData'
end

local function CalculateStats(stats)
    local newstats = {}
    for key, value in pairs(stats or {}) do
        if value.calculation then
            newstats[key] = value.calculation()
        else
            newstats[key] = value.value or 0
        end
    end
    return newstats
end

local Api = {}

function Api.RegisterCalculation(Root, modifiers)
    local bypass = UserDataBypass()
    Root[bypass].calculateModifier = function()
        return CalculateStats(modifiers)
    end
end

return Api
