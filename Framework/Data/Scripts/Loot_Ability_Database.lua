local DATABASE_CLASS = require(script:GetCustomProperty('Database_Class'))

--- @type database
local database = DATABASE_CLASS:New()

function database:AddAbility(newAbility)
    if newAbility:IsA('Ability') then
        database:AddElement(newAbility)
    end
end

function database:GetEntry(abilityName)
    return database:GetElementFromKey('name', abilityName)
end
 
return database
