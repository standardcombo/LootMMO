local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local API = {}

function API.ApplyImpulse(player, impulse)
    local multiplier = API_SE.GetCharacterKnockbackMultiplier(player)
    player:AddImpulse(multiplier * impulse * 1000.0)
end

function API.AreaKnockAway(center, radius, magnitude)
	for _, player in pairs(Game.FindPlayersInSphere(center + Vector3.UP * 100.0, radius, {ignoreDead = true})) do
		local playerOffset = player:GetWorldPosition() - center
		playerOffset.z = 0.0

		if playerOffset.size > 0.1 then
			API.ApplyImpulse(player, magnitude * (playerOffset:GetNormalized() + Vector3.UP))
		else
			API.ApplyImpulse(player, magnitude * Vector3.UP)
		end
	end
end

function API.AreaKnockTowards(center, radius, magnitude)
	for _, player in pairs(Game.FindPlayersInSphere(center + Vector3.UP * 100.0, radius, {ignoreDead = true})) do
		local playerOffset = center - player:GetWorldPosition()
		playerOffset.z = 0.0

		if playerOffset.size > 0.1 then
			API.ApplyImpulse(player, magnitude * (playerOffset:GetNormalized() + Vector3.UP))
		else
			API.ApplyImpulse(player, magnitude * Vector3.UP)
		end
	end
end

return API
