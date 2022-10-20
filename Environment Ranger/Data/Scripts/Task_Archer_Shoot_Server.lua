local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_P = require(script:GetCustomProperty("APIProjectile"))

local RANGE = 1000.0
local COOLDOWN = 0.0
local DAMAGE = 8.0
local PROJECTILE_SPEED = 3000.0

local currentTasks = {}

function GetPriority(npc, taskHistory)
	return 1.0
end

function OnTaskStart(npc, threatTable)
	local target = API_NPC.GetTarget(npc)
	API_NPC.LookAtTargetWithoutPitch(npc, target:GetWorldPosition())

	currentTasks[npc] = Task.Spawn(function()
		Task.Wait(API_P.GetTravelTime(npc, target, PROJECTILE_SPEED))

		if Object.IsValid(target) then
			API_D.ApplyDamage(npc, target, DAMAGE)
		end
	end)

	return 1.5
end

function OnTaskEnd(npc, interrupted)
	if interrupted and currentTasks[npc] then
		currentTasks[npc]:Cancel()
	end

	currentTasks[npc] = nil
end

API_NPC.RegisterTaskServer("archer_shoot", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
