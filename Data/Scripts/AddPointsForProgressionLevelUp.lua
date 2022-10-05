local EquipAPI = _G["Character.EquipAPI"]
local LevelPrograss = _G['Character.Progression']
local progressionChangedEvent = {}


local function CheckPoints(points, progression)
	points:ValidatePoints()
	local totalPoints = points:GetTotalPoints()
	local potentialTotalPoints = 0
	for key, value in pairs(progression:GetProgression()) do
		if value and LevelPrograss[key] and LevelPrograss[key].CommonKey == "LevelUp" then
			potentialTotalPoints = potentialTotalPoints + 1
		end
	end
	if potentialTotalPoints > totalPoints then
		local difference = potentialTotalPoints - totalPoints
		points:AddPoint(difference)
	elseif potentialTotalPoints == totalPoints then
		warn("Player Has more then the total Points")
	end
end

local function EquipPlayer(char, player)
	local progression = char:GetComponent("Progression")
	local points = char:GetComponent("Points")
	CheckPoints(points, progression)
	progressionChangedEvent[char.id] = progression.progressionUpdatedEvent:Connect(function()
		CheckPoints(points, progression)
	end)
end

local function UnequipPlayer(char, player)
	if progressionChangedEvent[char.id] then
		progressionChangedEvent[char.id]:Disconnect()
		progressionChangedEvent[char.id] = nil
	end
end

EquipAPI.playerEquippedEvent:Connect(EquipPlayer)
EquipAPI.playerUnequippedEvent:Connect(UnequipPlayer)
