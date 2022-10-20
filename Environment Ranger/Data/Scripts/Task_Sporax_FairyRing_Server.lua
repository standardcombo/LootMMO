local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local RANGE = 0.0
local COOLDOWN = 17.0
local OFFSET_RADIUS = 1300.0
local MUSHROOM_COUNTS = {5, 7, 9, 13}
local MUSHROOM_RADIUS = 200.0
local ACTIVATION_DELAY = 2.0
local DURATION = 35.0

local launchTimes = {}

function GetPriority(npc, taskHistory)
	return 2.0
end

function OnTaskStart(npc, threatTable)
	return 1.5
end

function OnTaskEnd(npc, interrupted)
	local stream = RandomStream.New()
	local anchorPosition = npc:GetWorldPosition()

	function GetRandomGroundedPointOnCircle(center, radius)
		for i = 1, 5 do
			local t = 2 * math.pi * stream:GetNumber()
			local p = center + radius * Vector3.New(math.cos(t), math.sin(t), 0.0)
			local rayStart = p + Vector3.UP * 500.0
			local rayEnd = p - Vector3.UP * 500.0 
			local hitResult = World.Raycast(rayStart, rayEnd, {ignorePlayers = true})

			if hitResult and hitResult.other:IsA("Terrain") then
				return hitResult:GetImpactPosition()
			end
		end
	end

	if not interrupted then
		API_RE.BroadcastToAllPlayers("SFR", anchorPosition, stream:GetInitialSeed())
		local points = {}
		
		for i = 1, MUSHROOM_COUNTS[API_DS.GetDifficultyLevel()] do
			local p = GetRandomGroundedPointOnCircle(anchorPosition, OFFSET_RADIUS)
			
			if p then
				table.insert(points, p)
			end
		end

		Task.Spawn(function()
			Task.Wait(ACTIVATION_DELAY)
			local startTime = time()

			while time() < startTime + DURATION do
				for i = 1, #points do
					for _, player in pairs(Game.GetPlayers()) do
						local distance = (player:GetWorldPosition() - Vector3.UP * 100.0 - points[i]).size

						if distance < MUSHROOM_RADIUS then
							if not launchTimes[player] or launchTimes[player] + 1.0 < time() then
								local velocity = player:GetVelocity()
								velocity.z = 2000.0
								player:SetVelocity(velocity)
								launchTimes[player] = time()
							end
						end
					end
				end

				Task.Wait()
			end
		end)
	end
end

API_NPC.RegisterTaskServer("sporax_fairyring", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
