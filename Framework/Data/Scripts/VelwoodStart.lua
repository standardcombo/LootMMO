-- --local qAPI = _G.QuestController

-- function OnPlayerJoined(player)
--     Task.Wait(2)
--     local qAPI = _G.QuestController
--     local quests = qAPI.GetActiveObjectives(player)
--     local questId = "GotoVelwood"
--     for key, value in pairs(quests) do
--         local quest = qAPI.GetQuest(questId)
--         if quest then
--             local obj = quest.objectives[1]
--             if value == obj then
--                 qAPI.AdvanceObjective(player, questId, 1)
--             end
--         end
--     end
-- end

-- Game.playerJoinedEvent:Connect(OnPlayerJoined)