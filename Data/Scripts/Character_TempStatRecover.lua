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
            NewValue = Math.Max(TrueValue, Value - COOL_DOWN_RATE)
        elseif Value < TrueValue then
            NewValue = Math.Min(TrueValue, Value + RECOVERY_RATE)
        end
        component:SetTempStat(NewValue)
    end
    Task.Wait(1)
end
