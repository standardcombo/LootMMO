local API = {}
_G['Ability_Disabler'] = API

local mt = {}
mt.__index = function(table, key)
    local ret = setmetatable({}, mt)
    table[key] = ret
    return ret
end

local disbled = setmetatable({}, mt)

function CheckForAbilities()
    for key, value in pairs(disbled) do
        if not Object.IsValid(key) then
            disbled[key] = nil
        end
    end
end

function UpdatedDisabled()
    for key, value in pairs(disbled) do
        key.isEnabled = false
    end
end

function EnabledAbility(ability)
    for key, value in pairs(disbled[ability]) do
        return
    end
    disbled[ability] = nil
    ability.isEnabled = true
end

function API.GetDisabledAbilities()
    return disbled
end
function API.RegisterAbility(ability, lockid)
    disbled[ability][lockid] = true
    CheckForAbilities()
    UpdatedDisabled()
end

function API.UnregisterAbility(ability, lockid)
    disbled[ability][lockid] = nil
    EnabledAbility(ability)
    CheckForAbilities()
end

function API.RegisterAll(player, lockid)
    for key, equipment in pairs(player:GetEquipment()) do
        for key, ability in pairs(equipment:GetAbilities()) do
            API.RegisterAbility(ability, lockid)
        end
    end
end

function API.UnregisterAll(player, lockid)
    for key, equipment in pairs(player:GetEquipment()) do
        for key, ability in pairs(equipment:GetAbilities()) do
            API.UnregisterAbility(ability, lockid)
        end
    end
end

function ClientRegisterAbility(player, ability, lockid)
    if player == ability.owner then
        API.RegisterAbility(ability, lockid)
    end
end

function ClientUnregisterAbility(player, ability, lockid)
    if player == ability.owner then
        API.UnregisterAbility(ability, lockid)
    end
end

function ClientRegisterAll(player, lockid)
    for key, equipment in pairs(player:GetEquipment()) do
        for key, ability in pairs(equipment:GetAbilities()) do
            API.RegisterAbility(ability, lockid)
        end
    end
end

function ClientUnregisterAll(player, lockid)
    for key, equipment in pairs(player:GetEquipment()) do
        for key, ability in pairs(equipment:GetAbilities()) do
            API.UnregisterAbility(ability, lockid)
        end
    end
end
Events.ConnectForPlayer('Ability_Disabler_Register', ClientRegisterAbility)
Events.ConnectForPlayer('Ability_Disabler_Unregister', ClientUnregisterAbility)
Events.ConnectForPlayer('Ability_Disabler_RegisterA', ClientRegisterAll)
Events.ConnectForPlayer('Ability_Disabler_UnregisterA', ClientUnregisterAll)
