local API = {}

function API.Register(functionTable)
    if not _G.APILocale then
        _G.APILocale = {}
    end

    _G.APILocale = functionTable
end

function API.IsRegistered()
    if not _G.APILocale then
        return false 
    end
    return true
end

--[[
    [Client]
    Allows access to translations by indexing the API with brakets. 
    E.g.:
    local L = require(script:GetCustomProperty("APILocale"))
    local str = L["Settings"]
    This returns the word "Settings", translated to the player's chosen locale.
--]]
setmetatable(API, {
    __index = function(_, key)
        if _G.APILocale then
            return _G.APILocale.GetLocale()[key]
        end
        return nil
    end
})
-- [Client]
function API.GetLocaleIndex(key)
    if _G.APILocale then
        return _G.APILocale.GetLocaleIndex(key)
    end

    return nil
end
-- [Client]
function API.GetLocaleKey(index)
    if _G.APILocale then
        return _G.APILocale.GetLocaleKey(index)
    end

    return nil
end
-- [Client]
function API.SetLocaleKey(key, forceSendToServer)
    if _G.APILocale then
        _G.APILocale.SetLocaleKey(key, forceSendToServer)
    end
end
-- [Client]
function API.GetPlayerCurrentKey(player)
    if _G.APILocale then
        return _G.APILocale.GetPlayerCurrentKey(player)
    end

    return nil
end

return API