--[[
	Character Apply Stats
	v1.0.1 - 2022/10/25
	by: Blaking
	
	Handles player stats that are applied on spawn and damage taken.
	attackTagsHandler handles how attacks are proceced.
]]

while not _G["Character.EquipAPI"] do
	Task.Wait()
end

EApi = _G["Character.EquipAPI"]

local function AttackResistance(stats, attackData, player)
	local Block = stats:GetTempStat("B")
	local oldDamage = attackData.damage.amount 

	attackData.damage.amount = math.max(0, attackData.damage.amount - Block)
	stats:SetTempStat("B", math.max(Block - oldDamage, 0))
	player.serverUserData.blockPoints = stats:GetTempStat("B")

end

local function SkillResistance(stats, attackData, player)
	local Block = stats:GetTempStat("B")

	attackData.damage.amount = math.max(0, attackData.damage.amount - Block)

	stats:SetTempStat("B", math.max(Block - 1, 0))
	player.serverUserData.blockPoints = stats:GetTempStat("B")
end

local attackTagsHandler = {
	["Melee"] = AttackResistance,
	["ability"] = SkillResistance
}

local function StatsChanged(player, values)
	if values then
		local hPercent = player.hitPoints / player.maxHitPoints
		player.maxHitPoints = values["H"] or 100
		player.hitPoints = math.ceil(player.maxHitPoints * hPercent)
		player.serverUserData.blockPoints = values['B'] or 0
		return
	end
end

local function playerEquipped(character, player)
	local stats = character:GetComponent("Stats")
	stats.statsUpdatedEvent:Connect(
		function(stats, values)
			StatsChanged(player, values)
		end
	)
	stats:ResetTempStats()

	if not player then
		return
	end
	if stats then
		player.maxHitPoints = stats:GetTempStat("H") or 100
		player.hitPoints = player.maxHitPoints

		return
	end
end


local function OnGoingToTakeDamage(attackData)
	local attacked = attackData.object
	local character = EApi.GetCurrentCharacter(attacked)
	if not character then
		return
	end
	local stats = character:GetComponent("Stats")
	if stats then

		if attackData.damage.amount > 0 then
			for key, value in pairs(attackData.tags or {}) do
				if attackTagsHandler[key] then
					attackTagsHandler[key](stats, attackData, attacked)
				end
			end
		end
	end
end

_G.CombatEvents.goingToTakeDamageEvent:Connect(OnGoingToTakeDamage, 200)
EApi.playerEquippedEvent:Connect(playerEquipped)
