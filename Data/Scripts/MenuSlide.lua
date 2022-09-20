local EASE_UI = require(script:GetCustomProperty('EaseUI'))
local OFFSET = script:GetCustomProperty('Offset'):WaitForObject()
local SOUND = script:GetCustomProperty('Sound'):WaitForObject()
local AppState = _G['AppState']
local isUp = true

function GoUp()
    EASE_UI.EaseY(OFFSET, -200, .5, EASE_UI.EasingDirection.INOUT)
    SOUND:Play()
    _G.CursorStack.Disable()
end

function GoDown()
    EASE_UI.EaseY(OFFSET, 0, .5, EASE_UI.EasingDirection.INOUT)
    SOUND:Play()
    _G.CursorStack.Enable()
end

function Toggle()
    if isUp then
        if OFFSET.visibility ~= Visibility.FORCE_OFF then
            GoDown()
        end
    else
        GoUp()
    end
    isUp = not isUp
end

function ButtonPressed(_, input)
    if input == 'OpenBars' then
        Toggle()
    end
end

Input.actionPressedEvent:Connect(ButtonPressed)
Events.Connect(
    'AppState.Enter',
    function(player, newState, prevPlayerState)
        if newState ~= AppState.Adventure and newState ~= AppState.SocialHub then
            if not isUp then
                GoUp()
            end
        end
    end
)
