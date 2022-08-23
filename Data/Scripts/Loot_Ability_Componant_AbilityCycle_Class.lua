Component = {}
function Component.IsA(type)
    return type == 'Cycler'
end
function Component.GetAbilities()
    return script:GetCustomProperties()
end
return Component
