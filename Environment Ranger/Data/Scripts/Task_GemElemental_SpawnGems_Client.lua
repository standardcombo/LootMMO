local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_P = require(script:GetCustomProperty("APIProjectile"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local GEM_TEMPLATES = {
	script:GetCustomProperty("EmeraldTemplate"),
	script:GetCustomProperty("RubyTemplate"),
	script:GetCustomProperty("SapphireTemplate")
}
local LASER_TEMPLATE = script:GetCustomProperty("LaserTemplate")

local MAX_OFFSET_RADIUS = 3800.0
local PROJECTILE_SPEED = 1000.0
local GEM_SET_DURATION = 24.0
local GEM_CONNECTION_DELAY = 2.0
local LASER_COLORS = {
	Color.GREEN,
	Color.RED,
	Color.BLUE
}
local N_GEMS = {7, 12, 17, 25}

local gems = {{}, {}, {}}
local lasers = {}

function OnSpawnGems(anchorPosition, seed)
	local stream = RandomStream.New(seed)

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
			API_P.CreateProjectile(anchorPosition, position, PROJECTILE_SPEED, 0.7, GEM_TEMPLATES[gemType])
			Task.Wait(API_P.GetTravelTime(anchorPosition, position, PROJECTILE_SPEED))

			for j = 1, #gems[gemType] do
				local p1 = position + Vector3.UP * 100.0
				local p2 = gems[gemType][j]:GetWorldPosition() + Vector3.UP * 100.0
				local laser = World.SpawnAsset(LASER_TEMPLATE, {position = p1})
				laser:SetWorldRotation(Rotation.New(p2 - p1, Vector3.UP) * Rotation.New(0.0, -90.0, 0.0))
				laser:SetSmartProperty("Beam Length", (p2 - p1).size / 512.0)
				laser:SetSmartProperty("Emissive Boost", 1.0)

				Task.Spawn(function()
					local startTime = os.clock()

					while true do
						local t = CoreMath.Clamp((os.clock() - startTime) / GEM_CONNECTION_DELAY) ^ 2.0
						laser:SetSmartProperty("Emissive Boost", CoreMath.Lerp(1.0, 10.0, t))
						laser:SetSmartProperty("Color", Color.Lerp(Color.SILVER, LASER_COLORS[gemType], t))

						if t >= 1.0 then
							return
						end

						Task.Wait()
					end
				end)

				table.insert(lasers, laser)
			end

			table.insert(gems[gemType], World.SpawnAsset(GEM_TEMPLATES[gemType], {position = position, rotation = Rotation.New(0.0, 0.0, math.random() * 360.0)}))
		end)
	end

	Task.Spawn(function()
		Task.Wait(GEM_SET_DURATION)

		for i = 1, 3 do
			for _, gem in pairs(gems[i]) do
				gem:Destroy()
			end
		end

		for _, laser in pairs(lasers) do
			laser:Destroy()
		end

		gems = {{}, {}, {}}
		lasers = {}
	end)
end

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("2hand_staff_magic_up")
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
end

API_RE.Connect("SG", OnSpawnGems)

API_NPC.RegisterTaskClient("gemelemental_spawngems", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
