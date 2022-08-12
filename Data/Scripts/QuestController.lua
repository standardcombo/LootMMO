
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
	table.insert(quest.objectives, obj)
	obj.quest = quest
end


function API.GetQuest(id)
	return QUEST_METADATA[id]
end

