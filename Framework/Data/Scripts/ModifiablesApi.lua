local LOOT_STATS_MODIFIABLES = require(script:GetCustomProperty('Loot_Stats_Modifiables'))

local API = {}
_G['Ability.Modifiers'] = API

API.MAX_WIS = 172
API.MAX_AGI = 172
API.MAX_VIT = 172
API.MAX_SP = 156

function API.GetModifiable(modId)
    return LOOT_STATS_MODIFIABLES[modId]
end

function API.SetupNewModifier(modId)
    local modifierTable = API.GetModifiable(modId)
    if not modifierTable then
        warn(modId .. ' not found')
        return
    end
    local newMod = setmetatable({}, {__index = modifierTable})
	newMod.id = modId
	return newMod
end

function API.SetupMultipleNewModifiers(modifiers)
    local returnTable = {}
    for key, value in pairs(modifiers) do
        local newModifier = API.SetupNewModifier(value)
        if newModifier then
            table.insert(returnTable, newModifier)
        end
    end
    return returnTable
end

-- Components

function API.Add(modifiersTable, modId)
	local mod = API.SetupNewModifier(modId)
	table.insert(modifiersTable, mod)
	return mod
end

function API.AddStarRatingScale(modifiersTable, modId, abilityId, min, perStar)
	local mod = API.Add(modifiersTable, modId)
	
	mod.calString = string.format("%s + Star Rating * %s", min, perStar)
	mod.calculation = function(stats, params)
		local starRating = stats[abilityId] or 0
		if params and params.upgradeStarRating then
			starRating = starRating + 1
		end
		return min + starRating * perStar
	end
end

function API.AddWisdomScale(modifiersTable, modId, min, max)
	local mod = API.Add(modifiersTable, modId)
	
	mod.calString = string.format("%s + %s * WIS / %s", min, (max - min), API.MAX_WIS)
	mod.calculation = function(stats, params)
		return min + (max - min) * stats.W / API.MAX_WIS
	end
end

function API.AddAgilityScale(modifiersTable, modId, min, max)
	local mod = API.Add(modifiersTable, modId)
	
	mod.calString = string.format("%s + %s * AGI / %s", min, (max - min), API.MAX_AGI)
	mod.calculation = function(stats, params)
		return min + (max - min) * stats.A / API.MAX_AGI
	end
end

function API.AddVitalityScale(modifiersTable, modId, min, max)
	local mod = API.Add(modifiersTable, modId)
	
	mod.calString = string.format("%s + %s * VIT / %s", min, (max - min), API.MAX_VIT)
	mod.calculation = function(stats, params)
		return min + (max - min) * stats.V / API.MAX_VIT
	end
end

function API.AddSkillPowerScale(modifiersTable, modId, min, max)
	local mod = API.Add(modifiersTable, modId)
	
	mod.calString = string.format("%s + %s * SP / %s", min, (max - min), API.MAX_SP)
	mod.calculation = function(stats, params)
		return min + (max - min) * stats.SP / API.MAX_SP
	end
end

function API.AddSkillPowerWithCrit(modifiersTable, modId, min, max)
	local mod = API.Add(modifiersTable, modId)
	
	mod.calString = string.format("%s + %s * SP / %s", min, (max - min), API.MAX_SP)
	mod.calculation = function(stats, params)
		local result = min + (max - min) * stats.SP / API.MAX_SP
		
		local critChanceMod = modifiersTable['CritChance']
		local critMultMod = modifiersTable['CritMult']
		
		if critChanceMod and critMultMod and not(params and params.ignoreCrit) then
			local critRNG = critChanceMod.calculation(stats)
			if math.random() < critRNG then
				local mult = critMultMod.calculation(stats)
				return {CoreMath.Round(result * mult), true}
			end
		end
		return {CoreMath.Round(result), false}
	end
end

function API.AddConstantValue(modifiersTable, modId, value)
	local mod = API.Add(modifiersTable, modId)
	
	mod.calString = tostring(value)
	mod.calculation = function(stats)
		return value
	end
end

function API.AddWisdomRNG(modifiersTable, modId)
	local mod = API.Add(modifiersTable, modId)
	
	mod.isPercent = true
	mod.calString = string.format("WIS / %s", API.MAX_WIS)
	mod.calculation = function(stats)
		return stats.W / API.MAX_WIS
	end
end

function API.AddAgilityRNG(modifiersTable, modId)
	local mod = API.Add(modifiersTable, modId)
	
	mod.isPercent = true
	mod.calString = string.format("AGI / %s", API.MAX_AGI)
	mod.calculation = function(stats)
		return stats.A / API.MAX_AGI
	end
end

function API.AddVitalityRNG(modifiersTable, modId)
	local mod = API.Add(modifiersTable, modId)
	
	mod.isPercent = true
	mod.calString = string.format("VIT / %s", API.MAX_VIT)
	mod.calculation = function(stats)
		return stats.V / API.MAX_VIT
	end
end

return API

