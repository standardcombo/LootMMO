local component = {
    id = nil
}

function component:IsA(type)
    return type == 'component'
end

function component:Serialize(data)
    return {}
end

function component:Deserialize()
    return {}
end
function component:Init()
    return 
end

return component
