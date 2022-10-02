local Pkey = 'CStats'
local Rkey = 'ST|'

while not _G['Character.EquipAPI'] do
	Task.Wait()
end

local EquipAPI = _G['Character.EquipAPI']

function UpdatedEvent(stats, player)
	if not Object.IsValid(player) then
		return
	end
	player:SetPrivateNetworkedData(Pkey, stats)
end

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
	if not Object.IsValid(player) then
		return
	end
	local stat = character:GetComponent('Stats')
	local stats = stat:GetStats()
	UpdateResourceTemp(stats, player)
	UpdateResource(stats, player)

	stat.tempStatsUpdatedEvent:Connect(
		function(_, stats)
			UpdateResourceTemp(stats, player)
		end
	)
	stat.statsUpdatedEvent:Connect(
		function(_, stats)
			UpdateResource(stats, player)
		end
	)
end

EquipAPI.playerEquippedEvent:Connect(PlayerEquipped)
