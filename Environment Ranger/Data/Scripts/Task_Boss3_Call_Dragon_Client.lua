local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_P = require(script:GetCustomProperty("APIProjectile"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local PROJECTILE_TEMPLATE = script:GetCustomProperty("ProjectileTemplate")
local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local TELEGRAPH_TEMPLATE = script:GetCustomProperty("TelegraphTemplate")
local DRAGON_TEMPLATE = script:GetCustomProperty("DragonTemplate")
local DRAGON_PATHS = script:GetCustomProperty("DragonPaths"):WaitForObject()
local ROCK_IMPACT_TEMPLATE = script:GetCustomProperty("RockImpactTemplate")
local GRID_CORNERS = script:GetCustomProperty("GridCorners"):WaitForObject()

local DRAGON_PATH_RADIUS = 20000.0
local DRAGON_ANGLE_LIMIT = 45.0
local DRAGON_SPEED = 4.0	-- Degrees/second
local ROCK_SPEED = 2000.0
local TELEGRAPH_DURATION = 8.0
local GRID_SIZE = Vector2.New(3, 4)		-- Because of helper position, valid spots go all the way down to 0 here

local gridOrigin = GRID_CORNERS:FindChildByName("Origin"):GetWorldPosition()
local gridStepX = (GRID_CORNERS:FindChildByName("X"):GetWorldPosition() - gridOrigin) / GRID_SIZE.x
local gridStepY = (GRID_CORNERS:FindChildByName("Y"):GetWorldPosition() - gridOrigin) / GRID_SIZE.y

_G.boss3Rocks = {}	-- int -> true
local currentTasks = {}
local dragon = nil
local telegraph = nil

function OnTaskStart(npc, animatedMesh)
end

function OnTaskEnd(npc, animatedMesh, interrupted)
end

function GetDragonTransform(peak, angle)
	local radians = angle * math.pi / 180.0
	local peakRotation = peak:GetWorldRotation()
	local forward = peakRotation * Vector3.FORWARD
	local up = peakRotation * Vector3.UP
	local arcCenter = peak:GetWorldPosition() - up * DRAGON_PATH_RADIUS
	local position = arcCenter + DRAGON_PATH_RADIUS * (math.cos(radians) * up + math.sin(radians) * forward)
	local rotation = Rotation.New(-math.sin(radians) * up + math.cos(radians) * forward, Vector3.UP)
	return Transform.New(rotation, position, Vector3.ONE)
end

function OnCallDragon(seed)
	function GetRocksIndex(coordinate)
		-- We add 5 because we go a bit off the ends of this.
		return coordinate.x + coordinate.y * (GRID_SIZE.x + 5)
	end

	local stream = RandomStream.New(seed)
	currentTasks[1] = Task.Spawn(function()
		local targetCoordinate = nil

		while not targetCoordinate or _G.boss3Rocks[GetRocksIndex(targetCoordinate)] do
			targetCoordinate = Vector2.New(stream:GetInteger(0, GRID_SIZE.x), stream:GetInteger(0, GRID_SIZE.y))
		end

		_G.boss3Rocks[GetRocksIndex(targetCoordinate)] = true
		local targetPosition = gridOrigin + targetCoordinate.x * gridStepX + targetCoordinate.y * gridStepY

		-- These are actually just the peaks. We do an arc of a circle.
		local pathGroups = DRAGON_PATHS:GetChildren()
		local pathPeak = pathGroups[stream:GetInteger(1, #pathGroups)]

		currentTasks[2] = Task.Spawn(function()
			local angle = -DRAGON_ANGLE_LIMIT
			dragon = World.SpawnAsset(DRAGON_TEMPLATE)
			local spawnTime = os.clock()

			while angle < DRAGON_ANGLE_LIMIT do
				angle = -DRAGON_ANGLE_LIMIT + (os.clock() - spawnTime) * DRAGON_SPEED
				dragon:SetWorldTransform(GetDragonTransform(pathPeak, angle))
				Task.Wait()
			end

			dragon:Destroy()
			dragon = nil
		end)

		-- Dragon always throws the rock at 0.0 degrees
		currentTasks[3] = Task.Spawn(function()
			Task.Wait(DRAGON_ANGLE_LIMIT / DRAGON_SPEED)
			API_P.CreateProjectile(pathPeak, targetPosition, ROCK_SPEED, 1.0, PROJECTILE_TEMPLATE)
		end)

		local impactDelay = DRAGON_ANGLE_LIMIT / DRAGON_SPEED + API_P.GetTravelTime(pathPeak, targetPosition, ROCK_SPEED)
		Task.Wait(impactDelay - TELEGRAPH_DURATION)
		telegraph = World.SpawnAsset(TELEGRAPH_TEMPLATE, {position = targetPosition})
		Task.Wait(TELEGRAPH_DURATION)
		telegraph:Destroy()
		telegraph = nil
		World.SpawnAsset(ROCK_IMPACT_TEMPLATE, {position = targetPosition})
	end)
end

function ResetRocks()
	for _, task in pairs(currentTasks) do
		task:Cancel()
	end

	if dragon then
		dragon:Destroy()
		dragon = nil
	end

	if telegraph then
		telegraph:Destroy()
		telegraph = nil
	end

	currentTasks = {}
	_G.boss3Rocks = {}
end

API_RE.Connect("CD", OnCallDragon)
API_RE.Connect("Boss3Reset", ResetRocks)		-- This is kind of a hack, in that it will break if we give this task to another NPC
API_RE.Connect("Boss3Died", ResetRocks)

API_NPC.RegisterTaskClient("boss3_call_dragon", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
