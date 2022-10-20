local appstate = _G['AppState']
local STATE = script:GetCustomProperty('state')

local acceptedStates = {
    [appstate.Adventure] = true,
    [appstate.SocialHub] = true
}

local previousState = nil

Events.Connect(
    'AppState.Enter',
    function(player, newState, prevPlayerState)
        if acceptedStates[prevPlayerState] then
            previousState = prevPlayerState
        end

        if appstate[STATE] == newState and prevPlayerState == appstate[STATE] then
            if previousState then
                Task.Wait()
                appstate.SetLocalState(previousState)
            end
        end
    end
)
