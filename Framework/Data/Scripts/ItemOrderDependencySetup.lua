local ORDER = require(script:GetCustomProperty('Order'))

local API = {}
function API.GetOrder(name)
    return ORDER[name]
end

_G['Items.Order'] = API
