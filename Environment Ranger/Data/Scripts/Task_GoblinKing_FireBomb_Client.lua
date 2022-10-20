local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_P = require(script:GetCustomProperty("APIProjectile"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local PROJECTILE_TEMPLATE = script:GetCustomProperty("ProjectileTemplate")
local TELEGRAPH_TEMPLATE = script:GetCustomProperty("TelegraphTemplate")

local TELEGRAPH_RADIUS = 1000.0

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("unarmed_throw")
end

function OnTaskEnd(npc, animatedMesh)
	animatedMesh:StopAnimations()
end

function OnFireBomb(npc, target)
	local telegraphScale = Vector3.New(TELEGRAPH_RADIUS / 100.0)
	local telegraph = World.SpawnAsset(TELEGRAPH_TEMPLATE, {position = target, scale = telegraphScale})
	local offset = npc:GetWorldPosition() - target
	offset.z = 0.0
	local horizontalSpeed = offset.size / 5.0
	API_P.CreateProjectile(npc, target, horizontalSpeed, 1.0, PROJECTILE_TEMPLATE)
end

API_RE.Connect("FB", OnFireBomb)

API_NPC.RegisterTaskClient("goblinking_firebomb", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
