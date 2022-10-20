local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local modifiers = {}		-- Player -> array

function OnPlayerJoined(player)
	modifiers[player] = {}
end

function OnPlayerLeft(player)
	modifiers[player] = nil
end

function EffectStart(sourceCharacter, character, index)
	if character:IsA("Player") then
		table.insert(modifiers[character], character.serverUserData.statSheet:NewStatModifierAdd("CritChance", 30))
	end
end

function EffectEnd(sourceCharacter, character, index)
	if character:IsA("Player") then
		character.serverUserData.statSheet:RemoveStatModifier(table.remove(modifiers[character]))
	end
end

local data = {}

data.name = "Runic Power"
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")
data.startFunction = EffectStart
data.endFunction = EffectEnd
data.damageDealtMultiplier = 1.25

API_SE.DefineStatusEffect(data)

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)
