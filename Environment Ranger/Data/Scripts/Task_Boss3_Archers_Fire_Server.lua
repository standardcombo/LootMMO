local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local GRID_CORNERS = script:GetCustomProperty("GridCorners"):WaitForObject()

local RANGE = 0.0
local COOLDOWN = 30.0
local DAMAGE_RATE = 10.0
local FIRE_RADIUS = 500.0
local GRID_SIZE = Vector2.New(3, 4)		-- Because of helper position, valid spots go all the way down to 0 here
local INITIAL_DELAY = 3.0
local FIRE_TICKS = 4					-- One per second
local FIRE_MOVE_RATE = 0.7				-- Steps per second

-- Each fire is one half grid from the previous, and we start a full unit past the bounds of the grid so there are no safe spots
local gridOrigin = GRID_CORNERS:FindChildByName("Origin"):GetWorldPosition()
local gridStepX = (GRID_CORNERS:FindChildByName("X"):GetWorldPosition() - gridOrigin) / GRID_SIZE.x
local gridStepY = (GRID_CORNERS:FindChildByName("Y"):GetWorldPosition() - gridOrigin) / GRID_SIZE.y

function GetPriority(npc, taskHistory)
	local rockCount = 0

	for _, _ in pairs(_G.boss3Rocks) do
		rockCount = rockCount + 1
	end

	if rockCount > 1 then
		return 0.3			-- Low priority for somewhat random timing
	else
		return 0.0
	end
end

function OnTaskStart(npc, threatTable)
	function GetRocksIndex(coordinate)
		-- We add 5 because we go a bit off the ends of this.
		return coordinate.x + coordinate.y * (GRID_SIZE.x + 5)
	end

	local stream = RandomStream.New()
	API_RE.BroadcastToAllPlayers("AF", stream:GetInitialSeed())

	Task.Spawn(function()
		function FireLine(startCoordinate, direction, stepCount)
			for i = 0, stepCount do
				local coordinate = startCoordinate + direction * i / 2
				local position = gridOrigin + gridStepX * coordinate.x + gridStepY * coordinate.y

				if stepCount % 2 == 0 and _G.boss3Rocks[GetRocksIndex(coordinate)] then
					break
				end

				Task.Spawn(function()
					Task.Wait(i / FIRE_MOVE_RATE)
					local startTime = time()

					for j = 1, FIRE_TICKS do
						Task.Wait(1.0)
						API_D.ApplyAreaDamage(nil, position, FIRE_RADIUS, DAMAGE_RATE, false, API_D.TAG_AOE)
					end
				end)
			end
		end

		Task.Wait(INITIAL_DELAY)
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

	return 0.5
end

function OnTaskEnd(npc, interrupted)
end

API_NPC.RegisterTaskServer("boss3_archers_fire", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
