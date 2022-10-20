--[[
	Cursor Stack
	by: standardcombo
	v1.0
--]]

local API = {}
_G.CursorStack = API

local counter = 0

function API.Enable()
	counter = counter + 1
	UI.SetCursorVisible(true)
	UI.SetCanCursorInteractWithUI(true)
end


function API.Disable()
	counter = counter - 1
	if counter <= 0 then
		UI.SetCursorVisible(false)
		UI.SetCanCursorInteractWithUI(false)
	end
end

