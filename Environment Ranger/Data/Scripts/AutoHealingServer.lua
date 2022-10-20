local API_D = require(script:GetCustomProperty("APIDamage"))
local API_NPC = require(script:GetCustomProperty("API_NPC"))

local HEAL_PERIOD = 2.0
local HEAL_DELAY_AFTER_COMBAT = 2.0
local HEAL_AMOUNT = 0.3		-- Percent of total health

local nextHealTimes = {}	-- Player -> float
local playerCombats = {}	-- Player -> bool

function Tick(deltaTime)
	local t = time()

	for _, player in pairs(Game.GetPlayers()) do
		local inCombat = API_NPC.IsPlayerInCombat(player)

		if not player.isDead and not inCombat then
			if playerCombats[player] then	-- Did we just exit combat
				nextHealTimes[player] = t + HEAL_DELAY_AFTER_COMBAT
			end

			if not nextHealTimes[player] or nextHealTimes[player] <= t then
				if player.hitPoints < player.maxHitPoints then
					API_D.ApplyHealing(nil, player, player.maxHitPoints * HEAL_AMOUNT, API_D.TAG_PERIODIC | API_D.TAG_HIDDEN)
					nextHealTimes[player] = t + HEAL_PERIOD
				end			
			end
		end

		playerCombats[player] = inCombat
	end
end
