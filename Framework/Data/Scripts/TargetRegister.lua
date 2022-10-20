
Task.Wait()

local TARGETING_API = require(script:GetCustomProperty('Targeting_API'))
TARGETING_API.RegisterTarget(script)


local DAMAGEABLE = script:GetCustomProperty("DamageableObject"):WaitForObject()

function IsDead()
	return 
		not Object.IsValid(DAMAGEABLE)
		or DAMAGEABLE.isDead
		or DAMAGEABLE.hitPoints <= 0
end


script.destroyEvent:Connect(function()
	TARGETING_API.UnRegisterTarget(script)
end)

