local API = {}

function API.Register(functionTable)
    if not _G.APIGlobalTime then
        _G.APIGlobalTime = {}
    end

    _G.APIGlobalTime = functionTable
end

function API.IsRegistered()
    if not _G.APIGlobalTime then
        return false 
    end
    return true
end

function API.GetStartOSTime()
    if _G.APIGlobalTime then
        return _G.APIGlobalTime.GetStartOSTime()
    end

    return nil
end

function API.GetRemainingTime(timeInSeconds)
    if _G.APIGlobalTime then
        return _G.APIGlobalTime.GetRemainingTime(timeInSeconds)
    end

    return nil
end

return API