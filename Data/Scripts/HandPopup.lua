-- Custom
local HAND_POPUP = script:GetCustomProperty('HandPopup'):WaitForObject()
local SPLINE_CURVE = script:GetCustomProperty('SplineCurve')
local ICON_OPEN = script:GetCustomProperty("Icon_Open"):WaitForObject()
local ICON_CLOSE = script:GetCustomProperty("Icon_Close"):WaitForObject()

local isUp = true
local moveTask

function Move(endPos, delay)
	local starttime = time()
	local endTime = starttime + delay
	local multiplier = 1 / delay

	local startpos = Vector2.New(HAND_POPUP.x, HAND_POPUP.y)
	local offset = endPos - startpos

	while time() < endTime and Object.IsValid(HAND_POPUP) do
		local newPos = Vector2.Lerp(startpos, endPos, (time() - starttime) / delay)
		HAND_POPUP.x = newPos.x
		HAND_POPUP.y = newPos.y
		Task.Wait()
	end
	local newPos = Vector2.Lerp(startpos, endPos,1)
	HAND_POPUP.x = newPos.x
	HAND_POPUP.y = newPos.y
end

function Toggle()
	if moveTask then
		moveTask:Cancel()
	end

	if isUp then
		ICON_OPEN.visibility = Visibility.FORCE_OFF
		ICON_CLOSE.visibility = Visibility.INHERIT
		moveTask = Task.Spawn(
		function()
			Move(Vector2.New(0, 0), .5)
			moveTask = nil
		end
		)
	else
		ICON_OPEN.visibility = Visibility.INHERIT
		ICON_CLOSE.visibility = Visibility.FORCE_OFF
		moveTask = Task.Spawn(
		function()
			Move(Vector2.New(0, 780), .5)
			moveTask = nil
		end
		)
	end
	isUp = not (isUp)
end

local PopupEvent = Events.Connect('HandPopUp', Toggle)
script.destroyEvent:Connect(function() 
	PopupEvent:Disconnect()
end )