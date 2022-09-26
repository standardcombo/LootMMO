local EASE_UI = require(script:GetCustomProperty('EaseUI'))
local OFFSET = script:GetCustomProperty('Offset'):WaitForObject()
local SOUND = script:GetCustomProperty('Sound'):WaitForObject()
local AppState = _G['AppState']
local ROOT = script:GetCustomProperty('Root'):WaitForObject()

local isUp = true

function GoUp()
    EASE_UI.EaseY(OFFSET, -200, .5, EASE_UI.EasingDirection.INOUT)
    SOUND:Play()
    _G.CursorStack.Disable()
    isUp = true
end

function GoDown()
    EASE_UI.EaseY(OFFSET, 0, .5, EASE_UI.EasingDirection.INOUT)
    SOUND:Play()
    _G.CursorStack.Enable()
    isUp = false
end

function Toggle()
    if isUp then
        if OFFSET.visibility ~= Visibility.FORCE_OFF then
            GoDown()
        end
    else
        GoUp()
    end
end

function ButtonPressed(_, input)
    if input == 'OpenBars' and ROOT.visibility ~= Visibility.FORCE_OFF then
        Toggle()
    end
end

function Tick()
    if ROOT.visibility == Visibility.FORCE_OFF then
        if not isUp then
            Toggle()
        end
    end
end

Input.actionPressedEvent:Connect(ButtonPressed)
