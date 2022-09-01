--[[
	Cursor Stack
	by: standardcombo
	v1.0
--]]
local API = {}
_G.CursorStack = API

local counter = 0
local runTime = function()
end

function API.Enable()
    counter = counter + 1
    UI.SetCanCursorInteractWithUI(true)
    runTime = function()
        if not UI.IsCursorVisible() then
            UI.SetCursorVisible(true)
        end
    end
end

function API.Disable()
    counter = counter - 1
    if counter <= 0 then
        UI.SetCanCursorInteractWithUI(false)
        runTime = function()
            if UI.IsCursorVisible() then
                UI.SetCursorVisible(false)
            end
        end
    end
end

function Tick()
    runTime()
end
