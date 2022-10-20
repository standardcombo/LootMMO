local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local TELEGRAPH_TEMPLATE = script:GetCustomProperty("TelegraphTemplate")

local WHIRL_RANGES = {180.0, 200.0, 250.0, 300.0}
local DAMAGE_DELAY = 2.0

function OnTaskStart(npc, animatedMesh)
	local telegraphScale = Vector3.New(WHIRL_RANGES[API_DS.GetDifficultyLevel()] / 100.0)
	local telegraph = World.SpawnAsset(TELEGRAPH_TEMPLATE, {parent = npc, scale = telegraphScale})
	animatedMesh:PlayAnimation("1hand_melee_thrust")
	
	Task.Spawn(function()
		Task.Wait(DAMAGE_DELAY)
		telegraph:Destroy()
	end)
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
end

API_NPC.RegisterTaskClient("swampwarrior_whirl", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
