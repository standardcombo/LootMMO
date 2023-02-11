--[[
	NPCHealthBarDataProvider - Client
	v1.0
	by: standardcombo
	
	Works in conjunction with NPCHealthBar. Sets itself as the data provider for the UI.
	Other objects could use the same health bar UI by implementing their own data
	providers.
	
	The health bar UI is spawned in relationship to the position of this script.
	Commonly, the script's Z position should be adjusted on a per-NPC basis.
	
	Implements the interface:
		GetName()
		GetRarity()
		GetLevel()
		GetTeam()
		GetHealt()
		GetMaxHealth()
		GetArmor()
		GetMaxArmor()
--]]

local ROOT = script:GetCustomProperty("Root"):WaitForObject()

local HEALTH_BAR_TEMPLATE = script:GetCustomProperty("HealthBarTemplate")
local maxArmor = 0


function GetName()
	if Object.IsValid(ROOT) then
		if _G.Enemies then
			local def = _G.Enemies.GetDefinitionFromMUID(ROOT.sourceTemplateId)
			if def then
				return def.rarity
			end
		end
		return ROOT.name
	end
	return ""
end


function GetRarity()
	if Object.IsValid(ROOT) then
		if _G.Enemies then
			local rarity = _G.Enemies.GetRarityFromMUID(ROOT.sourceTemplateId)
			if rarity then
				return rarity
			end
		end
	end
	return "Common"
end


function GetLevel()
	if Object.IsValid(ROOT) then
		return ROOT:GetCustomProperty("Level") or 0
	end
end


function GetTeam()
	if Object.IsValid(ROOT) then
		return ROOT:GetCustomProperty("Team")
	end
	return 0
end


function GetHealth()
	if Object.IsValid(ROOT) then
		return ROOT.hitPoints or 0
	end
	return 0
end

function GetMaxHealth()
	if Object.IsValid(ROOT) then
		return ROOT.maxHitPoints or 0
	end
	return 0
end


function GetArmor()
	if Object.IsValid(ROOT) then
		return ROOT:GetCustomProperty("Armor") or 0
	end
	return 0
end

function GetMaxArmor()
	local a = GetArmor()
	if maxArmor == 0 and a > 0 then
		maxArmor = a
	end
	return maxArmor
end

-- Creates the health bar UI and places it as a child of this script
local hpBar = World.SpawnAsset(HEALTH_BAR_TEMPLATE, {parent = script})
Task.Wait()
local hpBarScript = hpBar:FindChildByType("Script")

-- Passes itself as the data provider, from which the health bar will ask for values.
hpBarScript.context.SetDataProvider(script.context)

