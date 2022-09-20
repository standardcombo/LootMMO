local appstate = _G.AppState
local NEWAPPSTATE = script:GetCustomProperty('appstate')
local EVENT = script:GetCustomProperty('Event')

local acceptingVisibilities = {}
for key, value in pairs(script:GetCustomProperties()) do
    if appstate[key] then
        acceptingVisibilities[appstate[key]] = value
    end
end

function CanChange(newState)
    return acceptingVisibilities[newState]
end

function EventTriggered()
    if not appstate[NEWAPPSTATE] then
        return
    end
    if CanChange(appstate.GetLocalState()) then
        appstate.SetLocalState(appstate[NEWAPPSTATE])
    end
end

if EVENT ~= '' then
    Events.Connect(EVENT, EventTriggered)
end
