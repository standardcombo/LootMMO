local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))

local RANGE = 220.0
local COOLDOWN = 8.0
local DAMAGE_RATE = 42.0
local COMBO_RANGE = 350.0
local COMBO_HALF_ANGLE = 30.0

local currentTasks = {}

function GetPriority(npc, taskHistory)
	return 0.3
end

function OnTaskStart(npc, threatTable)
	API_NPC.LookAtTargetWithoutPitch(npc, API_NPC.GetTarget(npc):GetWorldPosition())
	
	currentTasks[npc] = Task.Spawn(function()
		for i = 1, 4 do
			Task.Wait(1.0)
		
			for _, player in pairs(Game.FindPlayersInSphere(npc:GetWorldPosition(), COMBO_RANGE, {ignoreDead = true})) do
				local offset = player:GetWorldPosition() - npc:GetWorldPosition()
				offset.z = 0.0
				local dot = offset:GetNormalized() .. (npc:GetWorldRotation() * Vector3.FORWARD)

				if dot >= math.cos(math.rad(COMBO_HALF_ANGLE / 2.0)) then
					API_D.ApplyDamage(npc, player, DAMAGE_RATE, API_D.TAG_AOE | API_D.TAG_PERIODIC)
				end
			end
		end
	end)

	return 4.0
end

function OnTaskEnd(npc, interrupted)
	if interrupted and currentTasks[npc] then
		currentTasks[npc]:Cancel()
	end

	currentTasks[npc] = nil
end

API_NPC.RegisterTaskServer("swampspearthrower_combo", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
