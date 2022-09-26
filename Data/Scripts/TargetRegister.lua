local TARGETING_API = require(script:GetCustomProperty('Targeting_API'))

TARGETING_API.RegisterTarget(script)

script.destroyEvent:Connect(
    function()
        TARGETING_API.UnRegisterTarget(script)
    end
)
