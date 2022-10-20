local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_P = require(script:GetCustomProperty("APIProjectile"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local RANGE = 1000.0
local COOLDOWN = 0.0
local DAMAGE = 34.0
local PROJECTILE_SPEED = 2000.0

local targets = {}

function FindAlternateTarget(npc, target, maxAngle, maxDistance)
	local alternateTargets = {}
	local targetNormal = (target:GetWorldPosition() - npc:GetWorldPosition()):GetNormalized()
	local minDot = math.cos(math.rad(maxAngle))

	for _, player in pairs(Game.GetPlayers({ignoreDead = true})) do
		local offset = player:GetWorldPosition() - npc:GetWorldPosition()
		local normal = offset:GetNormalized()
		local distance = offset.size

		if normal .. targetNormal > minDot and distance <= maxDistance and player ~= target then
			table.insert(alternateTargets, player)
		end
	end

	for _, otherNpc in pairs(API_NPC.GetAwakeNPCs()) do
		if npc ~= otherNpc then
			local offset = otherNpc:GetWorldPosition() - npc:GetWorldPosition()
			local normal = offset:GetNormalized()
			local distance = offset.size
			
			if normal .. targetNormal > minDot and distance <= maxDistance and otherNpc ~= target then
				table.insert(alternateTargets, otherNpc)
			end
		end
	end

	if #alternateTargets > 0 then
		return alternateTargets[math.random(#alternateTargets)]
	end

	return target
end

function GetPriority(npc, taskHistory)
	return 1.0
end

function OnTaskStart(npc, threatTable)
	local target = API_NPC.GetTarget(npc)

	-- Goblins don't have great aim, so sometimes they hit something else in the same direction
	if math.random() < 0.3 then
		target = FindAlternateTarget(npc, target, 30.0, RANGE * 1.3)
	end

	targets[npc] = target
	API_NPC.LookAtTargetWithoutPitch(npc, targets[npc]:GetWorldPosition())

	return 1.5
end

function OnTaskEnd(npc, interrupted)
	if not interrupted then
		local target = targets[npc]
		API_RE.BroadcastToAllPlayers("GWF", npc, target)
		
		Task.Spawn(function()
			if Object.IsValid(target) then
				Task.Wait(API_P.GetTravelTime(npc, target, PROJECTILE_SPEED))

				if Object.IsValid(target) then
					API_D.ApplyDamage(npc, target, DAMAGE)
				end
			end
		end)
	end
	
	targets[npc] = nil
end

API_NPC.RegisterTaskServer("goblin_wizard_fireball", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
