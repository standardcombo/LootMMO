local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local API_D = require(script:GetCustomProperty("APIDamage"))

local SHIELD_BASE = 50.0
local SHIELD_MULTIPLIER = 1.0

local currentShields = {}	-- player -> table (index -> amount)

function OnPlayerJoined(player)
	currentShields[player] = {}
end

function OnPlayerLeft(player)
	currentShields[player] = nil
end

function PostDamageHook(sourceCharacter, targetCharacter, amount, tags)
	local remainingAmount = amount

	if targetCharacter:IsA("Player") then
		for i, shieldAmount in pairs(currentShields[targetCharacter]) do
			if shieldAmount >= amount then
				currentShields[targetCharacter][i] = currentShields[targetCharacter][i] - amount
				return 0.0
			else
				remainingAmount = remainingAmount - currentShields[targetCharacter][i]
				currentShields[targetCharacter][i] = 0.0
			end
		end
	end

	return remainingAmount
end

function EffectStart(sourceCharacter, character, index)
	local magicStat = 0.0

	if sourceCharacter then
		magicStat = sourceCharacter.serverUserData.statSheet:GetStatTotalValue("Magic")
	end

	currentShields[character][index] = SHIELD_BASE + SHIELD_MULTIPLIER * magicStat
end

function EffectEnd(sourceCharacter, character, index)
	currentShields[character][index] = nil
end

local data = {}

data.name = "Warding Talisman"
data.duration = 8.0
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")
data.startFunction = EffectStart
data.endFunction = EffectEnd

API_SE.DefineStatusEffect(data)
API_D.RegisterPostDamageHook(PostDamageHook)

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)
