local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local TELEGRAPH_TEMPLATE = script:GetCustomProperty("TelegraphTemplate")

local METEOR_RADIUS	= 350.0

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("2hand_staff_magic_up")
end

function OnTaskEnd(npc, animatedMesh)
	animatedMesh:StopAnimations()
end

function OnMeteor(targetPosition)
	local telegraphScale = Vector3.New(METEOR_RADIUS / 350.0)
	local telegraph = World.SpawnAsset(TELEGRAPH_TEMPLATE, {position = targetPosition, scale = telegraphScale})
	Task.Wait(5.5)
	telegraph:Destroy()
end

API_RE.Connect("WM", OnMeteor)

API_NPC.RegisterTaskClient("wizard_meteor", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
