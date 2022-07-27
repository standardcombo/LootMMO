local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
properties = {
    description = script:GetCustomProperty('Description'),
    icon = script:GetCustomProperty('Icon')
}

modifiers = {
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown})
}
modifiers[MODIFIERS.Cooldown.name].calculation = function(self, stats)
    return 2
end

local SpawnVfx = script:GetCustomProperty('TeleportFX')

function Execute(self, stats)
    local thisAbility = self:GetCurrentAbility()
    local player = self.owner

    if not Object.IsValid(player) then
        return
    end

    local targetData = thisAbility:GetTargetData()
    local position = targetData:GetHitPosition()

    player:SetWorldPosition(position + Vector3.New(0, 0, 180))
    World.SpawnAsset(SpawnVfx, {position = position})
end
