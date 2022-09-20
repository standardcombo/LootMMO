local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local appstate = _G.AppState

local acceptingVisibilities = {}
for key, value in pairs(script:GetCustomProperties()) do
    if appstate[key] then
        acceptingVisibilities[appstate[key]] = value
    end
end

function ShouldShow(newState)
    return acceptingVisibilities[newState]
end

function Show()
    ROOT.visibility = Visibility.INHERIT
end

function Hide()
    ROOT.visibility = Visibility.FORCE_OFF
end

function Toggle(state)
    if ShouldShow(state) then
        Show()
    else
        Hide()
    end
end
Toggle(appstate.GetLocalState())
Events.Connect(
    'AppState.Enter',
    function(player, newState, prevPlayerState)
        Toggle(newState)
    end
)
