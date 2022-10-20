local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local CENTER = script:GetCustomProperty("Center"):WaitForObject()

local RANGE = 00.0
local COOLDOWN = 12.0
local SPEED = 1200.0

local currentTasks = {}

function GetPriority(npc, taskHistory)
	if API_NPC.GetHealthFraction(npc) > 0.90 then
		return 0.0
	else
		return 3.0
	end
end

function OnTaskStart(npc, threatTable)
	local destination = CENTER:GetWorldPosition()
	API_NPC.LookAtTargetWithoutPitch(npc, destination)
	local travelTime = (destination - npc:GetWorldPosition()).size / SPEED
	npc:MoveTo(destination, travelTime)
	return math.max(0.1, travelTime)
end

function OnTaskEnd(npc, interrupted)
	if interrupted and currentTasks[npc] then
		currentTasks[npc]:Cancel()
	end

	currentTasks[npc] = nil
end

API_NPC.RegisterTaskServer("boss4_run_to_center", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
