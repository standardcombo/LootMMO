local Pkey = 'Cpnt'

while not _G['Character.EquipAPI'] do
	Task.Wait()
end

local EquipAPI = _G['Character.EquipAPI']

function UpdatedEvent(points, player)
	if not Object.IsValid(player) then
		return
	end
	local serialized = points:Serialize()
	serialized.potentialPoints = points.potentialPoints
	serialized.pendingPoints = points.pendingPoints
	player:SetPrivateNetworkedData(Pkey, serialized)
end

function PlayerEquipped(character, player)
	if not Object.IsValid(player) then
		return
	end
	local points = character:GetComponent('Points')
	points.confirmPointEvent:Connect(
		function()
			UpdatedEvent(points, player)
		end
	)
	points.spentChangedEvent:Connect(
		function()
			UpdatedEvent(points, player)
		end
	)
	points.pointChangedEvent:Connect(
		function()
			UpdatedEvent(points, player)
		end
	)
	points.resetPointEvent:Connect(
		function()
			UpdatedEvent(points, player)
		end
	)
end

EquipAPI.playerEquippedEvent:Connect(PlayerEquipped)
