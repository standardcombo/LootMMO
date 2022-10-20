local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local TELEGRAPH_TEMPLATE = script:GetCustomProperty("TelegraphTemplate")

function OnGraspingRoots(target)
	local telegraph = World.SpawnAsset(TELEGRAPH_TEMPLATE, {position = target})
	Task.Wait(2.0)
	telegraph:Destroy()
end

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("2hand_staff_magic_up")
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
end

API_RE.Connect("GR", OnGraspingRoots)

API_NPC.RegisterTaskClient("small_caster_elemental_grasping_roots", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
