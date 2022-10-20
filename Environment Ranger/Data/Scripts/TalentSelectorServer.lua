local API_SK = require(script:GetCustomProperty("APISharedKey"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))
local UTILITY = require(script:GetCustomProperty("TalentSelectorUtility"))

local TALENT_TREES = script:GetCustomProperty("TalentTrees"):WaitForObject()
local PLAYER_STATE_GROUP = script:GetCustomProperty("PlayerStateGroup"):WaitForObject()
local PLAYER_STATE_TEMPLATE = script:GetCustomProperty("PlayerStateTemplate")
local PLAYER_STATE_TREE_TEMPLATE = script:GetCustomProperty("PlayerStateTreeTemplate")

local N_USABLE_TREES = TALENT_TREES:GetCustomProperty("NUsableTrees")

local TALENT_POINT_CURVE =
{
	1,
	2,
	3,
	3,
	4,
	4,
	4,
	5,
	5,
	5,
	6,
	6,
	6,
	6,
	7,
}

local isStorageLoaded = {}		-- Player -> bool

-- Setup talent respec request event handling.
API_RE.ConnectForPlayer("RequestTalentTreeRespec", function(player)
	UTILITY.ResetTalentTrees(player)
end)

function OnPlayerJoined(player)
	local talentTreeTable = UTILITY.TALENT_TREE_TABLE

	local playerStateHelper = World.SpawnAsset(PLAYER_STATE_TEMPLATE, {parent = PLAYER_STATE_GROUP})
	playerStateHelper.name = UTILITY.GetPlayerStateHelperName(player)

	local treeNameTable = {}

	for talentTreeName, _ in pairs(talentTreeTable) do
		table.insert(treeNameTable, talentTreeName)
	end

	for endIndex = #treeNameTable, 2, -1 do
		local randomIndex = math.random(endIndex)
		treeNameTable[randomIndex], treeNameTable[endIndex] = treeNameTable[endIndex], treeNameTable[randomIndex]
	end

	for i = 1, N_USABLE_TREES do
		local talentTreeName = treeNameTable[i]
		local playerStateTreeHelper = World.SpawnAsset(PLAYER_STATE_TREE_TEMPLATE, {parent = PLAYER_STATE_GROUP})
		playerStateTreeHelper.name = UTILITY.GetPlayerStateTreeHelperName(player, talentTreeName)

		local talentString = ""

		for _, _ in pairs(talentTreeTable[talentTreeName]) do
			talentString = talentString .. "0"
		end

		playerStateTreeHelper:SetNetworkedCustomProperty("TalentString", talentString)
	end
end

function OnPlayerLeft(player)
	local playerStateHelper = UTILITY.GetPlayerStateHelper(player)
	playerStateHelper:Destroy()

	for talentTreeName, _ in pairs(UTILITY.TALENT_TREE_TABLE) do
		local playerStateTreeHelper = UTILITY.GetPlayerStateTreeHelper(player, talentTreeName)

		if playerStateTreeHelper then
			playerStateTreeHelper:Destroy()
		end
	end
end

function OnTryLearnTalent(player, treeOrder, treeX, treeY)
	for treeName, treeData in pairs(UTILITY.TALENT_TREE_DATA) do
		if treeData.order == treeOrder then
			for _, talentData in pairs(UTILITY.TALENT_TREE_TABLE[treeData.name]) do
				if talentData.treeX == treeX and talentData.treeY == treeY then
					UTILITY.TryAddPlayerTalent(player, talentData)
					return
				end
			end

			local warningFormatString = "Player %s tried to take missing talent in tree %s (%d, %d)"
			warn(string.format(warningFormatString, player.name, treeData.name, treeX, treeY))
		end
	end

	local warningFormatString = "Player %s tried to take talent in missing tree with order %d"
	warn(string.format(warningFormatString, player.name, treeOrder))
end

function GetTotalTalentPoints(level)
	return TALENT_POINT_CURVE[level]
end

function Tick(deltaTime)
	for _, player in pairs(Game.GetPlayers()) do
		local totalTalentPoints = GetTotalTalentPoints(player.serverUserData.statSheet:GetLevel())
		local usedTalentPointCount = UTILITY.GetPlayerUsedTalentPointCount(player)
		UTILITY.SetPlayerTalentPoints(player, totalTalentPoints - usedTalentPointCount)

		if not isStorageLoaded[player] then
		    local playerData = Storage.GetSharedPlayerData(API_SK.GetStorageKey(), player)

			if playerData.talentTree and playerData.talentTree ~= "" then
			    for _, talentData in pairs(UTILITY.TALENT_TREE_TABLE[playerData.talentTree]) do
			    	if string.sub(playerData.talentString, talentData.index, talentData.index) == "1" then
				    	UTILITY.TryAddPlayerTalent(player, talentData)
				    end
			    end
			end

			isStorageLoaded[player] = true
			API_RE.Broadcast("TalentsLoaded", player)
		end
	end
end

UTILITY.InitializeTalentTreeData(TALENT_TREES, PLAYER_STATE_GROUP, false)
Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)
API_RE.ConnectForPlayer("TryLearnTalent", OnTryLearnTalent)
