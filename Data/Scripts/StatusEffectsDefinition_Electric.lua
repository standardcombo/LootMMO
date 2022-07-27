-- Module dependencies
local MODULE = require(script:GetCustomProperty("ModuleManager"))
function COMBAT()
	return MODULE:Get("standardcombo.Combat.Wrap")
end
local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local EFFECT_ICON = script:GetCustomProperty("EffectIcon")
local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")
local DEFAULT_DPS = script:GetCustomProperty("DPS")

local dmg = Damage.New()

function EffectTick(player, source, damage)
	dmg.amount = damage or DEFAULT_DPS
	dmg.reason = DamageReason.COMBAT
    --dmg.sourcePlayer = source
	local attackData = {
		object = player,
		damage = dmg,
		source = source,
		position = nil,
		rotation = nil,
		tags = {id = "StatusEffect", name = "Electric"}
	}
	--COMBAT().ApplyDamage(attackData)

    -- Hurt other team members around us
	local position = player:GetWorldPosition()
	local radius = 600

	local params = {ignoreDead = true, includeTeams = player.team, ignorePlayers = player}
	local enemiesInRange = Game.FindPlayersInSphere( position, radius, params)

	local damageRange = Vector2.New(15,15)
	for _, enemy in pairs(enemiesInRange) do
		if enemy ~= player then
			if Object.IsValid(enemy) then
				local amount = math.random(damageRange.x, damageRange.y)
				local dmg = Damage.New(amount)
			-- dmg.sourcePlayer = source
				
				local attackData = {
					object = enemy,
					damage = dmg,
					source = source,
					position = nil,
					rotation = nil,
					tags = {id = "BasicAttack"}
				}
				COMBAT().ApplyDamage(attackData)
			end
		end
	end

end

local data = {}

data.name = "Electric"
data.duration = 3.0
data.icon = EFFECT_ICON
data.color = Color.RUBY
data.effectTemplate = EFFECT_TEMPLATE
data.type = API_SE.STATUS_EFFECT_TYPE_CUSTOM
data.tickFunction = EffectTick

API_SE.DefineStatusEffect(data)