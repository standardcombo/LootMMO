--[[
	Chair Physics FX
	v1.1 - 2022/10/26
	by: standardcombo
	
	Handles the collision of throwable object (e.g. Chair).
	Deals damage to impacted Damageable Objects and plays sound effects.
]]

local IMPACT_SOUND = script:GetCustomProperty("ImpactSound"):WaitForObject()
local MIN_TIME_TO_DAMAGE = 0.2

local sfxCooldown = 0
local spawnTime = time()


function IsInvulnerable(target)
	if target.isInvulnerable then
		return true
	end
	if target.serverUserData and target.serverUserData.isInvulnerable then
		return true
	end
	return false
end

script.parent.collidedEvent:Connect(function(_, hitResult)
	if time() - spawnTime < MIN_TIME_TO_DAMAGE then return end
	
	local velocity = script.parent:GetVelocity()
	local speedSquared = velocity.sizeSquared
	
	if speedSquared < 5000 then return end
	
	if sfxCooldown < time() then
		sfxCooldown = time() + 0.3
		IMPACT_SOUND:Play()
	end
	
	if Environment.IsServer() then
		local target = hitResult.other
		if target.FindAncestorByType and not target:IsA("Damageable") then
			target = target:FindAncestorByType("Damageable")
		end
		if target and target:IsA("Damageable") and not IsInvulnerable(target) then
			local dmg = Damage.New(script.parent.serverUserData.damageAmount)
			dmg.reason = DamageReason.COMBAT
			dmg.sourcePlayer = script.parent.serverUserData.throwingPlayer
			target:ApplyDamage(dmg)
			
			Events.Broadcast("Quest.ThrowChair", dmg.sourcePlayer, "Kill")
		end
	end
end)

