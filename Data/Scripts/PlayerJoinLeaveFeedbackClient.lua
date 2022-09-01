local API_PORTALS = require(script:GetCustomProperty("APIPortals"))
local API_TUTORIAL = require(script:GetCustomProperty("APITutorial"))
local L = require(script:GetCustomProperty("APILocale"))
local JOIN_COLOR = script:GetCustomProperty("JoinColor")
local LEAVE_COLOR = script:GetCustomProperty("LeaveColor")
local LEAVE_GAME_COLOR = script:GetCustomProperty("LeaveToGameColor")

-- After connecting, we hide join messages for a short time, so we don't see messages for everyone already in the game
local JOIN_MESSAGE_START = time() + 1.0
local BANNER_MESSAGE_TIME = 5

local LOCAL_PLAYER = Game.GetLocalPlayer()

function OnPlayerJoined(player)
	if not API_TUTORIAL.HasPlayerCompletedTutorial(LOCAL_PLAYER) then return end	
	if time() < JOIN_MESSAGE_START then return end

	local playerJoinData = player:GetJoinTransferData()

	local text = "{player} joined"
	local color = JOIN_COLOR

	-- Friend color override
	if CoreSocial.IsFriendsWithLocalPlayer(player) then
		color = Color.GREEN
	end

	-- Translation check and text substitution
	text = L[text]
	text = string.gsub(text, "{player}", player.name)

	Events.Broadcast("ActivityFeedLine", {activity = text, color = JOIN_COLOR})
end

function OnPlayerLeft(player)
	if player == LOCAL_PLAYER then return end
	if not API_TUTORIAL.HasPlayerCompletedTutorial(LOCAL_PLAYER) then return end

	local playerLeaveData = player:GetLeaveTransferData()
	local portalStats = player.clientUserData.portalStats

	if portalStats and playerLeaveData.reason == PlayerTransferReason.PORTAL then
		local gameData = CorePlatform.GetGameInfo(portalStats.gameID)
		local collectionData = API_PORTALS.GetCollectionData(portalStats.collectionID)

		if gameData and collectionData and Object.IsValid(player) then
			local text = "{player} portaled to {game}"
			local subText = "Press [TAB] to follow this player"

			-- Translation check
			text = L[text]
			subText = L[subText]

			-- Substitute player name and game name in the text
			text = text:gsub("{(.-)}", {["player"] = player.name, ["game"] = gameData.name})

			Events.Broadcast("BannerMessage", text, BANNER_MESSAGE_TIME, collectionData.color, subText)
			Events.Broadcast("ActivityFeedLine", {activity = text, color = collectionData.color})
			return
		end
    end

	local text = "{player} portaled to another world"
	local subText = "Press [TAB] to follow this player"
	local color = LEAVE_GAME_COLOR
	local gameData = nil

	if playerLeaveData.gameId then
		gameData = CorePlatform.GetGameInfo(playerLeaveData.gameId)

		text = "{player} left to play {game}"	
		if playerLeaveData.reason == PlayerTransferReason.SOCIAL then
			text = "{player} joined a friend in {game}"
		end
		if playerLeaveData.reason == PlayerTransferReason.PORTAL then
			text = "{player} followed to play {game}"
			color = Color.CYAN
		else
			Events.Broadcast("SpawnEchoPortal", player, playerLeaveData.gameId)
			subText = "This player left a game portal"
		end
	else
		color = LEAVE_COLOR
		if playerLeaveData.reason == PlayerTransferReason.CHARACTER then
			text = "{player} left to edit character"
		elseif playerLeaveData.reason == PlayerTransferReason.SHOP then				
			text = "{player} left to shop for cosmetics"
		elseif playerLeaveData.reason == PlayerTransferReason.CREATE then				
			text = "{player} left to create games"
		end
	end

	-- Friend color override
	if CoreSocial.IsFriendsWithLocalPlayer(player) then
		color = Color.GREEN
	end
	
	-- Translation check
	text = L[text]
	subText = L[subText]

	-- Substitute player name and game name in the text
	if gameData then
		text = text:gsub("{(.-)}", {["player"] = player.name, ["game"] = gameData.name})
	else
		text = text:gsub("{(.-)}", {["player"] = player.name})
	end

	Events.Broadcast("ActivityFeedLine", {activity = text, color = color})
	if playerLeaveData.gameId then
		Events.Broadcast("BannerMessage", text, BANNER_MESSAGE_TIME, color, subText)
	end
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)