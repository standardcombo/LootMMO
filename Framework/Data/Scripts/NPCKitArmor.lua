--[[
	NPC Kit Armor
	v1.0.1 - 2022/10/25
	by: standardcombo
	
	Place inside an NPC or an Equipment to give them armor.
	Requires NPC Kit v0.13 or later.
	
	The armor script can be referenced by accessing:
	ROOT.serverUserData.armorScript
--]]

local MAX_ARMOR = script:GetCustomProperty("MaxArmor")
local REGEN_PER_SECOND = script:GetCustomProperty("RegenPerSecond")
local REGEN_DELAY = script:GetCustomProperty("RegenDelay")

function TAGS() return _G["standardcombo.Combat.Tags"] end

-- Find the root object
local ROOT = script:FindAncestorByType("Equipment")
if ROOT == nil then
	ROOT = script:FindAncestorByType("Damageable")
end
if ROOT == nil then
	warn("NPCKitArmor should be placed under an NPC or equipment " .. tostring(script))
	return
end
ROOT.serverUserData.armorScript = script.context

local currentArmor = MAX_ARMOR
local regenDelayRemaining = REGEN_DELAY


function GetArmor()
	return currentArmor
end

function SetArmor(value)
	currentArmor = value
	
	if not ROOT:GetCustomProperty("Armor") then
		warn(ROOT.name .." ".. tostring(ROOT) .." has armor component. Add a custom property 'Armor' of type Float.")
		return
	end
	if not ROOT:IsCustomPropertyDynamic("Armor") then
		warn(ROOT.name .." has custom property 'Armor', but it's not marked as 'dynamic'.\nRight-click the property and choose 'Enable Dynamic Property'.")
		return
	end	
	ROOT:SetCustomProperty("Armor", value)
end
SetArmor(MAX_ARMOR)


function ResetRegen()
	regenDelayRemaining = REGEN_DELAY
end

if REGEN_PER_SECOND > 0 then
	function Tick(deltaTime)
		-- Regen
		if regenDelayRemaining > 0 then
			regenDelayRemaining = regenDelayRemaining - deltaTime
			
		elseif currentArmor < MAX_ARMOR then
			local armor = currentArmor + deltaTime * REGEN_PER_SECOND
			if armor > MAX_ARMOR then
				armor = MAX_ARMOR
			end
			SetArmor(armor)
		end
		-- Degen
		if currentArmor > MAX_ARMOR then
			local armor = currentArmor - 2 * deltaTime * REGEN_PER_SECOND
			if armor < MAX_ARMOR then
				armor = MAX_ARMOR
			end
			SetArmor(armor)
		end
	end
end


function OnGoingToTakeDamage(attackData)
	if attackData.object == ROOT and attackData.damage.amount > 0 then
		if currentArmor > 0 then
			local armor = 0
			local armorLost = CoreMath.Round(attackData.damage.amount)
			
			-- Adjust armor as well as attack data
			if currentArmor >= attackData.damage.amount then
				armor = currentArmor - attackData.damage.amount
				attackData.damage.amount = 0
				TAGS().AddTag(attackData.tags, "Armor", true)
			else
				armorLost = math.ceil(currentArmor)
				attackData.damage.amount = attackData.damage.amount - currentArmor
			end
			SetArmor(armor)
			
			-- Damage feedback fly-up number for armor
			local player = attackData.source
			if Object.IsValid(player) and player:IsA("Player") then
				Task.Spawn(function()
					if Object.IsValid(player) then
						Events.Broadcast("ShowDamageFeedback", player, tostring(armorLost), attackData.position, {Armor=1})
					end
				end, 0.3)
			end
		end
		ResetRegen()
	end
end

_G.CombatEvents.goingToTakeDamageEvent:Connect(OnGoingToTakeDamage)

