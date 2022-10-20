local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local GROUP_STATES = {}

local GROUP_STATE_ACTIVE = 1
local GROUP_STATE_UNTRIGGERED = 2
local GROUP_STATE_PREVIOUSLY_ACTIVE = 3

for _, group in pairs(script:GetCustomProperty("CheckpointGroups"):WaitForObject():GetChildren()) do
	GROUP_STATES[group] = GROUP_STATE_UNTRIGGERED
end

local INITIAL_GROUP = nil

local activeGroup = nil

function SetGroupEnabled(group, isEnabled)
	for _, child in pairs(group:GetChildren()) do
		if child:IsA("PlayerStart") then
			child.isEnabled = isEnabled
		end
	end
end

function OnBeginOverlap(trigger, other, group)
	if other:IsA("Player") then
		if GROUP_STATES[group] == GROUP_STATE_UNTRIGGERED then
			SetGroupEnabled(activeGroup, false)
			GROUP_STATES[activeGroup] = GROUP_STATE_PREVIOUSLY_ACTIVE
			activeGroup = group
			SetGroupEnabled(group, true)
			GROUP_STATES[group] = GROUP_STATE_ACTIVE
		end
	end
end

function OnResetDungeon()
	activeGroup = INITIAL_GROUP

	for _, group in pairs(script:GetCustomProperty("CheckpointGroups"):WaitForObject():GetChildren()) do
		if group == INITIAL_GROUP then
			GROUP_STATES[group] = GROUP_STATE_ACTIVE
			SetGroupEnabled(group, true)
		else
			GROUP_STATES[group] = GROUP_STATE_UNTRIGGERED
			SetGroupEnabled(group, false)
		end
	end
end

for group, _ in pairs(GROUP_STATES) do
	local triggerReference = group:GetCustomProperty("Trigger")

	if triggerReference then
		triggerReference:WaitForObject().beginOverlapEvent:Connect(OnBeginOverlap, group)
		SetGroupEnabled(group, false)
	else
		GROUP_STATES[group] = GROUP_STATE_ACTIVE
		INITIAL_GROUP = group
		activeGroup = group
	end
end

API_RE.Connect("ResetDungeon", OnResetDungeon)
