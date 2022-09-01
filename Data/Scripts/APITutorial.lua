local API = {}

-- [Server, Client]
function API.Register(functionTable)
    if not _G.APITutorial then
        _G.APITutorial = {}
    end

    _G.APITutorial = functionTable
end

-- [Server, Client]
function API.IsRegistered()
    if not _G.APITutorial then
        return false 
    end
    return true
end

-- [Server]
function API.ResetTutorial(player)
    if _G.APITutorial then
        return _G.APITutorial.ResetTutorial(player)
    end
end

-- [Server, Client]
function API.GetTutorialList()
    if _G.APITutorial then
        return _G.APITutorial.GetTutorialList()
    end

    return nil
end

-- [Server, Client]
function API.GetTutorialById(tutorialId)
    if _G.APITutorial then
        return _G.APITutorial.GetTutorialById(tutorialId)
    end

    return nil  
end

-- [Server, Client]
function API.GetTutorialByIndex(tutorialIndex)
    if _G.APITutorial then
        return _G.APITutorial.GetTutorialByIndex(tutorialIndex)
    end

    return nil  
end

-- [Server, Client]
function API.GetTutorialIndex(tutorialId)
    if _G.APITutorial then
        return _G.APITutorial.GetTutorialIndex(tutorialId)
    end

    return nil
end

-- [Server, Client]
function API.HasPlayerCompletedTutorial(player)
    if _G.APITutorial then
        return _G.APITutorial.HasPlayerCompletedTutorial(player)
    end

    return nil
end

-- [Server, Client]
function API.CanResetTutorial(player)
    if (_G.APITutorial) then
        return _G.APITutorial.CanResetTutorial(player)
    end

    return nil
end

return API