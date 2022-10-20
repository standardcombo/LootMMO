local STAT = script:GetCustomProperty('Stat')
local RECOVERY_RATE = script:GetCustomProperty('RecoveryRate')
local COOL_DOWN_RATE = script:GetCustomProperty('CoolDownRate')

EApi = _G['Character.EquipAPI']
local Stats = {}
function PlayerConnect(Character, player)
	local Stat = Character:GetComponent('Stats')
	Stats[Character] = Stat
end

function PlayerDisconnect(Character)
	if Stats[Character] then
		Stats[Character] = nil
	end
end

EApi.playerEquippedEvent:Connect(PlayerConnect)
EApi.playerUnequippedEvent:Connect(PlayerDisconnect)

function Tick()
	for key, component in pairs(Stats) do
		local Value = component:GetTempStat(STAT)
		local TrueValue = component:GetStat(STAT)
		local NewValue = Value
		if Value > TrueValue then
			NewValue = math.max(TrueValue, Value - COOL_DOWN_RATE)
			component:SetTempStat(STAT, NewValue)
		elseif Value < TrueValue then
			NewValue = math.min(TrueValue, Value + RECOVERY_RATE)
			component:SetTempStat(STAT, NewValue)
		end
	end
	Task.Wait(1)
end
