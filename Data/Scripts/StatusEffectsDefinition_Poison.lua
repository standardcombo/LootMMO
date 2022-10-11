-- Module dependencies
local MODULE = require(script:GetCustomProperty("ModuleManager"))
function COMBAT()
	return MODULE:Get("standardcombo.Combat.Wrap")
end
 
local DEFAULT_DPS = script:GetCustomProperty("DPS")

local dmg = Damage.New()

function PoisonTick(player, source, damage)
	dmg.amount = damage or DEFAULT_DPS
	dmg.reason = DamageReason.COMBAT

	local attackData = {
		object = player,
		damage = dmg,
		source = source,
		position = nil,
		rotation = nil,
		tags = {id = "StatusEffect", name = "Poison"}
	}
	COMBAT().ApplyDamage(attackData)
end

return PoisonTick

--[[

	local data = {}
	
	data.name = "Poison"
	data.duration = 10.0
	data.icon = EFFECT_ICON
	data.color = Color.RUBY
	data.effectTemplate = EFFECT_TEMPLATE
	data.type = API_SE.STATUS_EFFECT_TYPE_CUSTOM
	data.tickFunction = PoisonTick
	
	API_SE.DefineStatusEffect(data)
	
	]]