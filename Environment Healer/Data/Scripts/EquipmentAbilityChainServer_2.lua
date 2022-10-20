--[[
	Equipment Ability Chain - Server
	v1.2
	by: standardcombo, blackedheart
	
	Automatically gathers all abilities under an equipment and cycles through them as they are used.
	Primary use case is for melee weapons with a sequence of abilities.
--]]

local EQUIPMENT = script:FindAncestorByType("Equipment")
local abilities = {}
local abilityIndex = 1

function OnAbilityRecovery(ability)
	if (#abilities > 1) then
		abilities[abilityIndex].isEnabled = false
		abilities[abilityIndex].owner = nil
		
		abilityIndex = abilityIndex + 1
		if (abilityIndex > #abilities) then
			abilityIndex = 1
		end

		abilities[abilityIndex].isEnabled = true
		abilities[abilityIndex].owner = EQUIPMENT.owner
	end
end

-- Process all abilities on this equipment and figure out which ones to add in the chain
for _,ability in pairs(EQUIPMENT:FindDescendantsByType("Ability")) do
	local propValue,propExists = ability:GetCustomProperty("IsAbilityChain")
	-- Automatically assumes an ability is part of the chain if it doesn't
	-- have the property "IsAbilityChain"
	if not propExists or propValue == true then
		table.insert(abilities, ability)
		ability.isEnabled = (#abilities == 1)
		ability.recoveryEvent:Connect(OnAbilityRecovery)
	end
end

