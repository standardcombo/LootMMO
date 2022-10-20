local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_P = require(script:GetCustomProperty("APIProjectile"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local RANGE = 230.0
local COOLDOWN = 28.0
local MAX_OFFSET_RADIUS = 3800.0
local PROJECTILE_SPEED = 1000.0
local GEM_SET_DURATION = 24.0
local GEM_CONNECTION_DELAY = 2.0
local LASER_RADIUS = 75.0
local LASER_DAMAGE_RATE = 35.0
local N_GEMS = {7, 12, 17, 25}

local gems = {{}, {}, {}}

function GetLinePointDistrance(p, l1, l2)
	if (p - l1) .. (l2 - l1) < 0.0 then
		return (p - l1).size
	elseif (p - l2) .. (l1 - l2) < 0.0 then
		return (p - l2).size
	else
		local n = (l2 - l1):GetNormalized()
		return (p - l1 - ((p - l1) .. n) * n).size
	end
end

function GetPriority(npc, taskHistory)
	return 3.0
end

function OnTaskStart(npc, threatTable)
	return 1.5
end

function OnTaskEnd(npc, interrupted)
	if not interrupted then
		local stream = RandomStream.New()
		local anchorPosition = npc:GetWorldPosition()
		API_RE.BroadcastToAllPlayers("SG", anchorPosition, stream:GetInitialSeed())

		function GetRandomGroundedPointInCircle(center, radius)
			for i = 1, 5 do
				local t = 2 * math.pi * stream:GetNumber()
				local u = stream:GetNumber() + stream:GetNumber()
				local r = radius * (1.0 - math.abs(u - 1.0))
				local p = center + r * Vector3.New(math.cos(t), math.sin(t), 0.0)
				local rayStart = p + Vector3.UP * 800.0
				local rayEnd = p - Vector3.UP * 800.0 
				local hitResult = World.Raycast(rayStart, rayEnd, {ignorePlayers = true})

				if hitResult then
					return hitResult:GetImpactPosition()
				end
			end
		end

		for i = 1, N_GEMS[API_DS.GetDifficultyLevel()] do
			local position = GetRandomGroundedPointInCircle(anchorPosition, MAX_OFFSET_RADIUS)
			local gemType = stream:GetInteger(1, 3)

			Task.Spawn(function()
				Task.Wait(API_P.GetTravelTime(anchorPosition, position, PROJECTILE_SPEED) + GEM_CONNECTION_DELAY)
				table.insert(gems[gemType], position)
			end)
		end

		Task.Spawn(function()
			local startTime = time()

			while time() < startTime + GEM_SET_DURATION do
				for i = 1, 3 do
					local c = #gems[i]

					-- Consider every pair of gems of the same color
					for j = 1, c do
						for k = j + 1, c do
							local p1 = gems[i][j]
							local p2 = gems[i][k]

							for _, player in pairs(Game.GetPlayers({ignoreDead = true})) do
								local p3 = player:GetWorldPosition() - Vector3.UP * 100.0

								if GetLinePointDistrance(p3, p1, p2) < LASER_RADIUS then
									API_D.ApplyDamage(npc, player, LASER_DAMAGE_RATE, API_D.TAG_AOE | API_D.TAG_PERIODIC)
								end
							end
						end
					end
				end

				Task.Wait(1.0)
			end

			gems = {{}, {}, {}}
		end)
	end
end

API_NPC.RegisterTaskServer("gemelemental_spawngems", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
