local API_D = require(script:GetCustomProperty("APIDamage"))
local API_NPC = require(script:GetCustomProperty("API_NPC"))

local data = {}

data.name = "Execution"
data.description = script:GetCustomProperty("Description")
data.icon = script:GetCustomProperty("Icon")

local players = {}

function data.onGain(player)
	players[player] = true
end

function data.onLose(player)
	players[player] = nil
end

function PreDamageHook(sourceCharacter, targetCharacter, amount, tags)
	local adjustedAmount = amount

	if players[sourceCharacter] and sourceCharacter ~= targetCharacter then
		local targetOffset = targetCharacter:GetWorldPosition() - sourceCharacter:GetWorldPosition()

		-- Attacking from behind
		if targetOffset .. (targetCharacter:GetWorldRotation() * Vector3.FORWARD) > 0.0 and not API_D.HasTag(tags, API_D.TAG_PERIODIC) then
			adjustedAmount = adjustedAmount * 1.25
		end

		-- Target is at low health
		if targetCharacter:IsA("Player") then
			if targetCharacter.hitPoints / targetCharacter.maxHitPoints < 0.25 then
				adjustedAmount = adjustedAmount * 1.5
			end
		else
			if API_NPC.GetHealthFraction(targetCharacter) < 0.25 then
				adjustedAmount = adjustedAmount * 1.5
			end
		end
	end

	return adjustedAmount
end

API_D.RegisterPreDamageHook(PreDamageHook)

return data
