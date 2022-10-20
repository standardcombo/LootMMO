local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_P = require(script:GetCustomProperty("APIProjectile"))
local API_K = require(script:GetCustomProperty("APIKnockback"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local DRAGON_PATHS = script:GetCustomProperty("DragonPaths"):WaitForObject()
local GRID_CORNERS = script:GetCustomProperty("GridCorners"):WaitForObject()
local ROCK_TEMPLATE = script:GetCustomProperty("RockTemplate")

local RANGE = 0.0
local COOLDOWN = 25.0					-- This must be higher than DRAGON_ANGLE_LIMIT / DRAGON_SPEED because this isn't written to handle two dragons
local DRAGON_ANGLE_LIMIT = 45.0
local DRAGON_SPEED = 4.0				-- Degrees/second
local DAMAGE = 70.0
local ROCK_SPEED = 2000.0
local IMPACT_RADIUS = 500.0
local GRID_SIZE = Vector2.New(3, 4)		-- Because of helper position, valid spots go all the way down to 0 here

local gridOrigin = GRID_CORNERS:FindChildByName("Origin"):GetWorldPosition()
local gridStepX = (GRID_CORNERS:FindChildByName("X"):GetWorldPosition() - gridOrigin) / GRID_SIZE.x
local gridStepY = (GRID_CORNERS:FindChildByName("Y"):GetWorldPosition() - gridOrigin) / GRID_SIZE.y

_G.boss3Rocks = {}	-- int -> CoreObject
local currentTask = nil					-- Not using a table because we don't always have the npc, and it really shouldn't matter

function GetPriority(npc, taskHistory)
	return 2.0
end

function OnTaskStart(npc, threatTable)
	function GetRocksIndex(coordinate)
		-- We add 5 because we go a bit off the ends of this.
		return coordinate.x + coordinate.y * (GRID_SIZE.x + 5)
	end

	local stream = RandomStream.New()
	API_RE.BroadcastToAllPlayers("CD", stream:GetInitialSeed())

	currentTask = Task.Spawn(function()
		local targetCoordinate = nil

		while not targetCoordinate or _G.boss3Rocks[GetRocksIndex(targetCoordinate)] do
			targetCoordinate = Vector2.New(stream:GetInteger(0, GRID_SIZE.x), stream:GetInteger(0, GRID_SIZE.y))
		end

		local targetPosition = gridOrigin + targetCoordinate.x * gridStepX + targetCoordinate.y * gridStepY

		-- These are actually just the peaks. We do an arc of a circle.
		local pathGroups = DRAGON_PATHS:GetChildren()
		local pathPeak = pathGroups[stream:GetInteger(1, #pathGroups)]

		-- Dragon always throws the rock at 0.0 degrees
		local impactDelay = DRAGON_ANGLE_LIMIT / DRAGON_SPEED + API_P.GetTravelTime(pathPeak, targetPosition, ROCK_SPEED)
		Task.Wait(impactDelay)
		API_D.ApplyAreaDamage(npc, targetPosition, IMPACT_RADIUS, DAMAGE, false, API_D.TAG_AOE)
		API_K.AreaKnockAway(targetPosition, IMPACT_RADIUS, 110.0)

		for _, hitNpc in pairs(API_NPC.GetAwakeNPCsInSphere(targetPosition, IMPACT_RADIUS)) do
			API_SE.ApplyStatusEffect(npc, hitNpc, API_SE.STATUS_EFFECT_DEFINITIONS["Crushed"].id)
		end

		local rockRotation = Rotation.New(0.0, -90.0, math.random() * 360.0)
		_G.boss3Rocks[GetRocksIndex(targetCoordinate)] = World.SpawnAsset(ROCK_TEMPLATE, {position = targetPosition, rotation = rockRotation})
	end)

	return 0.5
end

function OnTaskEnd(npc, interrupted)
end

function ResetRocks()
	if currentTask then
		currentTask:Cancel()
		currentTask = nil
	end

	for _, rock in pairs(_G.boss3Rocks) do
		rock:Destroy()
	end

	_G.boss3Rocks = {}
end

API_RE.Connect("Boss3Reset", ResetRocks)		-- This is kind of a hack, in that it will break if we give this task to another NPC
API_RE.Connect("Boss3Died", ResetRocks)

API_NPC.RegisterTaskServer("boss3_call_dragon", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
