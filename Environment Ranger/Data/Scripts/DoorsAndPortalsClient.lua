-- This could be many scripts, but instead I'm hardcoding it here to have fewer scripts.
local ROOT = script:GetCustomProperty("Root"):WaitForObject()

local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local BOSS1_GATE = ROOT:GetCustomProperty("Boss1Gate"):WaitForObject()
local BOSS2_GATE = ROOT:GetCustomProperty("Boss2Gate"):WaitForObject()
local BOSS3_GATE = ROOT:GetCustomProperty("Boss3Gate"):WaitForObject()
local BOSS4_GATE = ROOT:GetCustomProperty("Boss4Gate"):WaitForObject()
local BOSS4_OBJECTS = ROOT:GetCustomProperty("Boss4Objects"):WaitForObject()

local currentTasks = {}
local movementSounds = {}

function MoveGate(gate)
	if currentTasks[gate] then
		if movementSounds[gate] then
			movementSounds[gate]:Destroy()
		end
		
		currentTasks[gate]:Cancel()
	end

	currentTasks[gate] = Task.Spawn(function()
		local doorMovementSoundTemplate = gate:GetCustomProperty("DoorMovementSoundTemplate")
		movementSounds[gate] = World.SpawnAsset(doorMovementSoundTemplate, {parent = gate})
		Task.Wait(2.5)
		movementSounds[gate]:Destroy()
		currentTasks[gate] = nil
	end)
end

function OnBossPulled(bossNumber)
	MoveGate(BOSS4_OBJECTS)
end

function OnBossReset(bossNumber)
	MoveGate(BOSS4_OBJECTS)
end

function OnBossDied(bossNumber)
	if bossNumber == 1 then
		MoveGate(BOSS1_GATE)
	elseif bossNumber == 2 then
		MoveGate(BOSS2_GATE)
	elseif bossNumber == 2.5 then
		MoveGate(BOSS3_GATE)
	elseif bossNumber == 3 then
		MoveGate(BOSS4_GATE)
	end
end

API_RE.Connect("Boss4Pulled", OnBossPulled, 4)
API_RE.Connect("Boss4Reset", OnBossReset, 4)

API_RE.Connect("Boss1Died", OnBossDied, 1)
API_RE.Connect("Boss2Died", OnBossDied, 2)
API_RE.Connect("Boss2.5Died", OnBossDied, 2.5)
API_RE.Connect("Boss3Died", OnBossDied, 3)
