local API = {}
_G['Ability_Disabler'] = API

function API.RegisterAbility(ability, lockid)
    Events.BroadcastToServer('Ability_Disabler_Register', ability, lockid)
end

function API.UnregisterAbility(ability, lockid)
    Events.BroadcastToServer('Ability_Disabler_Unregister', ability, lockid)
end

function API.RegisterAll(lockid)
    Events.BroadcastToServer('Ability_Disabler_RegisterA', lockid)
end

function API.UnregisterAll(lockid)
    Events.BroadcastToServer('Ability_Disabler_UnregisterA', lockid)
end
