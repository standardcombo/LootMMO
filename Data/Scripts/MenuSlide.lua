local EASE_UI = require(script:GetCustomProperty('EaseUI'))
local OFFSET = script:GetCustomProperty('Offset'):WaitForObject()
local SOUND = script:GetCustomProperty('Sound'):WaitForObject()

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
        GoDown()
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
