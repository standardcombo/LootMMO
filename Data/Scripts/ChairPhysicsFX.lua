
local IMPACT_SOUND = script:GetCustomProperty("ImpactSound"):WaitForObject()

local sfxCooldown = 0


function IsImmortal(target)
	if target.isImmortal then
		return true
	end
	if target.serverUserData and target.serverUserData.isImmortal then
		return true
	end
	return false
end

script.parent.collidedEvent:Connect(function(_, hitResult)
	local velocity = script.parent:GetVelocity()
	local speedSquared = velocity.sizeSquared
	
	if speedSquared < 5000 then return end
	
	if sfxCooldown < time() then
		sfxCooldown = time() + 0.3
		IMPACT_SOUND:Play()
	end
	
	if Environment.IsServer() then
		local target = hitResult.other
		if not target:IsA("Damageable") then
			target = target:FindAncestorByType("Damageable")
		end
		if target and target:IsA("Damageable") and not IsImmortal(target) then
			local dmg = Damage.New(script.parent.serverUserData.damageAmount)
			dmg.reason = DamageReason.COMBAT
			dmg.sourcePlayer = script.parent.serverUserData.throwingPlayer
			target:ApplyDamage(dmg)
		end
	end
end)

