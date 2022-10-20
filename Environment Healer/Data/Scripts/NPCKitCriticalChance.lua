--[[
	Equipment Critical Chance
	v1.0
	by: standardcombo
	
	Place this inside a weapon to apply critical chance and multipier.
	Requires Combat Wrapper v0.11 or later.
--]]

local EQUIPMENT = script:FindAncestorByType("Equipment")

local CRIT_CHANCE = script:GetCustomProperty("Chance")
local CRIT_MULT = script:GetCustomProperty("Multiplier")

function TAGS() return _G["standardcombo.Combat.Tags"] end


function OnGoingToTakeDamage(attackData)
	if attackData.item == EQUIPMENT then
		if math.random() < CRIT_CHANCE then
			attackData.damage.amount = attackData.damage.amount * CRIT_MULT
			TAGS().AddTag(attackData.tags, "Critical")
		else
			TAGS().RemoveTag(attackData.tags, "Critical")
		end
	end
end

Events.Connect("CombatWrapAPI.GoingToTakeDamage", OnGoingToTakeDamage)

