local BADGE_ROOT = script:GetCustomProperty("BadgeRoot"):WaitForObject()
local BADGE_TEXT = script:GetCustomProperty("BadgeText"):WaitForObject()
local LEVEL_UP_ICON = script:GetCustomProperty("LevelUpIcon"):WaitForObject()
local SOUND = script:GetCustomProperty("Sound"):WaitForObject()

local appstate = _G.AppState
local hasSeen = true
local notificationCount = 0

function Seen()
	BADGE_ROOT.visibility = Visibility.FORCE_OFF
	LEVEL_UP_ICON.visibility = Visibility.FORCE_OFF
	notificationCount = 0
	hasSeen = true
end

function NotSeen()
	BADGE_ROOT.visibility = Visibility.INHERIT
	LEVEL_UP_ICON.visibility = Visibility.INHERIT
	SOUND:Play()
	hasSeen = false
end

function UpdateSeen()
	BADGE_TEXT.text = tostring(notificationCount)
	if notificationCount > 0 then
		NotSeen()
	else
		Seen()
	end
end

local function AddNotification(amount)
	amount = amount or 1
	notificationCount = notificationCount + amount
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
