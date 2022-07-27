local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
properties = {
    description = script:GetCustomProperty('Description'),
    icon = script:GetCustomProperty('Icon')
}

modifiers = {
    [MODIFIERS.Damage.name] = setmetatable({}, {__index = MODIFIERS.Damage}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}),
    [MODIFIERS.Bleed.name] = setmetatable({}, {__index = MODIFIERS.Bleed}),
    [MODIFIERS.Stun.name] = setmetatable({}, {__index = MODIFIERS.Stun})
}

modifiers[MODIFIERS.Damage.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Bleed.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Stun.name].calculation = function(self, stats)
    return 2
end

local trapTemplate = script:GetCustomProperty('HunterBearTrapPlacementBasic')

function Execute(self, stats)
    self.data.ActiveTraps = self.data.ActiveTraps or {}
    if not Object.IsValid(self:GetCurrentAbility()) or not Object.IsValid(self.owner) then
        return
    end
    local mod = self:CalculateStats(stats)
    local targetData = self:GetCurrentAbility():GetTargetData()
    local position = targetData:GetHitPosition()
    local v = targetData:GetAimPosition()
    local rotation = Rotation.New(v.x, v.y, v.z)

    local MaxTraps = 1
    if self.data.ActiveTraps == MaxTraps then
        local oldTrap = table.remove(self.data.ActiveTraps, 1)
        if Object.IsValid(oldTrap) then
            oldTrap:Destroy()
        end
    end

    local newTrap = World.SpawnAsset(trapTemplate, {position = position, rotation = rotation})

    table.insert(self.data.ActiveTraps, newTrap)
    newTrap:SetCustomProperty('OwnerID', self.owner.id)
    newTrap:SetCustomProperty('Damage', mod[MODIFIERS.Damage.name])
    newTrap:SetCustomProperty('Stun', mod[MODIFIERS.Stun.name])
    newTrap:SetCustomProperty('Bleed', mod[MODIFIERS.Bleed.name])
end
