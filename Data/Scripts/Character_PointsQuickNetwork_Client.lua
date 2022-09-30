local Pkey = 'Cpnt'
local LOCAL_PLAYER = Game.GetLocalPlayer()

while not _G['Character.EquipAPI'] do
	Task.Wait()
end

local EquipAPI = _G['Character.EquipAPI']

function SetData(points, data)
	if data.unspentPoints then
		points:SetPoints(data.unspentPoints)
	end
	if data.potentialPoints then
		points:SetPending(data.potentialPoints)
	end
	if data.pendingPoints then
		points.pendingPoints = data.pendingPoints
	end
	if data.spentPoints then
		points.spentPoints = data.spentPoints
	end
end

function UpdatedEvent(_, key)
	if key == Pkey then
		local character = EquipAPI.GetCurrentCharacter(LOCAL_PLAYER)
		if character then
			local points = character:GetComponent('Points')
			local data = LOCAL_PLAYER:GetPrivateNetworkedData(Pkey)
			SetData(points, data)
		end
	end
end

LOCAL_PLAYER.privateNetworkedDataChangedEvent:Connect(UpdatedEvent)
