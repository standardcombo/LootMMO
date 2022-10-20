local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local DATA_GROUP = script:GetCustomProperty("DataGroup"):WaitForObject()

local OBJECTIVE_EVENT_NAMES = {}

local resettingDungeon = false
local i = 1

while true do
	OBJECTIVE_EVENT_NAMES[i] = DATA_GROUP:GetCustomProperty(string.format("FinishedEvent%d", i))

	if not OBJECTIVE_EVENT_NAMES[i] then
		break
	end

	i = i + 1
end

function OnResetDungeon()
	script:SetNetworkedCustomProperty("CurrentProgress", 0)
	resettingDungeon = true
	Task.Wait(10.0)			-- Resetting sometimes kills enemies, and we don't want that to give us progress
	resettingDungeon = false
end

API_RE.Connect("ResetDungeon", OnResetDungeon)

for i, objectiveName in pairs(OBJECTIVE_EVENT_NAMES) do
	API_RE.Connect(objectiveName, function()
		if not resettingDungeon then
			local currentProgress = script:GetCustomProperty("CurrentProgress")
			script:SetNetworkedCustomProperty("CurrentProgress", math.max(currentProgress, i))
		end
	end)
end
