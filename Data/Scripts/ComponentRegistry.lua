local COMPONENTS = require(script:GetCustomProperty('Components'))
local CC_Util = _G.CC_Util
local LUAEVENT = CC_Util:WaitForlibrary('Lua Event')
local Api = {}
_G['Character.Components'] = Api

local requiredComponents = {}
for key, value in pairs(COMPONENTS) do
    table.insert(requiredComponents, require(value['Component']))
end

function Api.FindComponetFromName(name)
    for index, value in ipairs(requiredComponents) do
        if name == value.id then
            return value
        end
    end
end

function Api.NewComponent(componentName)
    local index = Api.FindComponetFromName(componentName)

    if not index then
        return
    end
    local newComponent = setmetatable({}, {__index = index})
    for key, value in pairs(newComponent.eventElements or {}) do
        newComponent[value] = LUAEVENT.NewSafeEvent()
    end
    for key, value in pairs(newComponent.tableElements or {}) do
        newComponent[value] = {}
    end
    newComponent:Init()
    return newComponent
end

 