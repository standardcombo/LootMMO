local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local RANGE = 1000.0
local COOLDOWN = 7.0

local targets = {}

function FindAlternateTarget(npc, target, maxAngle, maxDistance)
	if npc == target then
		return target
	end

	local alternateTargets = {}
	local targetNormal = (target:GetWorldPosition() - npc:GetWorldPosition()):GetNormalized()
	local maxDot = math.cos(math.rad(maxAngle))

	for _, player in pairs(Game.GetPlayers({ignoreDead = true})) do
		local offset = player:GetWorldPosition() - npc:GetWorldPosition()
		local normal = offset:GetNormalized()
		local distance = offset.size

		if normal .. targetNormal > maxDot and distance <= maxDistance and player ~= target then
			table.insert(alternateTargets, player)
		end
	end

	for _, otherNpc in pairs(API_NPC.GetAwakeNPCs()) do
		if npc ~= otherNpc then
			local offset = otherNpc:GetWorldPosition() - npc:GetWorldPosition()
			local normal = offset:GetNormalized()
			local distance = offset.size
			
			if normal .. targetNormal > maxDot and distance <= maxDistance and otherNpc ~= target then
				table.insert(alternateTargets, otherNpc)
			end
		end
	end

	if #alternateTargets > 0 then
		return alternateTargets[math.random(#alternateTargets)]
	end

	return target
end

function FindTarget(npc)
	local targets = API_NPC.GetAwakeNPCsInSphere(npc:GetWorldPosition(), RANGE)
	return targets[math.random(#targets)]
end

function GetPriority(npc, taskHistory)
	if API_DS.GetDifficultyLevel() > 1 then
		return 1.0
	else
		return 0.0
	end
end

function OnTaskStart(npc, threatTable)
	local target = FindTarget(npc)

	-- Goblins don't have great aim, so sometimes they hit something else in the same direction
	if math.random() < 0.5 then
		target = FindAlternateTarget(npc, target, 30.0, RANGE * 1.3)
	end

	targets[npc] = target
	API_NPC.LookAtTargetWithoutPitch(npc, targets[npc]:GetWorldPosition())

	return 1.5
end

function OnTaskEnd(npc, interrupted)
	if not interrupted then
		local target = targets[npc]
		
		if Object.IsValid(target) then
			API_SE.ApplyStatusEffect(npc, target, API_SE.STATUS_EFFECT_DEFINITIONS["Empowered"].id)
		end
	end
	
	targets[npc] = nil
end

API_NPC.RegisterTaskServer("goblin_wizard_empower", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
