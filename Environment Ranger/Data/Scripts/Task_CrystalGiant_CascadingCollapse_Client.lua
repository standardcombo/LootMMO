local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local TELEGRAPH_TEMPLATE = script:GetCustomProperty("TelegraphTemplate")

local DURATIONS = {20.0, 16.0, 12.0, 8.0}
local DAMAGE_DELAYS = {3.0, 2.5, 2.0, 1.5}
local COLLAPSE_RANGE = 3500.0
local WEDGE_COUNT = 12

function OnCascadingCollapse(anchorPosition, seed)
	local stream = RandomStream.New(seed)
	local startAngle = stream:GetNumber(0.0, 360.0)
	local duration = DURATIONS[API_DS.GetDifficultyLevel()]
	local wedgeAngleWidth = 360.0 / WEDGE_COUNT

	for i = 1, WEDGE_COUNT do
		Task.Spawn(function()
			local rotation = Rotation.New(0.0, 0.0, startAngle + (i - 1) * wedgeAngleWidth)
			Task.Wait((i - 1) * duration / (WEDGE_COUNT - 1))
			local telegraph = World.SpawnAsset(TELEGRAPH_TEMPLATE, {position = anchorPosition, rotation = rotation, scale = Vector3.New(COLLAPSE_RANGE / 100.0)})
			--telegraph:SetSmartProperty("Slice Size", wedgeAngleWidth)
			--telegraph:SetSmartProperty("Slice Offset", 90.0 - wedgeAngleWidth / 2.0)
			Task.Wait(DAMAGE_DELAYS[API_DS.GetDifficultyLevel()])
			telegraph:Destroy()
		end)
	end
end

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("unarmed_stomp")
	animatedMesh.playbackRateMultiplier = 0.5
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
	animatedMesh.playbackRateMultiplier = 1.0
end

API_RE.Connect("CC", OnCascadingCollapse)

API_NPC.RegisterTaskClient("crystalgiant_cascadingcollapse", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
