local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))

local RANGE = 3500.0
local COOLDOWN = 14.0
local DAMAGE = 25.0
local SPEED = 2000.0

local currentTasks = {}

function GetPriority(npc, taskHistory)
	return 1.0
end

function OnTaskStart(npc, threatTable)
	-- Initial values for the single player case
	local chargeTarget = API_NPC.GetTarget(npc)
	local targetThreat = 0.0

	-- Find the player in range with the most threat who we aren't currently targeting
	for player, threat in pairs(threatTable) do
		if player ~= API_NPC.GetTarget(npc) and threat > targetThreat then
			if (player:GetWorldPosition() - npc:GetWorldPosition()).size <= RANGE then
				chargeTarget = player
				targetThreat = threat
			end
		end
	end

	API_NPC.LookAtTargetWithoutPitch(npc, chargeTarget:GetWorldPosition())
	local chargeTargetThreat = threatTable[chargeTarget]
	local tankThreat = threatTable[API_NPC.GetTarget(npc)]
	API_NPC.SetThreat(npc, chargeTarget, tankThreat)
	API_NPC.SetThreat(npc, API_NPC.GetTarget(npc), targetThreat)
	local targetBasePosition = chargeTarget:GetWorldPosition() - Vector3.UP * 100.0 * chargeTarget:GetWorldScale().z
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

		if Object.IsValid(chargeTarget) then
			API_D.ApplyDamage(npc, chargeTarget, DAMAGE)
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

API_NPC.RegisterTaskServer("swampwarrior_charge", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
