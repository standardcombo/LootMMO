local Pkey = 'CStats'
local Rkey = 'ST|'

while not _G['Character.EquipAPI'] do
	Task.Wait()
end

local EquipAPI = _G['Character.EquipAPI']

local statTempEvent = {}
local statEvent = {}

local function UpdateResource(stats, player)

	if not Object.IsValid(player) then
		return
	end
	for key, value in pairs(stats) do
		player:SetResource(Rkey .. "P|" .. key, math.ceil(value * 100))
	end
end

local function UpdateResourceTemp(stats, player)
	if not Object.IsValid(player) then
		return
	end
	for key, value in pairs(stats) do
		player:SetResource(Rkey .. "T|" .. key, math.ceil(value * 100))
	end
end

function PlayerEquipped(character, player)
	local stat = character:GetComponent('Stats')
	local stats = stat:GetStats()

	UpdateResourceTemp(stats, player)
	UpdateResource(stats, player)

	statTempEvent[character.id] = stat.tempStatsUpdatedEvent:Connect(
		function(_, values)
			UpdateResourceTemp(values, player)
		end
	)
	statEvent[character.id]     = stat.statsUpdatedEvent:Connect(
		function(_, values)
			UpdateResource(values, player)
		end
	)
end

function PlayerUnequipped(character)
	if statEvent[character.id] then
		statEvent[character.id]:Disconnect()
		statEvent[character.id] = nil
	end
	if statTempEvent[character.id] then
		statTempEvent[character.id]:Disconnect()
		statTempEvent[character.id] = nil
	end
end

EquipAPI.playerEquippedEvent:Connect(PlayerEquipped)
EquipAPI.playerUnequippedEvent:Connect(PlayerUnequipped)
