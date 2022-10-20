local API_A = require(script:GetCustomProperty("APIAbility"))
local API_PP = require(script:GetCustomProperty("APIPlayerPassives"))
local API_SK = require(script:GetCustomProperty("APISharedKey"))

local UTILITY = {}

UTILITY.TREE_WIDTH = nil
UTILITY.TREE_HEIGHT = nil
UTILITY.TALENT_TREE_TABLE = nil	-- Key is talent tree name, value is a table of tables with talent information
UTILITY.TALENT_TREE_DATA = nil	-- Key is talent tree name, value is table of data

local PLAYER_STATE_GROUP = nil
local IS_CLIENT = nil			-- Set in InitializeTalentTreeData

function GetTalentDataAtPosition(treeData, x, y)
	if x < 1 or x > UTILITY.TREE_WIDTH then
		error(string.format("GetTalentDataAtPosition() called with invalid x (%d)", x))
	end

	if y < 1 or y > UTILITY.TREE_HEIGHT then
		error(string.format("GetTalentDataAtPosition() called with invalid y (%d)", y))
	end

	for _, talentData in pairs(treeData) do
		if talentData.treeX == x and talentData.treeY == y then
			return talentData
		end
	end
end

function ReadTalentTreeDefinition(root)
	if not root:IsA("Folder") then
		error(string.format("Talent tree root (%s) must be a folder or group", root.name))
	end

	if #root:GetChildren() == 0 then
		error("No talent trees found")
	end

	UTILITY.TREE_WIDTH = root:GetCustomProperty("TreeWidth")
	UTILITY.TREE_HEIGHT = root:GetCustomProperty("TreeHeight")

	if UTILITY.TREE_WIDTH < 1 then
		error(string.format("TreeWidth on root (%s) must be positive", root.name))
	end

	if UTILITY.TREE_HEIGHT < 1 then
		error(string.format("TreeHeight on root (%s) must be positive", root.name))
	end

	UTILITY.TALENT_TREE_TABLE = {}
	UTILITY.TALENT_TREE_DATA = {}

	for _, treeGroup in pairs(root:GetChildren()) do
		local treeHasErrors = false
		local treeData = {}
		treeData.name = treeGroup.name
		treeData.order = treeGroup:GetCustomProperty("Order")
		treeData.primaryColor = treeGroup:GetCustomProperty("PrimaryColor")
		treeData.backgroundImage = treeGroup:GetCustomProperty("BackgroundImage")
		treeData.backgroundOffset = treeGroup:GetCustomProperty("BackgroundOffset")
		treeData.treeDescription = treeGroup:GetCustomProperty("TreeDescription")

		if UTILITY.TALENT_TREE_TABLE[treeGroup.name] then
			warn(string.format("Talent tree (%s) has duplicate name", treeGroup.name))
			treeHasErrors = true
		end

		if not treeGroup:IsA("Folder") then
			warn(string.format("Talent tree (%s) must be a folder or group", treeGroup.name))
			treeHasErrors = true
		end

		if #treeGroup:GetChildren() == 0 then
			warn(string.format("Talent tree %s has no talents", treeGroup.name))
			treeHasErrors = true
		end

		if treeData.order == nil then
			warn(string.format("Order missing on talent tree %s", treeGroup.name))
			treeHasErrors = true
		end

		for otherTreeName, otherTreeData in pairs(UTILITY.TALENT_TREE_DATA) do
			if treeData.order == otherTreeData.order then
			warn(string.format("Order value on talent tree %s conflicts with tree %s", treeGroup.name, otherTreeName))
			treeHasErrors = true
			end
		end

		if treeData.primaryColor == nil then
			warn(string.format("PrimaryColor missing on talent tree %s", treeGroup.name))
			treeHasErrors = true
		end

		if treeData.backgroundImage == nil then
			warn(string.format("BackgroundImage missing on talent tree %s", treeGroup.name))
			treeHasErrors = true
		end

		if treeData.backgroundOffset == nil then
			warn(string.format("BackgroundOffset missing on talent tree %s", treeGroup.name))
			treeHasErrors = true
		end

		if not treeHasErrors then
			UTILITY.TALENT_TREE_TABLE[treeGroup.name] = {}
			UTILITY.TALENT_TREE_DATA[treeGroup.name] = treeData

			for _, talentGroup in pairs(treeGroup:GetChildren()) do
				if not talentGroup:IsA("Folder") then
					error(string.format("Talent (%s) must be a folder or group", talentGroup.name))
				end

				if UTILITY.TALENT_TREE_TABLE[treeGroup.name][talentGroup.name] then
					error(string.format("Talent (%s) has duplicate name", talentGroup.name))
				end

				local talentHasErrors = false
				local talentData = {}
				talentData.name = talentGroup.name
				talentData.treeName = treeGroup.name
				talentData.requiredLevel = talentGroup:GetCustomProperty("RequiredLevel")
				talentData.treeX = talentGroup:GetCustomProperty("TreeX")
				talentData.treeY = talentGroup:GetCustomProperty("TreeY")
				talentData.abilityNames = {}
				talentData.passives = {}

				local i = 1
				local continue = true

				while continue do
					talentData.abilityNames[i], continue = talentGroup:GetCustomProperty(string.format("AbilityName%d", i))
					i = i + 1
				end

				i = 1
				continue = true

				while continue do
					talentData.passives[i], continue = talentGroup:GetCustomProperty(string.format("Passive%d", i))
					i = i + 1
				end

				talentData.description = talentGroup:GetCustomProperty("Description")
				talentData.icon = talentGroup:GetCustomProperty("Icon")
				talentData.cost = talentGroup:GetCustomProperty("Cost")
				talentData.isPassive = talentGroup:GetCustomProperty("IsPassive")
				talentData.requiresAbove = talentGroup:GetCustomProperty("RequiresAbove")
				talentData.requiresAboveLeft = talentGroup:GetCustomProperty("RequiresAboveLeft")
				talentData.requiresAboveRight = talentGroup:GetCustomProperty("RequiresAboveRight")

				if talentData.requiredLevel == nil then
					warn(string.format("RequiredLevel missing on talent %s", talentGroup.name))
					talentHasErrors = true
				end

				if talentData.requiredLevel < 0 then
					warn(string.format("RequiredLevel is negative on talent %s", talentGroup.name))
					talentHasErrors = true
				end

				if talentData.treeX == nil then
					warn(string.format("TreeX missing on talent %s", talentGroup.name))
					talentHasErrors = true
				end

				if talentData.treeX < 1 or talentData.treeX > UTILITY.TREE_WIDTH then
					warn(string.format("TreeX must be between 1 and %d on talent %s", UTILITY.TREE_WIDTH, talentGroup.name))
					talentHasErrors = true
				end

				if talentData.treeY == nil then
					warn(string.format("TreeY missing on talent %s", talentGroup.name))
					talentHasErrors = true
				end

				if talentData.treeY < 1 or talentData.treeY > UTILITY.TREE_HEIGHT then
					warn(string.format("TreeY must be between 1 and %d on talent %s", UTILITY.TREE_HEIGHT, talentGroup.name))
					talentHasErrors = true
				end

				if talentData.description == nil or talentData.description == "" then
					warn(string.format("Description missing on talent %s", talentGroup.name))
					talentHasErrors = true
				end

				if talentData.icon == nil then
					warn(string.format("Icon missing on talent %s", talentGroup.name))
					talentHasErrors = true
				end

				if talentData.cost == nil then
					warn(string.format("Cost missing on talent %s", talentGroup.name))
					talentHasErrors = true
				end

				if talentData.isPassive == nil then
					warn(string.format("IsPassive missing on talent %s", talentGroup.name))
					talentHasErrors = true
				end

				if talentData.cost < 0 then
					warn(string.format("Cost must be positive on talent %s", talentGroup.name))
					talentHasErrors = true
				end

				if talentData.requiresAbove == nil then
					warn(string.format("RequiresAbove missing on talent %s", talentGroup.name))
					talentHasErrors = true
				end

				if talentData.requiresAboveLeft == nil then
					warn(string.format("RequiresAboveLeft missing on talent %s", talentGroup.name))
					talentHasErrors = true
				end

				if talentData.requiresAboveRight == nil then
					warn(string.format("RequiresAboveRight missing on talent %s", talentGroup.name))
					talentHasErrors = true
				end

				local x = talentData.treeX
				local y = talentData.treeY
				local otherTalentData = GetTalentDataAtPosition(UTILITY.TALENT_TREE_TABLE[treeGroup.name], x, y)

				if otherTalentData then
					warn(string.format("Talents %s and %s have the same position", talentData.name, otherTalentData.name))
					talentHasErrors = true
				end

				if not talentHasErrors then
					UTILITY.TALENT_TREE_TABLE[treeGroup.name][talentGroup.name] = talentData
				end
			end

			-- Used to give talents indices
			local talentDataArray = {}

			for _, talentData in pairs(UTILITY.TALENT_TREE_TABLE[treeGroup.name]) do
				-- Check for requirement errors, and disregard the results
				UTILITY.GetRequiredTalentData(talentData)

				table.insert(talentDataArray, talentData)
			end

			function CompareTalents(talentData1, talentData2)
				if talentData1.treeY ~= talentData2.treeY then
					return talentData1.treeY < talentData2.treeY
				end

				return talentData1.treeX < talentData2.treeX
			end

			table.sort(talentDataArray, CompareTalents)

			for i, talentData in pairs(talentDataArray) do
				talentData.index = i
			end
		end
	end
end

-- Returns a table of up to three required talentDatas (Client and Server)
function UTILITY.GetRequiredTalentData(talentData)
	local treeName = talentData.treeName
	local treeData = UTILITY.TALENT_TREE_TABLE[treeName]

	if treeData == nil then
		error(string.format("Cannot find talent tree with name %s", treeName))
	end

	local result = {}

	if talentData.requiresAbove then
		local talentFound = false
		local x = talentData.treeX

		for y = talentData.treeY - 1, 1, -1 do
			local requiredTalentData = GetTalentDataAtPosition(treeData, x, y)

			if requiredTalentData then
				result[requiredTalentData.name] = requiredTalentData
				talentFound = true
				break
			end
		end

		if not talentFound then
			warn(string.format("Talent %s has RequiresAbove but required talent was not found", talentData.name))
			talentData.requiresAbove = false
		end
	end

	if talentData.requiresAboveLeft then
		local talentFound = false
		local x = talentData.treeX - 1

		if x == 0 then
			warn(string.format("Talent %s has RequiresAboveLeft but TreeX == 1", talentData.name))
			talentData.requiresAboveLeft = false
		else
			for y = talentData.treeY - 1, 1, -1 do
				local requiredTalentData = GetTalentDataAtPosition(treeData, x, y)

				if requiredTalentData then
					result[requiredTalentData.name] = requiredTalentData
					talentFound = true
					break
				end
			end

			if not talentFound then
				warn(string.format("Talent %s has RequiresAboveLeft but required talent was not found", talentData.name))
				talentData.requiresAboveLeft = false
			end
		end
	end

	if talentData.requiresAboveRight then
		local talentFound = false
		local x = talentData.treeX + 1

		if x == UTILITY.TREE_WIDTH + 1 then
			warn(string.format("Talent %s has RequiresAboveRight but TreeX == TreeWidth", talentData.name))
			talentData.requiresAboveLeft = false
		else
			for y = talentData.treeY - 1, 1, -1 do
				local requiredTalentData = GetTalentDataAtPosition(treeData, x, y)

				if requiredTalentData then
					result[requiredTalentData.name] = requiredTalentData
					talentFound = true
					break
				end
			end

			if not talentFound then
				warn(string.format("Talent %s has RequiresAboveRight but required talent was not found", talentData.name))
				talentData.requiresAboveRight = false
			end
		end
	end

	return result
end

function UTILITY.GetPlayerStateHelper(player)
	return PLAYER_STATE_GROUP:FindChildByName(UTILITY.GetPlayerStateHelperName(player))
end

function UTILITY.GetPlayerStateTreeHelper(player, talentTreeName)
	return PLAYER_STATE_GROUP:FindChildByName(UTILITY.GetPlayerStateTreeHelperName(player, talentTreeName))
end

function UTILITY.GetPlayerStateHelperName(player)
	return player.id
end

function UTILITY.GetPlayerStateTreeHelperName(player, talentTreeName)
	return string.format("%s-%s", player.id, talentTreeName)
end

-- Client and Server
function UTILITY.InitializeTalentTreeData(treeRoot, playerStateGroup, isClient)
	ReadTalentTreeDefinition(treeRoot)
	PLAYER_STATE_GROUP = playerStateGroup
	IS_CLIENT = isClient
end

-- Client and Server
function UTILITY.DoesPlayerHaveTalent(player, talentData)
	local playerStateTreeHelper = UTILITY.GetPlayerStateTreeHelper(player, talentData.treeName)
	local talentString = playerStateTreeHelper:GetCustomProperty("TalentString")
	return string.sub(talentString, talentData.index, talentData.index) == "1"
end

-- Client and Server
function UTILITY.GetPlayerUsedTalentPointCount(player)
	local result = 0

	for treeName, _ in pairs(UTILITY.TALENT_TREE_TABLE) do
		local playerStateTreeHelper = UTILITY.GetPlayerStateTreeHelper(player, treeName)
		local talentString = playerStateTreeHelper:GetCustomProperty("TalentString")

		for i = 1, string.len(talentString) do
			if string.sub(talentString, i, i) == "1" then
				for _, talentData in pairs(UTILITY.TALENT_TREE_TABLE[treeName]) do
					if talentData.index == i then
						result = result + talentData.cost
						break
					end
				end

			end
		end
	end

	return result
end

-- Client and Server
function UTILITY.CanPlayerAcquireTalent(player, talentData)
	local playerStateHelper = UTILITY.GetPlayerStateHelper(player)
	local currentTreeName = playerStateHelper:GetCustomProperty("TreeName")

	if currentTreeName ~= "" and currentTreeName ~= talentData.treeName then
		return false, string.format("You are specialized to %s", currentTreeName)
	end

	if IS_CLIENT and player.clientUserData.statSheet:GetLevel() < talentData.requiredLevel then
		return false, string.format("Level %d required", talentData.requiredLevel)
	end

	if not IS_CLIENT and player.serverUserData.statSheet:GetLevel() < talentData.requiredLevel then
		return false, string.format("Level %d required", talentData.requiredLevel)
	end

	if UTILITY.DoesPlayerHaveTalent(player, talentData) then
		return false, "Talent already known"
	end

	for _, requiredTalentData in pairs(UTILITY.GetRequiredTalentData(talentData)) do
		if not UTILITY.DoesPlayerHaveTalent(player, requiredTalentData) then
			return false, string.format("%s required", requiredTalentData.name)
		end
	end

	local talentPoints = UTILITY.GetPlayerTalentPoints(player)

	if talentPoints < talentData.cost then
		if talentData.cost > 1 then
			return false, string.format("%d talent points required", talentData.cost)
		else
			return false, "Talent point required"
		end
	end

	return true
end

-- Client and Server
function UTILITY.DoesPlayerHaveUnlockableTalents(player)
	local playerStateHelper = UTILITY.GetPlayerStateHelper(player)
	local currentTreeName = playerStateHelper:GetCustomProperty("TreeName")
	-- If no talent tree is selected, then there is certainly something that can be unlocked.
	if currentTreeName == "" then return true end
	-- Look for any unlockable talents.
	local talents = UTILITY.TALENT_TREE_TABLE[currentTreeName]
	if talents then
		for _,talentData in pairs(talents) do
			if UTILITY.CanPlayerAcquireTalent(player, talentData) then
				return true
			end
		end
	end
end

-- Server only
function UTILITY.TryAddPlayerTalent(player, talentData)
	if not UTILITY.CanPlayerAcquireTalent(player, talentData) then
		return
	end

	local playerStateHelper = UTILITY.GetPlayerStateHelper(player)
	playerStateHelper:SetNetworkedCustomProperty("TreeName", talentData.treeName)

	local playerStateTreeHelper = UTILITY.GetPlayerStateTreeHelper(player, talentData.treeName)
	local talentString = playerStateTreeHelper:GetCustomProperty("TalentString")
	local prefix = string.sub(talentString, 1, talentData.index - 1)
	local suffix = string.sub(talentString, talentData.index + 1)
	local newTalentString = prefix .. "1" .. suffix
	playerStateTreeHelper:SetNetworkedCustomProperty("TalentString", newTalentString)

	for _, abilityName in pairs(talentData.abilityNames) do
		API_A.GivePlayerAbility(player, abilityName)
	end

	for _, passive in pairs(talentData.passives) do
		API_PP.GivePlayerPassive(player, passive)
	end

	UTILITY.RemovePlayerTalentPoints(player, talentData.cost)

	-- This depends on the restriction that players can only spend points in one tree at a time
	local playerData = Storage.GetSharedPlayerData(API_SK.GetStorageKey(), player)
	playerData.talentTree = talentData.treeName
	playerData.talentString = newTalentString
	Storage.SetSharedPlayerData(API_SK.GetStorageKey(), player, playerData)
end

-- Server only
function UTILITY.ResetTalentTrees(player)
	local playerStateHelper = UTILITY.GetPlayerStateHelper(player)
	local currentTreeName = playerStateHelper:GetCustomProperty("TreeName")

	if currentTreeName == "" then
		return
	end

	for _, talentData in pairs(UTILITY.TALENT_TREE_TABLE[currentTreeName]) do
		if UTILITY.DoesPlayerHaveTalent(player, talentData) then
			for _, abilityName in pairs(talentData.abilityNames) do
				API_A.RemovePlayerAbility(player, abilityName)
			end

			for _, passive in pairs(talentData.passives) do
				API_PP.RemovePlayerPassive(player, passive)
			end

			UTILITY.AddPlayerTalentPoints(player, talentData.cost)
		end
	end

	playerStateHelper:SetNetworkedCustomProperty("TreeName", "")

	local playerStateTreeHelper = UTILITY.GetPlayerStateTreeHelper(player, currentTreeName)
	local talentString = ""

	for _, _ in pairs(UTILITY.TALENT_TREE_TABLE[currentTreeName]) do
		talentString = talentString .. "0"
	end

	playerStateTreeHelper:SetNetworkedCustomProperty("TalentString", talentString)

	local playerData = Storage.GetSharedPlayerData(API_SK.GetStorageKey(), player)
	playerData.talentTree = ""
	playerData.talentString = talentString
	Storage.SetSharedPlayerData(API_SK.GetStorageKey(), player, playerData)

end

-- Client and Server
function UTILITY.GetPlayerTreeName(player)
	local playerStateHelper = UTILITY.GetPlayerStateHelper(player)

	if playerStateHelper then
		return playerStateHelper:GetCustomProperty("TreeName")
	end
end

-- Server only
function UTILITY.AddPlayerTalentPoints(player, addedPoints)
	local playerStateHelper = UTILITY.GetPlayerStateHelper(player)
	local currentPoints = playerStateHelper:GetCustomProperty("TalentPoints")
	playerStateHelper:SetNetworkedCustomProperty("TalentPoints", currentPoints + addedPoints)
end

-- Server only
function UTILITY.SetPlayerTalentPoints(player, newValue)
	local playerStateHelper = UTILITY.GetPlayerStateHelper(player)
	playerStateHelper:SetNetworkedCustomProperty("TalentPoints", newValue)
end

-- Server only
function UTILITY.RemovePlayerTalentPoints(player, removedPoints)
	local playerStateHelper = UTILITY.GetPlayerStateHelper(player)
	local currentPoints = playerStateHelper:GetCustomProperty("TalentPoints")

	if removedPoints > currentPoints then
		local formatString = "Trying to remove %d talent points from player %s who only has %d"
		error(string.format(formatString, removedPoints, player.name, currentPoints))
	end

	playerStateHelper:SetNetworkedCustomProperty("TalentPoints", currentPoints - removedPoints)
end

-- Client and Server
function UTILITY.GetPlayerTalentPoints(player)
	local playerStateHelper = UTILITY.GetPlayerStateHelper(player)
	return playerStateHelper:GetCustomProperty("TalentPoints")
end

return UTILITY
