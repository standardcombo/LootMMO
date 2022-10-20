local API_D = require(script:GetCustomProperty("APIDamage"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local REWIND_DURATION = 5.0
local COOLDOWN = 25.0

local playerDamageHistories = {}		-- Player -> table (time -> amount)
local playerActivationTimes = {}

local data = {}

data.name = "Wound Reversal"
data.description = script:GetCustomProperty("Description")
data.icon = script:GetCustomProperty("Icon")

function data.onGain(player)
	playerDamageHistories[player] = {}
	playerActivationTimes[player] = 0.0
end

function data.onLose(player)
	playerDamageHistories[player] = nil
	playerActivationTimes[player] = nil
end

function OnDamageDone(sourceCharacter, targetCharacter, effectiveAmount, overkill, tags)
	if playerDamageHistories[targetCharacter] then
		playerDamageHistories[targetCharacter][time()] = effectiveAmount
	end
end

function GetDamageHistorySum(player)
	local sum = 0.0

	for _, amount in pairs(playerDamageHistories[player]) do
		sum = sum + amount
	end

	return sum
end

function Activate(player)
	playerActivationTimes[player] = time()
	API_D.ApplyHealing(player, player, GetDamageHistorySum(player))
end

-- Called like a tick
function Tick()
	-- Prune old entries
	local currentTime = time()

	for _, history in pairs(playerDamageHistories) do
		for t, _ in pairs(history) do
			if t < currentTime - REWIND_DURATION then
				history[t] = nil
			end
		end
	end

	-- See if it should trigger
	for player, _ in pairs(playerDamageHistories) do
		if Object.IsValid(player) then
			if playerActivationTimes[player] + COOLDOWN <= time() then
				if GetDamageHistorySum(player) >= player.maxHitPoints * 0.2 then
					Activate(player)
				end
			end
		end
	end
end

API_RE.Connect("DamageDone", OnDamageDone)

local tickTask = Task.Spawn(Tick)
tickTask.repeatCount = -1

return data
