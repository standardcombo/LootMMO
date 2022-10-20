local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local modifiers = {}		-- Player -> array

function OnPlayerJoined(player)
	modifiers[player] = {}
end

function OnPlayerLeft(player)
	modifiers[player] = nil
end

function EffectStart(sourceCharacter, character, index)
	assert(character:IsA("Player"))
	table.insert(modifiers[character], character.serverUserData.statSheet:NewStatModifierAdd("Attack", 35))
end

function EffectEnd(sourceCharacter, character, index)
	character.serverUserData.statSheet:RemoveStatModifier(table.remove(modifiers[character]))
end

local data = {}

data.name = "Lucky Bone Band"
data.duration = 7.0
data.icon = script:GetCustomProperty("Icon")
data.description = script:GetCustomProperty("Description")
data.effectTemplate = script:GetCustomProperty("EffectTemplate")
data.startFunction = EffectStart
data.endFunction = EffectEnd

API_SE.DefineStatusEffect(data)

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)
