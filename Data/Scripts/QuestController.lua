
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
	
	Events.Broadcast("Quest_ObjectiveSelected", obj)
end


-- Server only
function API.UnlockForPlayer(player, questId)
	--print("QuestController::UnlockForPlayer() "..player.name..","..questId)
	if not QUEST_METADATA[questId] then
		error("Cannot unlock quest ".. tostring(questId) .." because no such quest exists.")
		return
	end
	if API.HasCompleted(player, questId) then
		warn(player.name .." has already completed ".. questId)
		return
	end
	local playerData = API.GetPlayerData(player)
	for _,entry in ipairs(playerData.active) do
		if entry.id == questId then
			warn(player.name .." has already unlocked ".. questId)
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
			if entry.n == #quest.objectives then
				CompleteQuest(player, questId)
			else
				entry.n = entry.n + 1
				SetPlayerData(player, playerData)
			end
			break
		end
	end
end

function CompleteQuest(player, questId)
	print("QuestController::CompleteQuest() "..player.name..","..questId)
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
		
		API.UnlockForPlayer(player, unlockId)
	end
end


local function SavePlayerData(player)
--[[	local storageData = Storage.GetPlayerData(player)
	
	if not storageData.quests then
		storageData.quests = {}
	end
	...
]]
end

local function LoadPlayerData(player)
	local storageData = Storage.GetPlayerData(player)
	local playerData = storageData.quests
	
	if not playerData then
		playerData = {
			complete = {},
			active = {}
			--Fake data:
			--complete = {"Welcome"},
			--active = {{id="Map",n=2},{id="Raid1"}}
		}
	end
	SetPlayerData(player, playerData)
end

if Environment.IsServer() then
	Game.playerJoinedEvent:Connect(LoadPlayerData)
end


local function FireLocalQuestChangedEvent()
	Events.Broadcast("Quest_Changed")
end

local function OnPrivateDataChanged(player, key)
	if key == "quests" then
		FireLocalQuestChangedEvent()
	end
end

if Environment.IsClient() then
	Game.GetLocalPlayer().privateNetworkedDataChangedEvent:Connect(OnPrivateDataChanged)
	
	Task.Spawn(
		FireLocalQuestChangedEvent
	)
end



