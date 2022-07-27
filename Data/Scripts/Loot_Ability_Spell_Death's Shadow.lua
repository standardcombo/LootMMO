local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
properties = {
    description = script:GetCustomProperty('Description'),
    icon = script:GetCustomProperty('Icon')
}

modifiers = {
    [MODIFIERS.Damage.name] = setmetatable({}, {__index = MODIFIERS.Damage}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Duration.name] = setmetatable({}, {__index = MODIFIERS.Duration})
}
modifiers[MODIFIERS.Damage.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Duration.name].calculation = function(self, stats)
    return 2
end

local EndingVFX = nil

function DisableInvisility(player)
    if isInvisible then
        --print("Disable Invis")
        player.animationStance = SpecialAbility.serverUserData.OriginalStance
        World.SpawnAsset(EndingVFX, {position = player:GetWorldPosition()})
        --SpecialAbility.owner:SetVisibility(true)
        player.isVisible = true
        isInvisible = false
        META_AP().AdjustPlayerMovment(SpecialAbility.owner, META_AP().ASSASSIN)
        SetNetworkProperty(isInvisible)
        WeaponAbility.isEnabled = true
    end
end