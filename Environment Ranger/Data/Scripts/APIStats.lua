local STAT_COEFFICIENTS =
{
	Defense = 250.0,
	CritChance = 250.0,
	CDR = 250.0,
	Haste = 250.0,
}


local API = {}

-- For stats like defense that reduce a duration or value
function ConvertStatToMultiplier(statName, value)
	if STAT_COEFFICIENTS[statName] then
		return 1.0 / (1.0 + value / STAT_COEFFICIENTS[statName])
	end
end

-- For stats like crit that dictate a chance that should approach 100%
function ConvertStatToChance(statName, value)
	if STAT_COEFFICIENTS[statName] then
		return 1.0 - 1.0 / (1.0 + value / STAT_COEFFICIENTS[statName])
	end
end

function API.ConvertStatToEffectivePercent(statName, value)
	local multiplier = ConvertStatToMultiplier(statName, value)

	if multiplier then
		-- We truncate all values to a single decimal place.
		return (1000.0 * (1.0 - multiplier)) // 10
	end
end

function API.GetPlayerStatMultiplier(player, statName)
	if STAT_COEFFICIENTS[statName] then
		local value = 0.0

		if Environment.IsClient() then
			if player.clientUserData.statSheet then
				value = player.clientUserData.statSheet:GetStatTotalValue(statName)
			end
		else
			value = player.serverUserData.statSheet:GetStatTotalValue(statName)
		end

		return ConvertStatToMultiplier(statName, value)
	end
end

function API.GetPlayerStatChance(player, statName)
	if STAT_COEFFICIENTS[statName] then
		local value = 0.0

		if Environment.IsClient() then
			if player.clientUserData.statSheet then
				value = player.clientUserData.statSheet:GetStatTotalValue(statName)
			end
		else
			value = player.serverUserData.statSheet:GetStatTotalValue(statName)
		end

		return ConvertStatToChance(statName, value)
	end
end

return API
