
local MapBuilder = require(script:GetCustomProperty("MapBuilder"))
local container = script.parent
--[[
local width = 6
local height = 6
local mapData = [[
	111111
	100001
	101101
	1S1101
	100001
	111111
]]
----[[
local width = 8
local height = 8
local mapData = [[
	11111111
	10000001
	10011001
	11S11011
	11000011
	11001111
	11011111
	11111111
]]
--[[
local width = 9
local height = 9
local mapData = [[
	111111111
	100000101
	111000101
	100000001
	10S010001
	100000001
	101000111
	101000001
	111111111
]]

-- Build the dungeon
MapBuilder.Build({
	map = mapData, 
	parent = container, 
	width = width, 
	height = height, 
	tileSize = 800, 
	scale = 1
})

-- Spawn Players
Task.Wait()
Events.Broadcast("SpawnPlayers")

