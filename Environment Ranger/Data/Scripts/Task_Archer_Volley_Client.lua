local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local TELEGRAPH_TEMPLATE = script:GetCustomProperty("TelegraphTemplate")

local VOLLEY_RADIUS	= 140.0

local currentTasks = {}

function OnTaskStart(npc, animatedMesh)
	currentTasks[npc] = Task.Spawn(function()
		for i = 1, 3 do
			Task.Wait(0.3)
			animatedMesh:PlayAnimation("2hand_rifle_shoot")
		end
	end)
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	if interrupted and currentTasks[npc] then
		currentTasks[npc]:Cancel()
	end

	currentTasks[npc] = nil
	animatedMesh:StopAnimations()
end

function OnVolley(targetPosition)
	local telegraphScale = Vector3.New(VOLLEY_RADIUS / 100.0)
	local telegraph = World.SpawnAsset(TELEGRAPH_TEMPLATE, {position = targetPosition, scale = telegraphScale})
	Task.Wait(4.5)
	telegraph:Destroy()
end

API_RE.Connect("AV", OnVolley)

API_NPC.RegisterTaskClient("archer_volley", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
