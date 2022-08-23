--- @type CustomAbility
local LOOT_ABILIY_CLASS = require(script:GetCustomProperty('Loot_Abiliy_Class'))

--- @class CustomAbilityConstruct
local AbilityConstuct = {}
while not _G.CC_Util do
    Task.Wait()
end
local luaEvents = _G.CC_Util:WaitForlibrary('Lua Event')

local OverrideTable = {
    'name',
    'caster',
    'cycler',
    'properties',
    'modifiers',
    'CalculateStats',
    'Spawn',
    'Execute',
    'Recovery',
    'Cooldown',
    'Cast',
    'Equip',
    'UnEquip',
    'Update'
}

function AbilityConstuct.NewAbility(overrides, params)
    local newAbility = setmetatable({}, {__index = LOOT_ABILIY_CLASS})
    newAbility.data = params

    for key, name in pairs(newAbility.tableElemets) do
        newAbility[name] = {}
    end

    for key, name in pairs(OverrideTable) do
        if overrides[name] then
            newAbility[name] = overrides[name]
        end
    end
    return newAbility
end

function AbilityConstuct.CloneAbility(ability)
    if ability:IsA('Ability') then
        local newAbility = AbilityConstuct.NewAbility(ability)
        for index, name in ipairs(newAbility.events) do
            newAbility[name] = luaEvents.NewSafeEvent()
        end

        return newAbility
    end
end

return AbilityConstuct
