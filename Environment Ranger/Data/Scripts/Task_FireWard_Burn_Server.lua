local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))

local RANGE = 0.0
local COOLDOWN = 0.0
local DAMAGE = 35.0
local FIRE_RADIUS = 150.0
local FIRE_LENGTH = 600.0

function GetPriority(npc, taskHistory)
	return 1.0
end

function OnTaskStart(npc, threatTable)
	return 1.0
end

function OnTaskEnd(npc, interrupted)
	if not interrupted then
		for _, player in pairs(Game.FindPlayersInSphere(npc:GetWorldPosition(), FIRE_LENGTH, {ignoreDead = true})) do
			local inverseTransform = npc:GetWorldTransform():GetInverse()
			inverseTransform:SetScale(Vector3.ONE)
			local localOffset = inverseTransform:TransformPosition(player:GetWorldPosition() - Vector3.ZERO * 100.0)

			if math.abs(localOffset.y) < FIRE_LENGTH then
				localOffset.y = 0.0
				if localOffset.size < FIRE_RADIUS then
					API_D.ApplyDamage(npc, player, DAMAGE, API_D.TAG_AOE)
				end
			end
		end
	end
end

API_NPC.RegisterTaskServer("fireward_burn", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
