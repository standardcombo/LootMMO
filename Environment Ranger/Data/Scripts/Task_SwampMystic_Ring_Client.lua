local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local TELEGRAPH_TEMPLATE = script:GetCustomProperty("TelegraphTemplate")

local INNER_RADIUS = 250.0
local OUTER_RADIUS = 1200.0
local DELAY = 2.5

local telegraphs = {}

function OnRing(npc, target)
	telegraphs[npc] = World.SpawnAsset(TELEGRAPH_TEMPLATE, {position = target, scale = Vector3.New(OUTER_RADIUS / 100.0)})
	telegraphs[npc]:SetSmartProperty("Stroke Width", 1.0 - INNER_RADIUS / OUTER_RADIUS)
	Task.Wait(DELAY)
	telegraphs[npc]:Destroy()
	telegraphs[npc] = nil
end

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("unarmed_magic_up")
	animatedMesh.playbackRateMultiplier = 0.5
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
	animatedMesh.playbackRateMultiplier = 1.0
end

API_RE.Connect("SMR", OnRing)

API_NPC.RegisterTaskClient("swampmystic_ring", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
