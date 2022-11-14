--[[
	Social Kit Nameplate Controller
	by: standardcombo
	v1.0
	
	Custom nameplates for the Social Kit.
--]]

local NAMEPLATE_TEMPLATE = script:GetCustomProperty("NameplateTemplate")

local SHOW_ON_SELF = script:GetCustomProperty("ShowOnSelf")
local MAX_DISTANCE = script:GetCustomProperty("MaxDistance")
local SHOW_ON_DEAD_PLAYERS = script:GetCustomProperty("ShowOnDeadPlayers")
local SCALE = script:GetCustomProperty("Scale")

-- Check user properties
if MAX_DISTANCE < 0.0 then
    warn("MaxDistance cannot be negative")
    MAX_DISTANCE = 0.0
end

if SCALE <= 0.0 then
    warn("Scale must be positive")
    SCALE = 1.0
end


local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Variables
local nameplates = {}

-- nil OnPlayerJoined(Player)
-- Creates a nameplate for the local player to see the target player's status
function OnPlayerJoined(player)
	local nameplateRoot = World.SpawnAsset(NAMEPLATE_TEMPLATE)
	
	nameplateRoot.clientUserData.player = player

	nameplates[player] = {}
	nameplates[player].templateRoot = nameplateRoot
	nameplates[player].nameText = nameplateRoot:GetCustomProperty("NameText"):WaitForObject()
	nameplates[player].subtitleText = nameplateRoot:GetCustomProperty("SubtitleText"):WaitForObject()

	-- Setup static properties
	nameplateRoot:AttachToPlayer(player, "nameplate")
	nameplateRoot:SetScale(Vector3.New(SCALE, SCALE, SCALE))

	-- Static properties on pieces
	nameplates[player].nameText.text = player.name
	
	if _G.PlayerSubtitles then
		nameplates[player].subtitleText.text = _G.PlayerSubtitles.GetSubtitle(player)
	end

	nameplates[player].nameText.visibility = Visibility.INHERIT
	nameplates[player].subtitleText.visibility = Visibility.INHERIT
	
	UpdateBadges(player)
end

-- nil OnPlayerLeft(Player)
-- Destroy their nameplate
function OnPlayerLeft(player)
	if nameplates[player] ~= nil then
		if Object.IsValid(nameplates[player].templateRoot) then
			nameplates[player].templateRoot:Destroy()
		end

		nameplates[player] = nil
	end
end

-- bool IsNameplateVisible(Player)
-- Can we see this player's nameplate given team and distance properties?
function IsNameplateVisible(player)
	if player.isDead and not SHOW_ON_DEAD_PLAYERS then
		return false
	end

	if player == LOCAL_PLAYER then
		return SHOW_ON_SELF
	end

	-- 0 distance is special, and means we always display them
	if player == LOCAL_PLAYER or Teams.AreTeamsFriendly(player.team, LOCAL_PLAYER.team) then
		local distance = (player:GetWorldPosition() - LOCAL_PLAYER:GetWorldPosition()).size
		if MAX_DISTANCE == 0.0 or distance <= MAX_DISTANCE then
			return true
		end
	end

	return false
end

-- nil RotateNameplate(CoreObject)
-- Called every frame to make nameplates align with the local view
function RotateNameplate(nameplate)
	local quat = Quaternion.New(LOCAL_PLAYER:GetViewWorldRotation())
	quat = quat * Quaternion.New(Vector3.UP, 180.0)
	nameplate.templateRoot:SetWorldRotation(Rotation.New(quat))
end

-- nil Tick(float)
-- Update dynamic properties of every nameplate
function Tick(deltaTime)
	for _, player in pairs(Game.GetPlayers()) do
		local nameplate = nameplates[player]

		if nameplate then
			-- We calculate visibility every frame to handle when teams change
			local visible = IsNameplateVisible(player)

			if not visible then
				nameplate.templateRoot.visibility = Visibility.FORCE_OFF
			else
				nameplate.templateRoot.visibility = Visibility.INHERIT
				RotateNameplate(nameplate)
			end
		end
	end
end

-- Initialize
Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)


function UpdateBadges(player)
	if not _G.ExternalBadges then return end
	
	local nameplate = nameplates[player]
	local subtitle = nameplate.subtitleText
	local size = subtitle.height
	
	local badgeImages = _G.ExternalBadges.GetBadges(player, size)
	
	if nameplate.badgeImages then
		for _,img in ipairs(nameplate.badgeImages) do
			img:Destroy()
		end
	end
	nameplate.badgeImages = badgeImages
	
	if badgeImages == nil or #badgeImages == 0 then return end
	
	local badgeIntervalX = size * 1.1 -- 10% Spacing
	local x = subtitle.x - badgeIntervalX * (#badgeImages - 1) / 2
	for _,img in ipairs(badgeImages) do
		img.parent = subtitle.parent
		img.x = x
		img.y = subtitle.y
		img.anchor = subtitle.anchor
		img.dock = subtitle.dock
		
		x = x + badgeIntervalX
	end
	
	Task.Wait()
	if not Object.IsValid(player) then return end
	
	-- Shift to the left in case the player has a subtitle
	local subtitleSize = subtitle:ComputeApproximateSize()
	if not subtitleSize or subtitleSize.x < subtitleSize.y / 4 then return end
	
	for _,img in ipairs(badgeImages) do
		img.x = img.x - subtitleSize.x / 2 - badgeIntervalX
	end
end

