local LOOT_STATS_MODIFIABLES = require(script:GetCustomProperty('Loot_Stats_Modifiables'))
local CalcAPI = require(script:GetCustomProperty('RootCalculation_Api'))

local API = {}
_G['Ability.Modifiers'] = API

function API.GetModifiable(name)
    return LOOT_STATS_MODIFIABLES[name]
end

function API.SetupNewModifier(modifier)
    local modifierTable = API.GetModifiable(modifier)
    if not modifierTable then
        warn(modifier .. ' not found')
        return
    end
    return setmetatable({}, {__index = modifierTable})
end

function API.SetupMultipleNewModifiers(modifiers)
    local ReturnTable = {}
    for key, value in pairs(modifiers) do
        local newModifier = API.SetupNewModifier(value)
        if newModifier then
            ReturnTable[value] = newModifier
        end
    end
    return ReturnTable
end

-- Components

function API.Add(modifiersTable, modId)
	local mod = API.SetupNewModifier(modId)
	modifiersTable[modId] = mod
	return mod
end

function API.AddStarRatingScale(modifiersTable, modId, abilityId, min, perStar)
	local mod = API.Add(modifiersTable, modId)
	
	mod.calString = string.format("%s - Star Rating * %s", min, perStar)
	mod.calculation = function(stats)
		local starRating = stats[abilityId]
		return min - starRating * perStar
	end
end

function API.AddWisdomScale(modifiersTable, modId, min, max)
	local mod = API.Add(modifiersTable, modId)
	
	mod.calString = string.format("%s + %s * WIS / %s", min, (max - min), CalcAPI.MAX_WIS)
	mod.calculation = function(stats)
		return min + (max - min) * stats.W / CalcAPI.MAX_WIS
	end
end

function API.AddAgilityScale(modifiersTable, modId, min, max)
	local mod = API.Add(modifiersTable, modId)
	
	mod.calString = string.format("%s + %s * AGI / %s", min, (max - min), CalcAPI.MAX_AGI)
	mod.calculation = function(stats)
		return min + (max - min) * stats.A / CalcAPI.MAX_AGI
	end
end

function API.AddVitalityScale(modifiersTable, modId, min, max)
	local mod = API.Add(modifiersTable, modId)
	
	mod.calString = string.format("%s + %s * VIT / %s", min, (max - min), CalcAPI.MAX_VIT)
	mod.calculation = function(stats)
		return min + (max - min) * stats.V / CalcAPI.MAX_VIT
	end
end

function API.AddSkillPowerScale(modifiersTable, modId, min, max)
	local mod = API.Add(modifiersTable, modId)
	
	mod.calString = string.format("%s + %s * SP / %s", min, (max - min), CalcAPI.MAX_SP)
	mod.calculation = function(stats)
		return min + (max - min) * stats.SP / CalcAPI.MAX_SP
	end
end

function API.AddConstantValue(modifierTable, modId, value)
	local mod = API.Add(modifiersTable, modId)
	
	mod.calString = tostring(value)
	mod.calculation = function(stats)
		return value
	end
end

return API

