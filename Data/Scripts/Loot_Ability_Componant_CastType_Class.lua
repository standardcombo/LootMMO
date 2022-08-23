local class = {}

function class:IsA(type)
    return type == 'CastType'
end
function class:Activate(ability)
    return ability
end
function class:Stop(ability)
    return ability
end
return class
