local _Targets = {}

local API = {}

function API.RegisterTarget(Target)
    table.insert(_Targets, Target)
end

function API.UnRegisterTarget(Target)
    for index, value in ipairs(_Targets) do
        if value == Target then
            table.remove(_Targets, index)
            return
        end
    end
end
function API.GetTargets()
    return _Targets
end
return API
