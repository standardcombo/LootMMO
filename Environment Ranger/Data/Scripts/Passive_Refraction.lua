local API_D = require(script:GetCustomProperty("APIDamage"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))
local API_NPC = require(script:GetCustomProperty("API_NPC"))

local data = {}

data.name = "Refraction"
data.description = script:GetCustomProperty("Description")
data.icon = script:GetCustomProperty("Icon")

if Environment.IsServer() then
	function OnHealingDone(sourceCharacter, targetCharacter, effectiveAmount, overheal, tags)
		if not sourceCharacter or not sourceCharacter:IsA("Player") then
			return
		end
		
		if _G.Passives.DoesPlayerHavePassive(sourceCharacter, "Refraction") then
			if not API_D.HasTag(tags, API_D.TAG_MINOR) and effectiveAmount > 0.0 then
				local damageTags = API_D.TAG_MINOR | API_D.TAG_CANNOT_CRIT

				if API_D.HasTag(tags, API_D.TAG_CRIT) then
					damageTags = damageTags | API_D.TAG_CRIT
				end

				local targets = API_NPC.GetAwakeNPCsInSphere(targetCharacter:GetWorldPosition(), 1200.0)

				if #targets > 0 then
					local target = targets[math.random(#targets)]
					API_D.ApplyDamage(sourceCharacter, target, effectiveAmount * 0.3, damageTags)
				end
			end
		end
	end

	API_RE.Connect("HealingDone", OnHealingDone)
end

return data
