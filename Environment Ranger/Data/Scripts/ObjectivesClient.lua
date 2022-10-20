local DATA_GROUP = script:GetCustomProperty("DataGroup"):WaitForObject()
local PANEL = script:GetCustomProperty("Panel"):WaitForObject()
local SERVER_SCRIPT = script:GetCustomProperty("ServerScript"):WaitForObject()
local OBJECTIVE_LINE_TEMPLATE = script:GetCustomProperty("ObjectiveLineTemplate")

local OBJECTIVES = {}	-- description = string, objectiveLine = CoreObject

local i = 1

while true do
	OBJECTIVES[i] = {}
	OBJECTIVES[i].description = DATA_GROUP:GetCustomProperty(string.format("ObjectiveDescription%d", i))

	if not OBJECTIVES[i].description then
		OBJECTIVES[i] = nil
		break
	end

	i = i + 1
end

function UpdateLineStates()
	local currentProgress = SERVER_SCRIPT:GetCustomProperty("CurrentProgress")

	for i, objective in pairs(OBJECTIVES) do
		local objectiveLine = objective.objectiveLine
		local textBox = objectiveLine:GetCustomProperty("TextBox"):WaitForObject()
		local circle = objectiveLine:GetCustomProperty("Circle"):WaitForObject()
		local check = objectiveLine:GetCustomProperty("Check"):WaitForObject()

		if i <= currentProgress then
			textBox:SetColor(Color.GRAY)
			check:SetColor(Color.GRAY)
			circle.visibility = Visibility.FORCE_OFF
			check.visibility = Visibility.INHERIT
		elseif i == currentProgress + 1 then
			textBox:SetColor(Color.YELLOW)
			circle:SetColor(Color.YELLOW)
			circle.visibility = Visibility.INHERIT
			check.visibility = Visibility.FORCE_OFF
		else
			textBox:SetColor(Color.WHITE)
			circle:SetColor(Color.WHITE)
			circle.visibility = Visibility.INHERIT
			check.visibility = Visibility.FORCE_OFF
		end
	end
end

function Tick(deltaTime)
	UpdateLineStates()
end

for i, objective in pairs(OBJECTIVES) do
	objective.objectiveLine = World.SpawnAsset(OBJECTIVE_LINE_TEMPLATE, {parent = PANEL})
	objective.objectiveLine.y = 30 * (i - 1)
	local textBox = objective.objectiveLine:GetCustomProperty("TextBox"):WaitForObject()
	local check = objective.objectiveLine:GetCustomProperty("Check"):WaitForObject()
	textBox.text = objective.description
end
