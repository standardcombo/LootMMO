local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local SUMMON_TEMPLATES = {
	script:GetCustomProperty("SummonTemplate1"),		-- Guard
	script:GetCustomProperty("SummonTemplate2"),		-- Archer
	script:GetCustomProperty("SummonTemplate3")			-- Ice Wizard
}
local SPAWN_GROUP = script:GetCustomProperty("SpawnGroup"):WaitForObject()
local SPAWN_POINTS = {
	Left = SPAWN_GROUP:FindChildByName("Left"),
	Right = SPAWN_GROUP:FindChildByName("Right")
}

local WAVES = {
	{Left = 1, Right = 1},
	{Left = 2, Right = 2},
	{Left = 1, Right = 3},
	{Left = 3, Right = 3}
}

local RANGE = 0.0
local COOLDOWN = 35.0

local nextWaveIndex = 1

function GetPriority(npc, taskHistory)
	if API_NPC.GetHealthFraction(npc) > 0.95 then
		return 0.0
	else
		return 800.0
	end
end

function OnTaskStart(npc, threatTable)
	local leftTemplate = SUMMON_TEMPLATES[WAVES[nextWaveIndex]["Left"]]
	local rightTemplate = SUMMON_TEMPLATES[WAVES[nextWaveIndex]["Right"]]
	API_NPC.SpawnNPC(leftTemplate, npc, SPAWN_POINTS["Left"]:GetWorldPosition(), SPAWN_POINTS["Left"]:GetWorldRotation())
	API_NPC.SpawnNPC(rightTemplate, npc, SPAWN_POINTS["Right"]:GetWorldPosition(), SPAWN_POINTS["Right"]:GetWorldRotation())
	nextWaveIndex = nextWaveIndex % #WAVES + 1

	Task.Spawn(function()
		Task.Wait()	-- Need a frame for the new npcs to be registered

		while API_NPC.GetNumAwakeNPCsInPull(npc.parent) > 1 do
			Task.Wait()
		end

		if not API_NPC.IsDead(npc) and not API_NPC.IsAsleep(npc) then
			API_SE.ApplyStatusEffect(npc, npc, API_SE.STATUS_EFFECT_DEFINITIONS["Anger"].id)
		end
	end)

	return 0.5
end

function ResetNextWave()
	nextWaveIndex = 1
end

function OnTaskEnd(npc, interrupted)
end

API_RE.Connect("Boss3Reset", ResetNextWave)
API_RE.Connect("Boss3Died", ResetNextWave)

API_NPC.RegisterTaskServer("boss3_summon_reinforcements", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
