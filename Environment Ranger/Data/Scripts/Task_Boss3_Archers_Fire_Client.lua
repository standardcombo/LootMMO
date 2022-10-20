local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_P = require(script:GetCustomProperty("APIProjectile"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local PROJECTILE_TEMPLATE = script:GetCustomProperty("ProjectileTemplate")
local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local FIRE_TEMPLATE = script:GetCustomProperty("FireTemplate")
local GRID_CORNERS = script:GetCustomProperty("GridCorners"):WaitForObject()
local ARCHER_GROUP = script:GetCustomProperty("ArcherGroup"):WaitForObject()

local ARROW_SPEED = 1300.0
local FIRE_RADIUS = 500.0
local GRID_SIZE = Vector2.New(3, 4)		-- Because of helper position, valid spots go all the way down to 0 here
local INITIAL_DELAY = 3.0
local FIRE_TICKS = 4					-- One per second
local FIRE_MOVE_RATE = 0.7				-- Steps per second

local gridOrigin = GRID_CORNERS:FindChildByName("Origin"):GetWorldPosition()
local gridStepX = (GRID_CORNERS:FindChildByName("X"):GetWorldPosition() - gridOrigin) / GRID_SIZE.x
local gridStepY = (GRID_CORNERS:FindChildByName("Y"):GetWorldPosition() - gridOrigin) / GRID_SIZE.y

_G.boss3Rocks = {}	-- int -> true
local archers = ARCHER_GROUP:GetChildren()

function OnTaskStart(npc, animatedMesh)
end

function OnTaskEnd(npc, animatedMesh, interrupted)
end

function OnArchersFire(seed)
	function GetRocksIndex(coordinate)
		-- We add 5 because we go a bit off the ends of this.
		return coordinate.x + coordinate.y * (GRID_SIZE.x + 5)
	end

	local stream = RandomStream.New(seed)

	Task.Spawn(function()
		function FireLine(startCoordinate, direction, stepCount)
			for i = 0, stepCount do
				local coordinate = startCoordinate + direction * i / 2

				if stepCount % 2 == 0 and _G.boss3Rocks[GetRocksIndex(coordinate)] then
					break
				end

				Task.Spawn(function()
					local position = gridOrigin + gridStepX * coordinate.x + gridStepY * coordinate.y
					local archer = archers[math.random(#archers)]
					local travelTime = API_P.GetTravelTime(archer, position, ARROW_SPEED)
					Task.Wait(INITIAL_DELAY + i / FIRE_MOVE_RATE - travelTime)
					archer:FindChildByType("AnimatedMesh"):PlayAnimation("2hand_rifle_shoot")
					API_P.CreateProjectile(archer, position, ARROW_SPEED, 1.0, PROJECTILE_TEMPLATE)
					Task.Wait(travelTime)
					local startTime = time()
					local fireScale = Vector3.New(FIRE_RADIUS / 100.0, FIRE_RADIUS / 100.0, 1.0)
					local fireRotation = Rotation.New(0.0, 0.0, math.random() * 360.0)
					local fire = World.SpawnAsset(FIRE_TEMPLATE, {position = position, rotation = fireRotation, scale = fireScale})
					Task.Wait(FIRE_TICKS)
					fire:Destroy()
				end)
			end
		end

		local directionKey = stream:GetInteger(1, 4)

		if directionKey < 3 then
			if directionKey % 2 == 1 then
				for i = -2, GRID_SIZE.x + 2 do
					FireLine(Vector2.New(i, -2), Vector2.New(0, 1), GRID_SIZE.y * 2 + 8)
				end
			else
				for i = -2, GRID_SIZE.x + 2 do
					FireLine(Vector2.New(i, GRID_SIZE.y + 2), Vector2.New(0, -1), GRID_SIZE.y * 2 + 8)
				end
			end
		else
			if directionKey % 2 == 1 then
				for i = -2, GRID_SIZE.y + 2 do
					FireLine(Vector2.New(-2, i), Vector2.New(1, 0), GRID_SIZE.x * 2 + 8)
				end
			else
				for i = -2, GRID_SIZE.y + 2 do
					FireLine(Vector2.New(GRID_SIZE.x + 2, i), Vector2.New(-1, 0), GRID_SIZE.x * 2 + 8)
				end
			end
		end
	end)
end

API_RE.Connect("AF", OnArchersFire)

API_NPC.RegisterTaskClient("boss3_archers_fire", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
