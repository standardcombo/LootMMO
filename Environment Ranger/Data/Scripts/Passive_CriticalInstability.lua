local API_D = require(script:GetCustomProperty("APIDamage"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))
local API_NPC = require(script:GetCustomProperty("API_NPC"))

local BASE_DAMAGE = 33.0
local DAMAGE_MULTIPLIER = 0.7
local RADIUS = 1000.0

local data = {}

data.name = "Critical Instability"
data.description = script:GetCustomProperty("Description")
data.icon = script:GetCustomProperty("Icon")

local players = {}

function data.onGain(player)
	players[player] = true
end

function data.onLose(player)
	players[player] = nil
end

function OnDamageDone(sourceCharacter, targetCharacter, effectiveAmount, overkill, tags)
	if players[sourceCharacter] and sourceCharacter ~= targetCharacter then
		if API_D.HasTag(tags, API_D.TAG_CRIT) and not API_D.HasTag(tags, API_D.TAG_MINOR) then
			local enemies = API_NPC.GetAwakeNPCsInSphere(targetCharacter:GetWorldPosition(), RADIUS)

			if #enemies > 0 then
				local target = enemies[math.random(#enemies)]
				local magicStat = sourceCharacter.serverUserData.statSheet:GetStatTotalValue("Magic")
				API_D.ApplyDamage(sourceCharacter, target, BASE_DAMAGE + DAMAGE_MULTIPLIER * magicStat, API_D.TAG_MINOR)
			end
		end
	end
end

API_RE.Connect("DamageDone", OnDamageDone)

return data
