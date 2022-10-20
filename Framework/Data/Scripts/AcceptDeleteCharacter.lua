local SubmitDeleteCharacter = 'CDeleteSelect'
local AskDeletion = 'CAskDelete'
local DenyDeletion = 'CDenyDelete'

local NO = script:GetCustomProperty('No'):WaitForObject()
local YES = script:GetCustomProperty('YES'):WaitForObject()
local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local EASE_UI = require(script:GetCustomProperty('EaseUI'))

local GlobalId = nil

function Close()
    EASE_UI.EaseY(ROOT, -400, .2, EASE_UI.EasingEquation.CUBIC)
end

function Open(id)
    GlobalId = id
    local ScreenSize = UI.GetScreenSize()
    local middle = (ScreenSize.y - ROOT.height) / 2
    EASE_UI.EaseY(ROOT, middle, .2, EASE_UI.EasingEquation.CUBIC)
end

function Yes()
    Events.Broadcast(AskDeletion, GlobalId)
    Close()
end

function No()
    Events.Broadcast(DenyDeletion, GlobalId)
    Close()
end

Events.Connect(SubmitDeleteCharacter, Open)
NO.pressedEvent:Connect(No)
YES.pressedEvent:Connect(Yes)
