
local LEFT_COLLIDER = script:GetCustomProperty("LeftCollider"):WaitForObject()
local RIGHT_COLLIDER = script:GetCustomProperty("RightCollider"):WaitForObject()
local PLAY_COLLIDER = script:GetCustomProperty("PlayCollider"):WaitForObject()
local EXIT_COLLIDER = script:GetCustomProperty("ExitCollider"):WaitForObject()

local LEFT_UIACTIVE = script:GetCustomProperty("LeftUIActive"):WaitForObject()
local RIGHT_UIACTIVE = script:GetCustomProperty("RightUIActive"):WaitForObject()
local PLAY_UIACTIVE = script:GetCustomProperty("PlayUIActive"):WaitForObject()
local EXIT_UIACTIVE = script:GetCustomProperty("ExitUIActive"):WaitForObject()

LEFT_UIACTIVE.visibility = Visibility.FORCE_OFF
RIGHT_UIACTIVE.visibility = Visibility.FORCE_OFF
PLAY_UIACTIVE.visibility = Visibility.FORCE_OFF
EXIT_UIACTIVE.visibility = Visibility.FORCE_OFF


function Next()
	Events.Broadcast("NextMap")
end

function Previous()
	Events.Broadcast("PreviousMap")
end

function Play()
	Events.Broadcast("PlayMap")
end

function Exit()
	Events.Broadcast("ExitMap")
	
	EXIT_UIACTIVE.visibility = Visibility.FORCE_OFF
end

function Tick()
	if not UI.IsCursorVisible() then return end
	
	local cursorPos = Input.GetCursorPosition()
	local hit = UI.GetHitResult(cursorPos)
	
	if not hit then return end
	
	-- Left arrow
	if hit.other == LEFT_COLLIDER then
		LEFT_UIACTIVE.visibility = Visibility.INHERIT
	else
		LEFT_UIACTIVE.visibility = Visibility.FORCE_OFF
	end
	
	-- Right arrow
	if hit.other == RIGHT_COLLIDER then
		RIGHT_UIACTIVE.visibility = Visibility.INHERIT
	else
		RIGHT_UIACTIVE.visibility = Visibility.FORCE_OFF
	end
	
	-- Play
	if hit.other == PLAY_COLLIDER then
		PLAY_UIACTIVE.visibility = Visibility.INHERIT
	else
		PLAY_UIACTIVE.visibility = Visibility.FORCE_OFF
	end
	
	-- Exit
	if hit.other == EXIT_COLLIDER then
		EXIT_UIACTIVE.visibility = Visibility.INHERIT
	else
		EXIT_UIACTIVE.visibility = Visibility.FORCE_OFF
	end
end

Game.GetLocalPlayer().bindingPressedEvent:Connect(function(player, action)
	if action == "ability_primary" then
		
		if LEFT_UIACTIVE.visibility == Visibility.INHERIT then
			Previous()
			
		elseif RIGHT_UIACTIVE.visibility == Visibility.INHERIT then
			Next()
			
		elseif PLAY_UIACTIVE.visibility == Visibility.INHERIT then
			Play()
			
		elseif EXIT_UIACTIVE.visibility == Visibility.INHERIT then
			Exit()
		end
	end
end)

