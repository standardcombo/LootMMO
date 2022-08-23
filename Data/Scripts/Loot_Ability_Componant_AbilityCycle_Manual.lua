local abilities = script:GetCustomProperties()
Component = {}

function Component.IsA(type)
    return type == 'Cycler'
end
function Component.GetAbilities() 
    return abilities
end
return Component
