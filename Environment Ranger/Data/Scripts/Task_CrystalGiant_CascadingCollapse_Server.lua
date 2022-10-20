local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local RANGE = 0.0
local COOLDOWN = 30.0
local DURATIONS = {20.0, 16.0, 12.0, 8.0}
local DAMAGE_DELAYS = {3.0, 2.5, 2.0, 1.5}
local COLLAPSE_RANGE = 3500.0
local WEDGE_COUNT = 12
local DAMAGE = 47.0

function GetPriority(npc, taskHistory)
	if API_NPC.GetHealthFraction(npc) > 0.85 then
		return 0.0
	else
		return 2.0
	end
end

function OnTaskStart(npc, threatTable)
	return 1.5
end

function OnTaskEnd(npc, interrupted)
	if not interrupted then
		local stream = RandomStream.New()
		local anchorPosition = npc:GetWorldPosition()

		API_RE.BroadcastToAllPlayers("CC", anchorPosition, stream:GetInitialSeed())

		local startAngle = stream:GetNumber(0.0, 360.0)
		local duration = DURATIONS[API_DS.GetDifficultyLevel()]
		local wedgeAngleWidth = 360.0 / WEDGE_COUNT

		for i = 1, WEDGE_COUNT do
			Task.Spawn(function()
				local rotation = Rotation.New(0.0, 0.0, startAngle + (i - 1) * wedgeAngleWidth)
				Task.Wait((i - 1) * duration / (WEDGE_COUNT - 1) + DAMAGE_DELAYS[API_DS.GetDifficultyLevel()])

				for _, player in pairs(Game.FindPlayersInSphere(anchorPosition, COLLAPSE_RANGE, {ignoreDead = true})) do
					local offset = player:GetWorldPosition() - anchorPosition
					offset.z = 0.0
					local dot = offset:GetNormalized() .. (rotation * Vector3.FORWARD)

					if dot > math.cos(math.rad(wedgeAngleWidth / 2.0)) then
						API_D.ApplyDamage(npc, player, DAMAGE, API_D.TAG_AOE)
					end
				end
			end)
		end
	end
end

API_NPC.RegisterTaskServer("crystalgiant_cascadingcollapse", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
