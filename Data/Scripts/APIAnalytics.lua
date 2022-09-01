--[[
    Before sending out an event, add the event key to the Analytics Events table.


    Usage Examples
    --------------
    --> Option 1
    local API_ANALYTICS = require(script:GetCustomProperty("APIAnalytics"))

    API_ANALYTICS.SubmitEvent("ExampleEvent", {exampleKey = true})

    --> Option 2
    if _G.Analytics then
        _G.Analytics.SubmitEvent("ExampleEvent", {exampleKey = true})
    end


    Functions
    --------------
    SubmitEvent(eventKey string, data table)
    IsEventKeyValid(eventKey string)
--]]

local API = {}

-- [Server, Client]
function API.Register(functionTable)
    if not _G.Analytics then
        _G.Analytics = {}
    end

    _G.Analytics = functionTable

    for key, value in pairs(functionTable) do
        API[key] = value
    end
end

-- [Server, Client]
function API.IsRegistered()
    if not _G.Analytics then
        return false
    end
    return true
end

return API