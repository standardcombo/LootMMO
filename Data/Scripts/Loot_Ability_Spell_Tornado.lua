local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
properties = {
    description = script:GetCustomProperty('Description'),
    icon = script:GetCustomProperty('Icon')
}

modifiers = {
    [MODIFIERS.DOT.name] = setmetatable({}, {__index = MODIFIERS.DOT}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Radius.name] = setmetatable({}, {__index = MODIFIERS.Radius})
}
modifiers[MODIFIERS.DOT.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Radius.name].calculation = function(self, stats)
    return 2
end
local placementTemplate = script:GetCustomProperty('HunterOrcRainOfArrowsPlacementBasic')

function Execute(self, stats)
    local mod = self:CalculateStats(stats)

    local SpecialAbility = self:GetCurrentAbility()
    local targetData = SpecialAbility:GetTargetData()
    local position = targetData:GetHitPosition()

    local radius = mod[MODIFIERS.Radius.name]
    local vfxScale = CoreMath.Round(radius / 125, 3)

    local CurrentTornado = World.SpawnAsset(placementTemplate, {position = position, scale = vfxScale})
    CurrentTornado.lifeSpan = mod4.duration
    CurrentTornado:SetNetworkedCustomProperty('DecalScale', vfxScale)
    CurrentTornado:SetNetworkedCustomProperty('LifeSpan', CurrentTornado.lifeSpan)
    CurrentTornado:SetNetworkedCustomProperty('damage', mod[MODIFIERS.DOT.name])
    CurrentTornado:SetNetworkedCustomProperty('range', vfxScale)
end
