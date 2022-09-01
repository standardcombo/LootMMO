local API = {}

function API.Register(functionTable)
    if not _G.APIEchoPortals then
        _G.APIEchoPortals = {}
    end

    _G.APIEchoPortals = functionTable
end

function API.IsRegistered()
    if not _G.APIEchoPortals then
        return false 
    end
    return true
end

function API.AreTherePortalsNearby(player, id, customPosition)
    if _G.APIEchoPortals then
        return _G.APIEchoPortals.AreTherePortalsNearby(player, id, customPosition)
    end
end

function API.GetSettings()
    if _G.APIEchoPortals then
        return _G.APIEchoPortals.GetSettings()
    end

    return nil
end

function API.GetEchoPortals()
    if _G.APIEchoPortals then
        return _G.APIEchoPortals.GetEchoPortals()
    end

    return nil
end

function API.GetPlayerFrontSpawnPosition(player)
    if _G.APIEchoPortals then
        return _G.APIEchoPortals.GetPlayerFrontSpawnPosition(player)
    end

    return nil
end

return API