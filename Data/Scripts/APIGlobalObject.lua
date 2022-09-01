local API = {}

function API.Register(functionTable)
    if not _G.APIGlobalObject then
        _G.APIGlobalObject = {}
    end

    _G.APIGlobalObject = functionTable
end

function API.IsRegistered()
    if not _G.APIGlobalObject then
        return false 
    end
    return true
end

function API.SetNetworkedCustomProperty(property, value)
    if _G.APIGlobalObject then
        return _G.APIGlobalObject.SetNetworkedCustomProperty(property, value)
    end
end

function API.SetCustomProperty(property, value)
    if _G.APIGlobalObject then
        return _G.APIGlobalObject.SetCustomProperty(property, value)
    end
end

function API.GetGlobalObject()
    if _G.APIGlobalObject then
        return _G.APIGlobalObject.GetGlobalObject()
    end

    return nil
end

function API.GetCustomProperty(property)
    if _G.APIGlobalObject then
        return _G.APIGlobalObject.GetCustomProperty(property)
    end

    return nil
end

return API