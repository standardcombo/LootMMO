local API_D = require(script:GetCustomProperty("APIDamage"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local REWIND_DURATION = 5.0

local playerDamageHistories = {}		-- Player -> table (time -> amount)

function OnPlayerJoined(player)
	playerDamageHistories[player] = {}
end

function OnPlayerLeft(player)
	playerDamageHistories[player] = nil
end

function OnDamageDone(sourceCharacter, targetCharacter, effectiveAmount, overkill, tags)
	if targetCharacter:IsA("Player") then
		playerDamageHistories[targetCharacter][time()] = effectiveAmount
	end
end

-- Called like a tick
function PruneHistories()
	local currentTime = time()

	for _, history in pairs(playerDamageHistories) do
		for t, _ in pairs(history) do
			if t < currentTime - REWIND_DURATION then
				history[t] = nil
			end
		end
	end
end

local data = {}

data.name = script:GetCustomProperty("Name")
data.targets = false
data.canMove = true
data.icon = script:GetCustomProperty("Icon")
data.range = script:GetCustomProperty("Range")
data.cooldown = script:GetCustomProperty("Cooldown")
data.castDuration = script:GetCustomProperty("CastDuration")
data.animationKey = script:GetCustomProperty("AnimationKey")
data.description = script:GetCustomProperty("Description")
data.selfCasterEffectTemplate = script:GetCustomProperty("SelfCasterEffectTemplate")
data.otherCasterEffectTemplate = script:GetCustomProperty("OtherCasterEffectTemplate")
data.selfTargetEffectTemplate = script:GetCustomProperty("SelfTargetEffectTemplate")
data.otherTargetEffectTemplate = script:GetCustomProperty("OtherTargetEffectTemplate")

function data.onCastClient(caster, targetSet)
	return 0.0
end

function data.onCastServer(caster, targetSet)
	local totalDamage = 0.0

	for _, amount in pairs(playerDamageHistories[caster]) do
		totalDamage = totalDamage + amount
	end
	
	API_D.ApplyHealing(caster, caster, totalDamage)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)
API_RE.Connect("DamageDone", OnDamageDone)

local pruneTask = Task.Spawn(PruneHistories)
pruneTask.repeatCount = -1

return data
