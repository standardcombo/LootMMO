local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_K = require(script:GetCustomProperty("APIKnockback"))

local RANGE = 180.0
local COOLDOWN = 12.0
local DAMAGE = 25.0

local currentTasks = {}

function GetPriority(npc, taskHistory)
	return 1.0
end

function OnTaskStart(npc, threatTable)
	local target = API_NPC.GetTarget(npc)
	API_NPC.LookAtTargetWithoutPitch(npc, target:GetWorldPosition())
	
	currentTasks[npc] = Task.Spawn(function()
		Task.Wait(0.2)
		
		if Object.IsValid(target) then
			local launchDirection = npc:GetWorldRotation() * Vector3.FORWARD + Vector3.UP * 0.2

			for _, player in pairs(Game.FindPlayersInSphere(target:GetWorldPosition(), RANGE, {ignoreDead = true, ignorePlayers = target})) do
				local dot = (player:GetWorldPosition() - npc:GetWorldPosition()):GetNormalized() .. (npc:GetWorldRotation() * Vector3.FORWARD)

				if dot > 0.0 then
					API_D.ApplyDamage(npc, player, DAMAGE, API_D.TAG_AOE)
					API_K.ApplyImpulse(player, 150.0 * launchDirection)
				end
			end

			API_D.ApplyDamage(npc, target, DAMAGE, API_D.TAG_AOE)
			API_K.ApplyImpulse(target, 150.0 * launchDirection)
		end
	end)

	return 2.0
end

function OnTaskEnd(npc, interrupted)
	if interrupted and currentTasks[npc] then
		currentTasks[npc]:Cancel()
	end

	currentTasks[npc] = nil
end

API_NPC.RegisterTaskServer("reanimated_elite_smash", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
