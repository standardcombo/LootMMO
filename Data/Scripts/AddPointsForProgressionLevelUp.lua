local EquipAPI = _G["Character.EquipAPI"]
local progressionChangedEvent = {}


local function EquipPlayer(char, player)
	if LOCAL_PLAYER ~= player then
		return
	end
	local progression = char:GetComponent("Progression")
	local points = char:GetComponent("Points")
	progressionChangedEvent[char] =
	progression.progressionUpdatedEvent:Connect(
		function(progression, key, elementTable, value)
			if elementTable["CommonKey"] == "LevelUp" then
				points:AddPoint()
			end
		end
	)
end

local function UnequipPlayer(char, player)
	if progressionChangedEvent[char] then
		progressionChangedEvent[char]:Disconnect()
		progressionChangedEvent[char] = nil
	end
end

EquipAPI.playerEquippedEvent:Connect(EquipPlayer)
EquipAPI.playerUnequippedEvent:Connect(UnequipPlayer)
