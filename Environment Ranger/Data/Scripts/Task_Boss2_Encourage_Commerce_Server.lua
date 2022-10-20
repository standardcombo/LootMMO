local API_NPC = require(script:GetCustomProperty("API_NPC"))
local API_D = require(script:GetCustomProperty("APIDamage"))
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local STALLS = {
	script:GetCustomProperty("YellowStar"):WaitForObject(),
	script:GetCustomProperty("RedSquare"):WaitForObject(),
	script:GetCustomProperty("BlueTriangle"):WaitForObject(),
	script:GetCustomProperty("VioletCircle"):WaitForObject()
}

local RANGE = 0.0
local DURATION = 12.0
local COOLDOWN = 45.0
local DAMAGE = 60.0

local SHOP_RADIUS = 768.0

local statusEffectNames = {"Yellow Star", "Red Square", "Blue Triangle", "Violet Circle"}
local taggedPlayers = {}		-- NPC -> (player -> table with shape index and status effect index)

function GetPriority(npc, taskHistory)
	if API_NPC.GetHealthFraction(npc) > 0.75 then
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
		Task.Spawn(function()
			taggedPlayers[npc] = {}

			for _, player in pairs(Game.GetPlayers()) do
				if not player.isDead then
					local shapeIndex = math.random(4)
					local statusEffectIndex = API_SE.ApplyStatusEffect(npc, player, API_SE.STATUS_EFFECT_DEFINITIONS[statusEffectNames[shapeIndex]].id)

					if statusEffectIndex then
						taggedPlayers[npc][player] = {shapeIndex = shapeIndex, statusEffectIndex = statusEffectIndex}
					end
				end
			end

			local startTime = time()

			while time() - startTime < DURATION do
				for player, data in pairs(taggedPlayers[npc]) do
					if Object.IsValid(player) then
						local distance = (STALLS[data.shapeIndex]:GetWorldPosition() - player:GetWorldPosition()).size

						if distance <= SHOP_RADIUS then
							taggedPlayers[npc][player] = nil
							API_SE.RemoveStatusEffect(player, data.statusEffectIndex)
						end
					else
						taggedPlayers[npc][player] = nil
					end
				end

				Task.Wait()
			end

			for player, data in pairs(taggedPlayers[npc]) do
				if Object.IsValid(player) then
					API_SE.RemoveStatusEffect(player, data.statusEffectIndex)
					API_D.ApplyDamage(npc, player, DAMAGE)
				end
			end

			taggedPlayers[npc] = nil
		end)
	end
end

API_NPC.RegisterTaskServer("boss2_encourage_commerce", RANGE, COOLDOWN, GetPriority, OnTaskStart, OnTaskEnd)
