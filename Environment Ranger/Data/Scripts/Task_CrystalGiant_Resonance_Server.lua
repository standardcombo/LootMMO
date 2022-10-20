local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local RANGE = 0.0
local COOLDOWN = 25.0
local REVERB_COUNTS = {3, 6, 9, 12}
local REVERB_RADIUS = 250.0
local DAMAGE = 75.0
local DURATION = 22.0
local DAMAGE_DELAY = 2.0
local SPEED = 350.0

function GetPriority(npc, taskHistory)
	if API_NPC.GetHealthFraction(npc) > 0.90 then
		return 0.0
	else
		return 2.0
	end
end

function OnTaskStart(npc, threatTable)
	return 1.5
end

function OnTaskEnd(npc, interrupted)
	if not interrupted then
		local stream = RandomStream.New()
		local anchorPosition = npc:GetWorldPosition() + Vector3.UP * 50.0

		API_RE.BroadcastToAllPlayers("CGR", anchorPosition, stream:GetInitialSeed())

		function GetBounceInfo(position, direction)
			local startPosition = position + direction * 10.0
			local endPosition = position + direction * 10000.0
			local hitResult = World.Raycast(startPosition, endPosition, {ignorePlayers = true})

			if hitResult then
				endPosition = hitResult:GetImpactPosition()
				local endNormal = hitResult:GetImpactNormal()
				endNormal.z = 0.0
				endNormal = endNormal:GetNormalized()
				local newDirection = direction - 2.0 * endNormal * (direction .. endNormal)
				return endPosition, newDirection
			else
				return endPosition, direction
			end
		end

		for i = 1, REVERB_COUNTS[API_DS.GetDifficultyLevel()] do
			local bouncePosition = anchorPosition
			local direction = Rotation.New(0.0, 0.0, 60.0 + stream:GetNumber(0.0, 240.0)) * Vector3.FORWARD 
			local startTime = time()
			local bounceTime = startTime
			local nextBouncePosition, nextDirection = GetBounceInfo(bouncePosition, direction)
			local nextBounceTime = (nextBouncePosition - bouncePosition).size / SPEED + bounceTime

			Task.Spawn(function()
				while time() < startTime + DURATION do
					if time() >= nextBounceTime then
						bouncePosition = nextBouncePosition
						direction = nextDirection
						bounceTime = nextBounceTime
						nextBouncePosition, nextDirection = GetBounceInfo(bouncePosition, direction)
						nextBounceTime = (nextBouncePosition - bouncePosition).size / SPEED + bounceTime
					end

					if time() - startTime > DAMAGE_DELAY then
						local t = time() - bounceTime
						local position = bouncePosition + direction * t * SPEED
						API_D.ApplyAreaDamage(npc, position, REVERB_RADIUS, DAMAGE, false, API_D.TAG_AOE)
					end
					
					Task.Wait(0.5)
				end
			end)
		end
	end
end

API_NPC.RegisterTaskServer("crystalgiant_resonance", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
