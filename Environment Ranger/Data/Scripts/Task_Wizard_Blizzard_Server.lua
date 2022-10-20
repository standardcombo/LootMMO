local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local RANGE = 700.0
local COOLDOWN = 20.0
local DAMAGE_RATE = 6.0
local MAX_OFFSET_RADIUS = 600.0
local AREA_RADIUS = 600.0
local DURATION = 12.0

local targets = {}
local playerColdTimes = {}		-- Player -> time

function GetPriority(npc, taskHistory)
	if API_NPC.GetHealthFraction(npc) > 0.9 then
		return 0.0
	else
		return 3.0
	end
end

function OnTaskStart(npc, threatTable)
	function GetRandomPointInCircle(center, radius)
		local t = 2 * math.pi * math.random()
		local u = math.random() + math.random()
		local r = radius * (1.0 - math.abs(u - 1.0))
		return center + r * Vector3.New(math.cos(t), math.sin(t), 0.0)
	end

	local targetPlayer = API_NPC.GetRandomCharacterInThreatTable(threatTable)
	API_NPC.LookAtTargetWithoutPitch(npc, targetPlayer:GetWorldPosition())
	local target = GetRandomPointInCircle(targetPlayer:GetWorldPosition(), MAX_OFFSET_RADIUS)
	hitResult = World.Raycast(target + Vector3.UP * 500.0, target - Vector3.UP * 500.0, {ignorePlayers = true})

	if hitResult then
		target = hitResult:GetImpactPosition()
	end

	targets[npc] = target
	return 1.5
end

function OnTaskEnd(npc, interrupted)
	if not interrupted then
		local target = targets[npc]
		API_RE.BroadcastToAllPlayers("WB", target)

		Task.Spawn(function()
			for i = 1, DURATION do
				Task.Wait(1.0)

				for _, player in pairs(Game.FindPlayersInSphere(target, AREA_RADIUS, {ignoreDead = true})) do
					API_D.ApplyDamage(npc, player, DAMAGE_RATE, API_D.TAG_PERIODIC | API_D.TAG_AOE)

					if playerColdTimes[player] and time() - playerColdTimes[player] < 3.5 then
						API_SE.ApplyStatusEffect(sourceCharacter, player, API_SE.STATUS_EFFECT_DEFINITIONS["Cold"].id)
						playerColdTimes[player] = time()
					end
				end
			end
		end)
	end

	targets[npc] = nil
end

API_NPC.RegisterTaskServer("wizard_blizzard", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
