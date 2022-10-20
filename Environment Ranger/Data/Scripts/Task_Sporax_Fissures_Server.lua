local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local RANGE = 0.0
local COOLDOWN = 20.0
local OFFSET_RADIUS = 2900.0
local FISSURE_COUNTS = {4, 7, 11, 19}
local DAMAGE_DELAY = 1.5
local DAMAGE_RADIUS = 200.0
local DAMAGE = 63.0

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
		API_RE.BroadcastToAllPlayers("SF", anchorPosition, stream:GetInitialSeed())
		local points = {}
		
		for i = 1, FISSURE_COUNTS[API_DS.GetDifficultyLevel()] do
			local p = GetRandomGroundedPointOnCircle(anchorPosition, OFFSET_RADIUS)
			
			if p then
				table.insert(points, p)
			end
		end

		Task.Spawn(function()
			Task.Wait(DAMAGE_DELAY)

			for i = 1, #points - 1 do
				for _, player in pairs(Game.GetPlayers()) do
					local distance = GetLinePointDistrance(player:GetWorldPosition() - Vector3.UP * 100.0, points[i], points[i + 1])

					if distance < DAMAGE_RADIUS then
						API_D.ApplyDamage(npc, player, DAMAGE, API_D.TAG_AOE)
						API_SE.ApplyStatusEffect(npc, player, API_SE.STATUS_EFFECT_DEFINITIONS["Fissured"].id)
					end
				end
			end
		end)
	end
end

API_NPC.RegisterTaskServer("sporax_fissures", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
