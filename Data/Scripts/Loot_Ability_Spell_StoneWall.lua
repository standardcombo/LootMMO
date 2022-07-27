local MODIFIERS = require(script:GetCustomProperty('Modifiers'))
properties = {
    description = script:GetCustomProperty('Description'),
    icon = script:GetCustomProperty('Icon')
}

modifiers = {
    [MODIFIERS.Duration.name] = setmetatable({}, {__index = MODIFIERS.Duration}),
    [MODIFIERS.Cooldown.name] = setmetatable({}, {__index = MODIFIERS.Cooldown}), 
}
modifiers[MODIFIERS.Duration.name].calculation = function(self, stats)
    return 2
end
modifiers[MODIFIERS.Cooldown.name].calculation = function(self, stats)
    return 2
end 

local SpawnVfx = script:GetCustomProperty("WarriorStoneWallPlacementBasic")
function Execute(self, stats)
    local mods = self:CalculateStats(stats)
    local thisAbility = self:GetCurrentAbility()
	local player = self.owner
	
	if not Object.IsValid(player) then return end
	
	local targetData = thisAbility:GetTargetData() 
	local position = targetData:GetHitPosition() 
	local v = targetData:GetAimPosition()
	local rotation = Rotation.New(v.x, v.y, v.z)

	local newObject = World.SpawnAsset(SpawnVfx, {position = position, rotation = rotation})
	local newLifeSpan = mods[MODIFIERS.Duration.name]
	newObject.lifeSpan = newLifeSpan
	newObject:SetNetworkedCustomProperty("lifeSpan", newLifeSpan)
end
