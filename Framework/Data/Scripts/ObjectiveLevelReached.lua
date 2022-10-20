
local QUEST_ID = script:GetCustomProperty("QuestID")
local OBJECTIVE_INDEX = script:GetCustomProperty("ObjectiveIndex")

local TARGET_LEVEL = script:GetCustomProperty("TargetLevel")


function LevelChanged(player, levelComponent, newLevel)
    if newLevel >= TARGET_LEVEL then
		local obj = _G.QuestController.GetQuestObjective(QUEST_ID, OBJECTIVE_INDEX)
		
		TryAdvanceObjectiveForPlayer(player, obj)
	end
end

function PlayerEquipped(character, player)
    local level = character:GetComponent("Level")
    
    local eventListener = level.levelUpEvent:Connect(
    	function(levelComponent, newLevel)
    		LevelChanged(player, levelComponent, newLevel)
    	end)
    LevelChanged(player, level, level:GetLevel())
    
    player.serverUserData.levelUpListener = eventListener
end

function PlayerUnequipped(character, player)
    if player.serverUserData.levelUpListener then
        player.serverUserData.levelUpListener:Disconnect()
        player.serverUserData.levelUpListener = nil
    end
end

Task.Wait()
local CequipApi = _G['Character.EquipAPI']
CequipApi.playerEquippedEvent:Connect(PlayerEquipped)
CequipApi.playerUnequippedEvent:Connect(PlayerUnequipped)


function TryAdvanceObjectiveForPlayer(player, obj)
	if not Object.IsValid(player) then
		warn("Invalid player in ObjectiveLevelReached "..QUEST_ID..","..OBJECTIVE_INDEX)
		return
	end
	
	--print("ObjectiveLevelReached "..player.name..","..QUEST_ID..","..OBJECTIVE_INDEX)
	
	if _G.QuestController.IsActive(player, obj) then
		_G.QuestController.AdvanceObjective(player, QUEST_ID, OBJECTIVE_INDEX)
	end
end

