local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local TELEGRAPH_TEMPLATE = script:GetCustomProperty("TelegraphTemplate")

local telegraphs = {}

function OnRegenerateStarted(npc, target)
	telegraphs[npc] = World.SpawnAsset(TELEGRAPH_TEMPLATE, {position = target})
	Task.Wait(5.0)

	if telegraphs[npc] then
		telegraphs[npc]:Destroy()
		telegraphs[npc] = nil
	end
end

function OnRegenerateInterupted(npc)
	if telegraphs[npc] then
		telegraphs[npc]:Destroy()
		telegraphs[npc] = nil
	end
end

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("2hand_staff_magic_up")
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
end

API_RE.Connect("RS", OnRegenerateStarted)
API_RE.Connect("RI", OnRegenerateInterupted)

API_NPC.RegisterTaskClient("small_caster_elemental_regenerate", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
