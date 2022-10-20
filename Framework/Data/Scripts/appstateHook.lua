local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local appstate = _G.AppState
local cursorStack = _G.CursorStack
local SHOW_MOUSE = script:GetCustomProperty('ShowMouse')
local acceptingVisibilities = {}

local isOpen = false

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
    if SHOW_MOUSE and not isOpen then
        cursorStack:Enable()
        isOpen = true
    end
end

function Hide()
    ROOT.visibility = Visibility.FORCE_OFF
    if SHOW_MOUSE and isOpen then
        cursorStack:Disable()
        isOpen = false
    end
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
        if newState == prevPlayerState then
            return
        end
        Toggle(newState)
    end
)
