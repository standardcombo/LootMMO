local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))

local RANGE = 180.0
local WHIRL_RANGES = {180.0, 200.0, 250.0, 300.0}
local DAMAGE_DELAY = 2.0
local COOLDOWN = 11.0
local DAMAGE = 80.0

local currentTasks = {}

function GetPriority(npc, taskHistory)
	return 1.0
end

function OnTaskStart(npc, threatTable)
	currentTasks[npc] = Task.Spawn(function()
		npc:RotateContinuous(-Vector3.UP * 33.0)
		Task.Wait(DAMAGE_DELAY)

		for _, player in pairs(Game.FindPlayersInSphere(npc:GetWorldPosition(), WHIRL_RANGES[API_DS.GetDifficultyLevel()], {ignoreDead = true})) do
			API_D.ApplyDamage(npc, player, DAMAGE, API_D.TAG_AOE)
		end
	end)

	return 2.3
end

function OnTaskEnd(npc, interrupted)
	if interrupted and currentTasks[npc] then
		currentTasks[npc]:Cancel()
	end

	currentTasks[npc] = nil
	npc:StopRotate()
end

API_NPC.RegisterTaskServer("swampwarrior_whirl", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
