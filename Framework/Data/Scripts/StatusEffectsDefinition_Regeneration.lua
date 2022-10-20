-- Module dependencies
local MODULE = require(script:GetCustomProperty("ModuleManager"))
function COMBAT()
	return MODULE:Get("standardcombo.Combat.Wrap")
end
 
local DEFAULT_DPS = script:GetCustomProperty("DPS")

local dmg = Damage.New()

function Recovery(player, source, damage)
	dmg.amount = -damage or -DEFAULT_DPS
	dmg.reason = DamageReason.FRIENDLY_FIRE

	local attackData = {
		object = player,
		damage = dmg,
		source = source,
		position = nil,
		rotation = nil,
		tags = {id = "StatusEffect", name = "Bleed"}
	}
	COMBAT().ApplyDamage(attackData)
end

return Recovery
