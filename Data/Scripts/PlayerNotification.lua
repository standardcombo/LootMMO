local NOTIFIER = script:GetCustomProperty('Notifier'):WaitForObject()
local NOTIFICATION_COUNT = script:GetCustomProperty("NotificationCount"):WaitForObject()

local appstate = _G.AppState
local SOUND = script:GetCustomProperty('Sound'):WaitForObject()
local hasSeen = true
local notificationCount = 0

function Seen()
	NOTIFIER.visibility = Visibility.FORCE_OFF
	notificationCount = 0
	hasSeen = true
end

function NotSeen()
	NOTIFIER.visibility = Visibility.INHERIT
	SOUND:Play()
	hasSeen = false
end

function UpdateSeen()
	NOTIFICATION_COUNT.text = tostring(notificationCount)
	if notificationCount > 0 then
		NotSeen()
	else
		Seen()
	end
end

local function AddNotification()
	notificationCount = notificationCount + 1
	UpdateSeen()
end

local function ClearNotifications()
	notificationCount = 0
	UpdateSeen()
end

Events.Connect(
	'AppState.Enter',
	function(player, newState, prevPlayerState)
		if newState == appstate.Ability then
			ClearNotifications()
		end
		if newState == appstate.BagSelection then
			ClearNotifications()
		end
	end
)

Events.Connect("PlayerNotification", AddNotification)
