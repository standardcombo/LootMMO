local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_K = require(script:GetCustomProperty("APIKnockback"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local RANGE = 3500.0
local COOLDOWN = 10.0
local DAMAGE = 20.0
local SPEED = 2000.0

local currentTasks = {}

function GetPriority(npc, taskHistory)
	return 1.0
end

function OnTaskStart(npc, threatTable)
	-- Initial values for the single player case
	local target = API_NPC.GetTarget(npc)
	local targetThreat = 0.0
	local hasMultipleTargets = false

	-- Find the player in range with the most threat who we aren't currently targeting
	for player, threat in pairs(threatTable) do
		if player ~= API_NPC.GetTarget(npc) and threat > targetThreat then
			if (player:GetWorldPosition() - npc:GetWorldPosition()).size <= RANGE then
				target = player
				targetThreat = threat
				hasMultipleTargets = true
			end
		end
	end

	API_NPC.LookAtTargetWithoutPitch(npc, target:GetWorldPosition())
	API_NPC.SetThreat(npc, target, threatTable[target] / 2.0)		-- Index again to handle single player case as well
	local targetBasePosition = target:GetWorldPosition() - Vector3.UP * 100.0 * target:GetWorldScale().z
	local offset = targetBasePosition - npc:GetWorldPosition()
	local offsetSize = offset.size
	local offsetDirection = offset:GetNormalized()
	local destination = npc:GetWorldPosition() + offsetDirection * (offsetSize - 200.0)

	if offsetSize < 200.0 then
		destination = npc:GetWorldPosition()
	end

	local travelTime = (destination - npc:GetWorldPosition()).size / SPEED
	npc:MoveTo(destination, travelTime)
	
	currentTasks[npc] = Task.Spawn(function()
		Task.Wait(travelTime)

		if Object.IsValid(target) then
			local launchDirection = offsetDirection * Vector3.FORWARD + Vector3.UP
			API_D.ApplyDamage(npc, target, DAMAGE)
			API_K.ApplyImpulse(target, 60.0 * launchDirection)

			-- When soloing, this is just making it extra hard
			if hasMultipleTargets then
				API_SE.ApplyStatusEffect(npc, target, API_SE.STATUS_EFFECT_DEFINITIONS["Dazed"].id)
			end
		end
	end)

	return math.max(0.1, travelTime)
end

function OnTaskEnd(npc, interrupted)
	if interrupted and currentTasks[npc] then
		currentTasks[npc]:Cancel()
	end

	currentTasks[npc] = nil
end

API_NPC.RegisterTaskServer("boss3_charge", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
