--- @type database
local LOOT_ABILITY_DATABASE = require(script:GetCustomProperty('Loot_Ability_Database'))
local LOOT_ABILITY_CONSTRUCTOR = require(script:GetCustomProperty('Loot_Ability_Constructor'))
local DEFAULT_CYCLE = require(script:GetCustomProperty('DefaultCycle'))
local DEFAULT_CASTER = require(script:GetCustomProperty('DefaultCaster'))
local LOOT_ABILITY_COMPONANT_ABILITY_CYCLE_CLAS =
    require(script:GetCustomProperty('Loot_Ability_Component_AbilityCycle_Clas'))
local LOOT_ABILITY_COMPONANT_CAST_TYPE_CLASS =
    require(script:GetCustomProperty('Loot_Ability_Component_CastType_Class'))
local FOLDER = script:GetCustomProperty('Folder'):WaitForObject()
Task.Wait()
for key, abil in pairs(FOLDER:GetChildren()) do
    if not abil:IsA('Script') then
        return
    end
    local context = abil.context
    context.name = abil.name
    for key, value in pairs(abil:GetChildren()) do
        if value:IsA('Script') then
            local content = value.context 
            if content and content['Component'] then
                local component = content['Component']
                if component.IsA('CastType') then
                    context.caster = setmetatable(component, {__index = LOOT_ABILITY_COMPONANT_CAST_TYPE_CLASS})
                end
                if component.IsA('Cycler') then 
                    context.cycler = setmetatable(component, {__index = LOOT_ABILITY_COMPONANT_ABILITY_CYCLE_CLAS})
                end
            end
        end
    end

    if not context.caster then
        context.caster = setmetatable(DEFAULT_CASTER, {__index = LOOT_ABILITY_COMPONANT_CAST_TYPE_CLASS})
    end
    if not context.cycler then
        context.cycler = setmetatable(DEFAULT_CYCLE, {__index = LOOT_ABILITY_COMPONANT_CAST_TYPE_CLASS})
    end 
    
    local newAbiltiy = LOOT_ABILITY_CONSTRUCTOR.NewAbility(context)
    LOOT_ABILITY_DATABASE:AddAbility(newAbiltiy)
end

LOOT_ABILITY_DATABASE:CompleteSetup()
