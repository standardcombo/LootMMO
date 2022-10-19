local Component = {}
function Component.IsA(type)
    return type == 'cycler'
end
function Component.Activate(ability)
    ability:GetCurrentAbility():Activate()
end
return Component
