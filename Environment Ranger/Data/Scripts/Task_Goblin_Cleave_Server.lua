local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))

local RANGE = 180.0
local COOLDOWN = 0.0
local DAMAGE = 35.0

local currentTasks = {}

function GetPriority(npc, taskHistory)
	if API_DS.GetDifficultyLevel() > 2 then
		return 1.0
	else
		return 0.0
	end
end

function OnTaskStart(npc, threatTable)
	local target = API_NPC.GetTarget(npc)
	API_NPC.LookAtTargetWithoutPitch(npc, target:GetWorldPosition())
	
	currentTasks[npc] = Task.Spawn(function()
		Task.Wait(0.4)
		
		if Object.IsValid(target) then
			for _, player in pairs(Game.FindPlayersInSphere(npc:GetWorldPosition(), RANGE, {ignoreDead = true, ignorePlayers = target})) do
				local dot = (player:GetWorldPosition() - npc:GetWorldPosition()):GetNormalized() .. (npc:GetWorldRotation() * Vector3.FORWARD)

				if dot > 0.0 then
					API_D.ApplyDamage(npc, player, DAMAGE, API_D.TAG_AOE)
				end
			end
			
			API_D.ApplyDamage(npc, target, DAMAGE, API_D.TAG_AOE)
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

API_NPC.RegisterTaskServer("goblin_cleave", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
