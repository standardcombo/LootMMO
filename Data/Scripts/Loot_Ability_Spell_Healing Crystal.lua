local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
properties = {
    description = script:GetCustomProperty('Description'),
    icon = script:GetCustomProperty('Icon')
}

modifiers = {
    [MODIFIERS.Damage.name] = setmetatable({}, {__index = MODIFIERS.Damage}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Duration.name] = setmetatable({}, {__index = MODIFIERS.Duration}),
    [MODIFIERS.Heal.name] = setmetatable({}, {__index = MODIFIERS.Heal}),
    [MODIFIERS.Range.name] = setmetatable({}, {__index = MODIFIERS.Range})
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
modifiers[MODIFIERS.Heal.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Range.name].calculation = function(self, stats)
    return 500
end
local healingCrystal = script:GetCustomProperty('HealerOrcHealingCrystalPlacementBasic')
local DEFAULT_Radius = 500

function Execute(self, stats)
    local player = self.owner

    if not Object.IsValid(player) then
        return
    end
    local mod = self:CalculateStats(stats)
    
    local thisAbility = self:GetCurrentAbility()
    local targetData = thisAbility:GetTargetData()
    local position = targetData:GetHitPosition()
    local v = targetData:GetAimPosition()
    local rotation = Rotation.New(v.x, v.y, v.z)

    local newObject = World.SpawnAsset(healingCrystal, {position = position, rotation = rotation})
    local radius = mod[MODIFIERS.Range.name]
    newObject:SetWorldScale(Vector3.New(CoreMath.Round(radius / DEFAULT_Radius, 3)))
    newObject:SetCustomProperty('Heal', mod[MODIFIERS.Heal.name])
    newObject:SetCustomProperty('Ability', self:GetCurrentAbility())
    newObject.lifeSpan = mod[MODIFIERS.Duration.name]
end
