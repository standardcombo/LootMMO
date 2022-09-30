local Pkey = 'CStats'
local Rkey = 'ST'
local LOCAL_PLAYER = Game.GetLocalPlayer()

while not _G['Character.EquipAPI'] do
	Task.Wait()
end

local EquipAPI = _G['Character.EquipAPI']

function UpdatedEvent(_, key)
	if key == Pkey then
		local character = EquipAPI.GetCurrentCharacter(LOCAL_PLAYER)
		if character then
			local Stats = character:GetComponent('Stats')
			Stats:SetTempStats(LOCAL_PLAYER:GetPrivateNetworkedData(Pkey))
		end
	end
end

local function ResourceChanged(player, resourceId, newValue)
	local pref, Temp, key = CoreString.Split(resourceId, "|")
	if pref ~= Rkey then
		return
	end
	local character = EquipAPI.GetCurrentCharacter(LOCAL_PLAYER)
	if character then
		local Stats = character:GetComponent('Stats')
		if Temp == "T" then
			Stats:SetTempStat(key, newValue / 100)
		else
			Stats:SetStat(key, newValue / 100)
		end
	end
end

LOCAL_PLAYER.privateNetworkedDataChangedEvent:Connect(UpdatedEvent)
LOCAL_PLAYER.resourceChangedEvent:Connect(ResourceChanged)
