local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local RANGE = 0.0
local COOLDOWN = 18.0
local MAX_START_OFFSET = 1000.0
local FIRE_PATCH_RADIUS = 300.0
local FIRE_PATCH_JUMP_RANGE = 300.0
local FIRE_PATCH_DAMAGE_RATE = 35.0
local FIRE_PATCH_DURATION = 10.0
local FIRE_PATCH_JUMP_PERIOD = 3.0

function GetPriority(npc, taskHistory)
	if API_DS.GetDifficultyLevel() > 2 then
		return 1.0
	else
		return 0.0
	end
end

function OnTaskStart(npc, threatTable)
	return 1.5
end

function OnTaskEnd(npc, interrupted)
	if not interrupted then
		local stream = RandomStream.New()
		local anchorPosition = npc:GetWorldPosition()
		API_RE.BroadcastToAllPlayers("CF", npc, anchorPosition, stream:GetInitialSeed())

		function GetRandomGroundedPointInCircle(center, radius)
			for i = 1, 5 do
				local t = 2 * math.pi * stream:GetNumber()
				local u = stream:GetNumber() + stream:GetNumber()
				local r = radius * (1.0 - math.abs(u - 1.0))
				local p = center + r * Vector3.New(math.cos(t), math.sin(t), 0.0)
				local rayStart = p + Vector3.UP * 300.0
				local rayEnd = p - Vector3.UP * 300.0 
				local hitResult = World.Raycast(rayStart, rayEnd, {ignorePlayers = true})

				if hitResult then
					return hitResult:GetImpactPosition()
				end
			end
		end

		local firePosition = GetRandomGroundedPointInCircle(anchorPosition, MAX_START_OFFSET)

		Task.Spawn(function()
			while not API_NPC.IsDead(npc) and API_NPC.GetTarget(npc) and firePosition do
				Task.Spawn(function()
					local position = firePosition
					firePosition = GetRandomGroundedPointInCircle(firePosition, FIRE_PATCH_JUMP_RANGE)

					for i = 1, FIRE_PATCH_DURATION do
						Task.Wait(1.0)

						for _, player in pairs(Game.FindPlayersInSphere(position, FIRE_PATCH_RADIUS, {ignoreDead = true})) do
							API_D.ApplyDamage(npc, player, FIRE_PATCH_DAMAGE_RATE, API_D.TAG_PERIODIC | API_D.TAG_AOE)
						end
					end
				end)

				Task.Wait(FIRE_PATCH_JUMP_PERIOD)
			end
		end)
	end
end

API_NPC.RegisterTaskServer("goblinking_creepingfire", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
