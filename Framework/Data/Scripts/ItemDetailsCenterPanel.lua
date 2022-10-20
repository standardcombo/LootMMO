local HEALTH = script:GetCustomProperty('Health'):WaitForObject()
local BLOCK = script:GetCustomProperty('Block'):WaitForObject()
local ATTACK_POWER = script:GetCustomProperty('AttackPower'):WaitForObject()
local SKILL_POWER = script:GetCustomProperty('SkillPower'):WaitForObject()
local SKILL_RESIST = script:GetCustomProperty('SkillResist'):WaitForObject()
local WISDOM = script:GetCustomProperty('Wisdom'):WaitForObject()
local AGILITY = script:GetCustomProperty('Agility'):WaitForObject()
local VITALITY = script:GetCustomProperty('Vitality'):WaitForObject()

local mapping = {
	[HEALTH] = 'H',
	[BLOCK] = 'B',
	[ATTACK_POWER] = 'AP',
	[SKILL_POWER] = 'AP',
	[SKILL_RESIST] = 'SR',
	[WISDOM] = 'W',
	[AGILITY] = 'A',
	[VITALITY] = 'V'
}

local function EquipedLoot(lootBag)
	local TotalStats = {}
	for i, item in pairs(lootBag.items) do
		local itemContruct =
		_G['Item.Constructor'].New({ item = item.name, order = item.order, greatness = item.greatness })
		local Values = itemContruct:CalculateStats()
		for key, value in pairs(Values) do
			if not TotalStats[key] then
				TotalStats[key] = 0
			end
			TotalStats[key] = TotalStats[key] + value
		end
	end
	TotalStats['H'] = TotalStats['H'] + 100
	for key, value in pairs(TotalStats) do
		for Textbox, identifier in pairs(mapping) do
			if identifier == key then
				Textbox.text = tostring(value)
			end
		end
	end
end

Events.Connect('EquipLoot', EquipedLoot)
