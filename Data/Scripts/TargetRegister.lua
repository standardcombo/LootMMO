
Task.Wait()

local TARGETING_API = require(script:GetCustomProperty('Targeting_API'))
TARGETING_API.RegisterTarget(script)


local DAMAGEABLE = script:FindAncestorByType("DamageableObject")

if DAMAGEABLE then
	DAMAGEABLE.damagedEvent:Connect(function(obj, dmg)
		if DAMAGEABLE.hitPoints <= 0 then 
			if Object.IsValid(script) then 
				script:Destroy()
			end 
		end 
	end)
end

script.destroyEvent:Connect(function()
	TARGETING_API.UnRegisterTarget(script)
end)

