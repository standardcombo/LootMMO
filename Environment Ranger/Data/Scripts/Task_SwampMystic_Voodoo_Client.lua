local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_P = require(script:GetCustomProperty("APIProjectile"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local PROJECTILE_TEMPLATE = script:GetCustomProperty("ProjectileTemplate")

local PROJECTILE_SPEED = 1500.0

local telegraphs = {}

function OnVoodooBolt(npc, target)
	if Object.IsValid(target) then
		API_P.CreateProjectile(npc, target, PROJECTILE_SPEED, 0.4, PROJECTILE_TEMPLATE)
	end
end

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("unarmed_magic_up", {shouldLoop = true})
	animatedMesh.playbackRateMultiplier = 0.5
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
	animatedMesh.playbackRateMultiplier = 1.0
end

API_RE.Connect("SMVB", OnVoodooBolt)

API_NPC.RegisterTaskClient("swampmystic_voodoo", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
