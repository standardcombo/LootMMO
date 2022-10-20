local API_D = require(script:GetCustomProperty("APIDamage"))
local API_RE = require(script:GetCustomProperty("APIReliableEvents"))

local data = {}

data.name = "Overflowing Brilliance"
data.description = script:GetCustomProperty("Description")
data.icon = script:GetCustomProperty("Icon")

if Environment.IsServer() then
	function OnHealingDone(sourceCharacter, targetCharacter, effectiveAmount, overheal, tags)
		if not sourceCharacter or not sourceCharacter:IsA("Player") then
			return
		end
		
		if _G.Passives.DoesPlayerHavePassive(sourceCharacter, "Overflowing Brilliance") then
			if not API_D.HasTag(tags, API_D.TAG_MINOR) and overheal > 0.0 then
				local healingTags = API_D.TAG_MINOR | API_D.TAG_CANNOT_CRIT

				if API_D.HasTag(tags, API_D.TAG_CRIT) then
					healingTags = healingTags | API_D.TAG_CRIT
				end

				local targets = {}

				for _, player in pairs(Game.GetPlayers()) do
					if player.hitPoints < player.maxHitPoints then
						if (player:GetWorldPosition() - targetCharacter:GetWorldPosition()).size < 1200.0 then
							table.insert(targets, player)
						end
					end
				end

				if #targets > 0 then
					local target = targets[math.random(#targets)]
					API_D.ApplyHealing(sourceCharacter, target, overheal * 0.5, healingTags)
				end
			end
		end
	end

	API_RE.Connect("HealingDone", OnHealingDone)
end

return data
