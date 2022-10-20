local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local TELEGRAPH_TEMPLATE = script:GetCustomProperty("TelegraphTemplate")

local RADIUS = 1200.0
local DELAYS = {5.0, 4.0, 3.5, 3.0}


function OnOvercharge(pylon)
	local telegraph = World.SpawnAsset(TELEGRAPH_TEMPLATE, {position = pylon:GetWorldPosition(), scale = Vector3.New(RADIUS / 100.0)})
	Task.Wait(DELAYS[API_DS.GetDifficultyLevel()])
	telegraph:Destroy()
end

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("2hand_staff_magic_up")
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
end

API_RE.Connect("SAO", OnOvercharge)

API_NPC.RegisterTaskClient("stoneangel_overcharge", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
