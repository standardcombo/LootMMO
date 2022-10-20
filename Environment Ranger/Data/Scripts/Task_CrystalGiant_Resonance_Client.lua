local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local REVERB_TEMPLATE = script:GetCustomProperty("ReverbTemplate")

local REVERB_COUNTS = {3, 6, 9, 12}
local REVERB_RADIUS = 250.0
local DURATION = 22.0
local SPEED = 350.0

function OnResonance(anchorPosition, seed)
	local stream = RandomStream.New(seed)

	function GetBounceInfo(position, direction)
		local startPosition = position + direction * 10.0
		local endPosition = position + direction * 10000.0
		local hitResult = World.Raycast(startPosition, endPosition, {ignorePlayers = true})

		if hitResult then
			endPosition = hitResult:GetImpactPosition()
			local endNormal = hitResult:GetImpactNormal()
			endNormal.z = 0.0
			endNormal = endNormal:GetNormalized()
			local newDirection = direction - 2.0 * endNormal * (direction .. endNormal)
			return endPosition, newDirection
		else
			return endPosition, direction
		end
	end

	for i = 1, REVERB_COUNTS[API_DS.GetDifficultyLevel()] do
		local bouncePosition = anchorPosition
		local direction = Rotation.New(0.0, 0.0, 60.0 + stream:GetNumber(0.0, 240.0)) * Vector3.FORWARD 
		local startTime = time()
		local bounceTime = startTime
		local nextBouncePosition, nextDirection = GetBounceInfo(bouncePosition, direction)
		local nextBounceTime = (nextBouncePosition - bouncePosition).size / SPEED + bounceTime

		Task.Spawn(function()
			local reverb = World.SpawnAsset(REVERB_TEMPLATE, {position = anchorPosition, scale = Vector3.New(REVERB_RADIUS / 100.0)})

			while time() < startTime + DURATION do
				if time() >= nextBounceTime then
					bouncePosition = nextBouncePosition
					direction = nextDirection
					bounceTime = nextBounceTime
					nextBouncePosition, nextDirection = GetBounceInfo(bouncePosition, direction)
					nextBounceTime = (nextBouncePosition - bouncePosition).size / SPEED + bounceTime
				end

				local t = time() - bounceTime
				local position = bouncePosition + direction * t * SPEED
				reverb:SetWorldPosition(position)
				Task.Wait()
			end

			reverb:Destroy()
		end)
	end
end

function OnTaskStart(npc, animatedMesh)
	animatedMesh:PlayAnimation("2hand_staff_magic_up")
	animatedMesh.playbackRateMultiplier = 0.5
end

function OnTaskEnd(npc, animatedMesh, interrupted)
	animatedMesh:StopAnimations()
	animatedMesh.playbackRateMultiplier = 1.0
end

API_RE.Connect("CGR", OnResonance)

API_NPC.RegisterTaskClient("crystalgiant_resonance", EFFECT_TEMPLATE, OnTaskStart, OnTaskEnd)
