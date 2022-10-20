local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_ID = require(script:GetCustomProperty("API_ID"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local HAND_HELPER_TEMPLATE = script:GetCustomProperty("HandHelperTemplate")
local BEAM_TEMPLATE = script:GetCustomProperty("BeamTemplate")
local PILLARS_GROUP = script:GetCustomProperty("PillarsGroup"):WaitForObject()

local beam = nil
local currentTask = nil
local isBrawn = false

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("1hand_melee_thrust")
	currentTask = Task.Spawn(function()
		Task.Wait(0.38)
		animatedMesh.playbackRateMultiplier = 0.0
	end)
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
	animatedMesh.playbackRateMultiplier = 1.0

	if isBrawn then
		Task.Spawn(function()
			animatedMesh.playbackRateMultiplier = 0.4
			Task.Wait(20.0)
			
			if Object.IsValid(animatedMesh) then
				animatedMesh.playbackRateMultiplier = 1.0
			end
		end)
	end

	if beam then
		beam:Destroy()
		beam = nil
	end

	if currentTask then
		currentTask:Cancel()
		currentTask = nil
	end
end

function OnDrawPower(npcId, pillarIndex)
	local npc = API_ID.GetObjectFromId(npcId)
	local animatedMesh = npc:FindDescendantByType("AnimatedMesh")
	isBrawn = (pillarIndex == 1)
	local handHelper = World.SpawnAsset(HAND_HELPER_TEMPLATE)
	animatedMesh:AttachCoreObject(handHelper, "right_prop")

	currentTask = Task.Spawn(function()
		Task.Wait(0.45)
		local pillarPosition = PILLARS_GROUP:GetChildren()[pillarIndex]:GetWorldPosition()
		local handPosition = handHelper:GetWorldPosition()
		local rotation = Rotation.New(handHelper:GetWorldPosition() - pillarPosition, Vector3.UP) * Rotation.New(0.0, -90.0, 0.0)
		beam = World.SpawnAsset(BEAM_TEMPLATE, {position = pillarPosition, rotation = rotation})
		beam:SetSmartProperty("Beam Length", (handPosition - pillarPosition).size / 500.0)
	end)
end

API_RE.Connect("DP", OnDrawPower)

API_NPC.RegisterTaskClient("boss4_draw_power", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
