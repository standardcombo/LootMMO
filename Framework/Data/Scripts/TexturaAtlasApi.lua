local API = {}
local EmptyPanel = script:GetCustomProperty('EmptyPanel')

function API:SetUIImage(uiImage, PortalLink, index, position, scale, optionalParameters)
    local width = optionalParameters.width or uiImage.width
    local height = optionalParameters.height or uiImage.height
    local panel = World.SpawnAsset(EmptyPanel, {parent = uiImage})
    panel:SetGameScreenshot(PortalLink, index)
    panel.width = math.ceil(width * (1280 / scale.x))
    panel.height = math.ceil(height * (720 / scale.y))
    panel.x = -(position.x - 1) * (width / scale.x)
    panel.y = -(position.y - 1) * (height / scale.y)
    return panel
end

function API:MoveUI(uiImage, position, scale)
    uiImage.x = -(position.x - 1) * (uiImage.parent.width / scale.x)
    uiImage.y = -(position.y - 1) * (uiImage.parent.height / scale.y)
end

return API
