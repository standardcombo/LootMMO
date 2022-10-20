local API_D = require(script:GetCustomProperty("APIDamage"))
local API_ID = require(script:GetCustomProperty("API_ID"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local EFFECT_TEMPLATE = script:GetCustomProperty("EffectTemplate")

local LOCAL_PLAYER = Game.GetLocalPlayer()

function OnDamageDone(sourceCharacter, targetCharacter, amount, overkill, tags)
	if targetCharacter == LOCAL_PLAYER and amount > 0.0 then
		if not API_D.HasTag(tags, API_D.TAG_MINOR) and not API_D.HasTag(tags, API_D.TAG_PERIODIC) then
			local effect = World.SpawnAsset(EFFECT_TEMPLATE)
			effect:AttachToPlayer(LOCAL_PLAYER, "root")
		end
	end
end

API_RE.Connect("DamageDone", OnDamageDone)
