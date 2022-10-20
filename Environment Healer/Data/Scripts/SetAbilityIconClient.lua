local API = require(script:GetCustomProperty("API"))
local ABILITY = script:FindAncestorByType("Ability")
local ICON = script:GetCustomProperty("Icon")

if ABILITY then
    API.SetObjectIcon(ABILITY, ICON)
end
