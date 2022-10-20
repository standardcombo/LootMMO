local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_P = require(script:GetCustomProperty("APIProjectile"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local RANGE = 0.0				-- This spell doesn't care where the player target is
local COOLDOWN = 18.0
local BOLT_RANGE = 1700.0
local BOLT_DAMAGE = 34.0
local BOLT_HEALING = 73.0
local PROJECTILE_SPEED = 1500.0

local currentTasks = {}

function GetPriority(npc, taskHistory)
	return 1.0
end

function OnTaskStart(npc, threatTable)
	currentTasks[npc] = Task.Spawn(function()
		for i = 1, 6 do
			local possibleTargets = Game.FindPlayersInSphere(npc:GetWorldPosition(), BOLT_RANGE, {ignoreDead = true})

			for _, npc in pairs(API_NPC.GetAwakeNPCsInSphere(npc:GetWorldPosition(), BOLT_RANGE)) do
				if API_NPC.GetHealthFraction(npc) < 1.0 then
					table.insert(possibleTargets, npc)
				end
			end

			if #possibleTargets > 0 then
				local target = possibleTargets[math.random(#possibleTargets)]

				if Object.IsValid(target) then
					API_RE.BroadcastToAllPlayers("SMVB", npc, target)

					Task.Spawn(function()
						Task.Wait(API_P.GetTravelTime(npc, target, PROJECTILE_SPEED))

						if Object.IsValid(target) then
							if target:IsA("Player") then
								API_D.ApplyDamage(npc, target, BOLT_DAMAGE)
							else
								API_D.ApplyHealing(npc, target, BOLT_HEALING)
							end
						end
					end)
				end

				Task.Wait(1.0)
			end
		end
	end)

	return 6.0
end

function OnTaskEnd(npc, interrupted)
	if interrupted and currentTasks[npc] then
		currentTasks[npc]:Cancel()
	end

	currentTasks[npc] = nil
end

API_NPC.RegisterTaskServer("swampmystic_voodoo", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
