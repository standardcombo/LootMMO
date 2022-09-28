
--[[
	Quest Controller
	(Server + Client)
	
	TODO: API
	
	Player data structure in storage:
	
	complete = {list of quest IDs}
	active = {
		list of abbreviated objectives
		(questID, objective's index in the quest, gameID)
		{
			id, n, game
		},
	}
]]

local API = {}
_G.QuestController = API


local QUEST_METADATA = require(script:GetCustomProperty("QuestMetadata"))
local QUEST_OBJECTIVES = require(script:GetCustomProperty("QuestObjectives"))
local STORAGE_KEY_UTIL = require(script:GetCustomProperty("StorageKeyUtil"))

local PROGRESS_KEY = STORAGE_KEY_UTIL.GetKey("PlayerProgress")

local SERIALIZATION_VERSION = 1


-- Create direct connection between quests and their objectives
-- so we only have to do this search one time
for k,quest in pairs(QUEST_METADATA) do
	quest.objectives = {}
end

for k,obj in pairs(QUEST_OBJECTIVES) do
	local quest = QUEST_METADATA[obj.questId]
	if quest then
		table.insert(quest.objectives, obj)
		obj.quest = quest
		obj.index = #quest.objectives
	else
		-- Case of error in the entry of data where an objective has the wrong quest ID.
		warn("An objective points to quest ID ".. obj.questId ..", but no such quest exists.")
	end
end

-- Case of error in the entry of data where a quest has zero objectives.
for k,quest in pairs(QUEST_METADATA) do
	if #quest.objectives == 0 then
		warn("Quest ".. quest.id .." contains no objectives and will be removed.")
	end
end

-- Find the full game IDs (not the slug URL) for each quest
local fullGameIdMapping = {}
Task.Spawn(function()
	for k,quest in pairs(QUEST_METADATA) do
		if not fullGameIdMapping[quest.gameId] then
			local coreGameInfo = CorePlatform.GetGameInfo(quest.gameId)
			local fullGameID = coreGameInfo.id
			fullGameIdMapping[quest.gameId] = fullGameID
		end
	end
end)


-- Client/Server
function API.GetQuest(id)
	return QUEST_METADATA[id]
end

-- Client/Server
function API.GetQuestObjective(questId, objectiveIndex)
	local quest = QUEST_METADATA[questId]
	return quest.objectives[objectiveIndex]
end


-- Client/Server
function API.GetPlayerData(player)
	return player:GetPrivateNetworkedData("quests")
end

function SetPlayerData(player, playerData)
	local resultCode = player:SetPrivateNetworkedData("quests", playerData)
	
	if resultCode == PrivateNetworkedDataResultCode.FAILURE then
		error("Setting quest data for player " ..player.name .. " failed.")
	
	elseif resultCode == PrivateNetworkedDataResultCode.EXCEEDED_SIZE_LIMIT then
		error("Setting quest data for player " ..player.name .. " exceeded limit.")
	end
end


-- Client/Server
function API.GetUnlockedQuests(player)
	local playerData = API.GetPlayerData(player)
	local results = {}
	if playerData and playerData.unlocked then
		for _,id in ipairs(playerData.unlocked) do
			local questData = QUEST_METADATA[id]
			if questData then
				table.insert(results, questData)
			end
		end
	end
	return results
end

-- Client/Server
function API.GetCompletedQuestIDs(player)
	local playerData = API.GetPlayerData(player)
	if playerData then
		return playerData.complete
	end
	return {}
end

function AddCompletedQuestID(player, questId)
	local playerData = API.GetPlayerData(player)
	if not playerData then
		playerData = {}
		playerData.complete = {}
	end
	table.insert(playerData.complete, questId)
	SetPlayerData(player, playerData)
end

function RemoveCompletedQuestID(player, questId)
	local playerData = API.GetPlayerData(player)
	if not playerData then
		return
	end
	
	for i,id in ipairs(playerData.complete) do
		if id == questId then
			table.remove(playerData.complete, i)
			
			SetPlayerData(player, playerData)
			break
		end
	end
end


-- Client/Server
function API.HasCompleted(player, questId)
	local completedIds = API.GetCompletedQuestIDs(player)
	for _,id in ipairs(completedIds) do
		if id == questId then
			return true
		end
	end
	return false
end


-- Client/Server
function API.GetActiveObjectives(player)
	local result = {}
	local playerData = API.GetPlayerData(player)
	if playerData then
		for k,entry in ipairs(playerData.active) do
			local quest = API.GetQuest(entry.id)
			if quest then
				if not entry.n then
					entry.n = 1
					
				elseif entry.n <= 0 or entry.n > #quest.objectives then
					error("Quest ".. entry.id .." does not have a step index ".. entry.n)
				end
				
				local obj = quest.objectives[entry.n]
				table.insert(result, obj)
			else
				error("Failed to locate data for quest ".. tostring(entry.id))
			end
		end
	end
	return result
end


-- Client/Server
function API.GetObjectiveProgress(player, obj)
	local playerData = API.GetPlayerData(player)
	if playerData then
		for k,entry in ipairs(playerData.active) do
			if entry.id == obj.questId then
				if entry.c ~= nil then
					return entry.c
				end
				return 0
			end
		end
	end
end


-- Client/Server
function API.IsActive(player, obj)
	if not player or not obj then
		error("Invalid parameters to QuestController::IsActive(Player, objective data)")
	end
	local playerData = API.GetPlayerData(player)
	if playerData then
		for k,entry in ipairs(playerData.active) do
			local quest = API.GetQuest(entry.id)
			if quest then
				if not entry.n then
					entry.n = 1
				end
				if obj == quest.objectives[entry.n] then
					return true
				end
			end
		end
	end
	return false
end


-- Client only
function API.SelectObjective(player, obj)
	local activeObjectives = API.GetActiveObjectives(player)
	
	for _,o in ipairs(activeObjectives) do
		if o == obj then
			-- Select the desired objective
			o.isSelected = true
		else
			-- Deselect the others
			o.isSelected = false
		end
	end
	
	Events.Broadcast("Quest.ObjectiveSelected", obj)
end


-- Server only
function API.UnlockForPlayer(player, questId)
	--print("QuestController::UnlockForPlayer() "..player.name..","..questId)
	local quest = QUEST_METADATA[questId]
	if not quest then
		error("Cannot unlock quest ".. tostring(questId) .." because no such quest exists.")
		return
	end
	if not quest.isReplayable and API.HasCompleted(player, questId) then
		warn(player.name .." has already completed ".. questId)
		return
	end
	local playerData = API.GetPlayerData(player)
	if not playerData.unlocked then
		playerData.unlocked = {}
	end
	for _,entry in ipairs(playerData.unlocked) do
		if entry == questId then
			warn(player.name .." has already unlocked ".. questId)
			return
		end
	end
	table.insert(playerData.unlocked, questId)
	
	SetPlayerData(player, playerData)
end


-- Server only
function API.ActivateForPlayer(player, questId)
	--print("QuestController::ActivateForPlayer() "..player.name..","..questId)
	local quest = QUEST_METADATA[questId]
	if not quest then
		error("Cannot activate quest ".. tostring(questId) .." because no such quest exists.")
		return
	end
	if not quest.isReplayable and API.HasCompleted(player, questId) then
		warn(player.name .." has already completed ".. questId)
		return
	end
	local playerData = API.GetPlayerData(player)
	for _,entry in ipairs(playerData.active) do
		if entry.id == questId then
			warn(player.name .." already has activated ".. questId)
			return
		end
	end
	table.insert(playerData.active, {id = questId, n = 1})
	
	SetPlayerData(player, playerData)
end


-- Server only
function API.AdvanceObjective(player, questId, objectiveIndex)
	local quest = QUEST_METADATA[questId]
	if not quest then
		error("Cannot advance quest ".. tostring(questId) .." because no such quest exists.")
		return
	end
	local obj = quest.objectives[objectiveIndex]
	if not obj then
		error("Cannot advance objective ".. tostring(objectiveIndex) .." for quest ".. questId)
		return
	end
	if not API.IsActive(player, obj) then
		warn("Tried to advance objective ".. objectiveIndex .." for quest ".. 
			questId ..", but it wasn't active")
		return
	end
	-- Advance the objective
	local playerData = API.GetPlayerData(player)
	for i,entry in ipairs(playerData.active) do
		if entry.id == questId then
			if obj.count > 0 then
				if entry.c then
					entry.c = entry.c + 1
				else
					entry.c = 1
				end
				if entry.c < obj.count then
					SetPlayerData(player, playerData)
				end
			end
			if entry.c == nil or entry.c >= obj.count then
				if entry.n == #quest.objectives then
					CompleteQuest(player, questId)
				else
					entry.n = entry.n + 1
					SetPlayerData(player, playerData)
				end
			end
			break
		end
	end
end

function CompleteQuest(player, questId)
	--print("QuestController::CompleteQuest() "..player.name..","..questId)
	local playerData = API.GetPlayerData(player)
	for i,entry in ipairs(playerData.active) do
		if entry.id == questId then
			table.remove(playerData.active, i)
			SetPlayerData(player, playerData)
			break
		end
	end
	AddCompletedQuestID(player, questId)
	local questData = API.GetQuest(questId)
	local ids = {
	    CoreString.Split(questData.unlocks, {
	        delimiters = {","}, 
	        removeEmptyResults = true
	    })
	}
	for _,unlockId in ipairs(ids) do
		unlockId = CoreString.Trim(unlockId)
		
		local quest = QUEST_METADATA[unlockId]
		if quest and quest.mapContent then
			API.UnlockForPlayer(player, unlockId)
		else
			API.ActivateForPlayer(player, unlockId)
		end
	end
	
	SavePlayerData(player)
end


-- Server/Client
function API.IsLocalGame(questData)
	local thisGameID = Game.GetCurrentGameId()
	if thisGameID == questData.gameId then
		return true
	end
	if fullGameIdMapping[questData.gameId]
	and fullGameIdMapping[questData.gameId] == thisGameID then
		return true
	end
	return false
end

-- Server/Client
function API.IsLocalScene(questData)
	if not questData.sceneName or questData.sceneName == "" then
		return true
	end
	local thisSceneName = Game.GetCurrentSceneName()
	return thisSceneName == questData.sceneName
end


local function PatchData(playerData)
	if not playerData then
		return nil
	end
	local prevVersion = playerData.version
	if not prevVersion then
		-- Reset data
		return nil
	end
	if prevVersion == SERIALIZATION_VERSION then
		return playerData -- No change
	end
	-- TODO: Apply different transformations, per version change
	return playerData
end

function SavePlayerData(player)
	if not Object.IsValid(player) then return end
	if player.serverUserData.isLoadingQuestData then return end
	
	local storageData = Storage.GetSharedPlayerData(PROGRESS_KEY, player)
	
	storageData.quests = API.GetPlayerData(player)
	storageData.quests.version = SERIALIZATION_VERSION
	
	local resultCode,errorMessage = Storage.SetSharedPlayerData(PROGRESS_KEY, player, storageData)
	
	--storageData = Storage.GetPlayerData(player)
	--print("")
end

local function LoadPlayerData(player)
	player.serverUserData.isLoadingQuestData = true
	
	local storageData = Storage.GetSharedPlayerData(PROGRESS_KEY, player)
	local playerData = storageData.quests
	
	playerData = PatchData(playerData)
	
	if not playerData then
		playerData = {
			complete = {},
			active = {}
			--Fake data:
			--complete = {"Welcome"},
			--unlocked = {"Raid1"},
			--active = {{id="Map",n=2}}
		}
	end
	SetPlayerData(player, playerData)
	
	player.serverUserData.isLoadingQuestData = nil
end


if Environment.IsServer() then
	Game.playerJoinedEvent:Connect(LoadPlayerData)
end


local function FireLocalQuestChangedEvent(player)
	Events.Broadcast("Quest.Changed", player)
end

local function OnPrivateDataChanged(player, key)
	if key == "quests" then
		FireLocalQuestChangedEvent(player)
	end
end

if Environment.IsClient() then
	local player = Game.GetLocalPlayer()
	player.privateNetworkedDataChangedEvent:Connect(OnPrivateDataChanged)
	
	Task.Spawn(function()
		FireLocalQuestChangedEvent(player)
	end)
end


function ResetQuestsForPlayer(player)
	print("ResetQuestsForPlayer() " .. player.name)
	
	local storageData = Storage.GetSharedPlayerData(PROGRESS_KEY, player)
	storageData.quests = nil
	local resultCode,errorMessage = Storage.SetSharedPlayerData(PROGRESS_KEY, player, storageData)
	
	LoadPlayerData(player)
	
	API.ActivateForPlayer(player, "Welcome")
end


-- Cheat to reset quests. E.g.: "/reset quests MyName"
function OnChatMessage(player, params)
	if not Environment.IsPreview()
	and string.lower(player.name) ~= "lootmmo" 
	and player.name ~= "standardcombo" then
		return -- Admins only
	end
	local command, param1, param2 = CoreString.Split(params.message)
	if command == "/reset" 
	and param1 == "quests" 
	and param2 ~= nil then
		params.message = ""
		
		for _,p in ipairs(Game.GetPlayers()) do
			if string.lower(p.name) == string.lower(param2) then
				ResetQuestsForPlayer(p)
				break
			end
		end
	end
end

if Environment.IsServer() then
	Chat.receiveMessageHook:Connect(OnChatMessage)
end



