--[[
	NPCHealthBar
	by: standardcombo
	v0.13.0
	
	Works in conjunction with a data provider that is passed into SetDataProvider().
	
	Expects implementation of the interface:
		GetHealt()
		GetMaxHealth()
		GetTeam()
	
	Optional expected:
		GetArmor()
		GetMaxArmor()
--]]

local FILL_BAR = script:GetCustomProperty("Fill"):WaitForObject()
local LABEL = script:GetCustomProperty("Label"):WaitForObject()

local ARMOR_BAR = script:GetCustomProperty("Armor")
if ARMOR_BAR then
	ARMOR_BAR = ARMOR_BAR:WaitForObject()
end

script.parent:LookAtLocalView()
script.parent.visibility = Visibility.FORCE_OFF

local _data = nil


-- Expects a script with specific functions, allowing different scripts to be passed
function SetDataProvider(data)
	_data = data
end


function UpdateBar(barObject, currentValue, maxValue)
	local percent = currentValue / maxValue
	percent = CoreMath.Clamp(percent, 0, 1)
	
	local scale = barObject:GetScale()
	scale.z = percent
	barObject:SetScale(scale)
end


function Tick()
	if not _data then return end
	
	-- Hitpoints
	local hp = _data:GetHealth()
	local maxHP = _data:GetMaxHealth()
	
	if hp <= 0 or hp >= maxHP then
		script.parent.visibility = Visibility.FORCE_OFF
	else
		script.parent.visibility = Visibility.INHERIT
		
		LABEL.text = CoreMath.Round(hp) .. " / " .. CoreMath.Round(maxHP)
		FILL_BAR.team = _data:GetTeam()
		
		UpdateBar(FILL_BAR, hp, maxHP)
	end
	
	-- Armor
	if ARMOR_BAR then
		if _data.GetArmor and hp > 0 then
			local armor = _data:GetArmor()
			local maxArmor = _data:GetMaxArmor()
			
			if armor <= 0 then
				ARMOR_BAR.visibility = Visibility.FORCE_OFF
			else
				ARMOR_BAR.visibility = Visibility.INHERIT
				UpdateBar(ARMOR_BAR, armor, maxArmor)
				
				if script.parent.visibility == Visibility.FORCE_OFF 
				and armor < maxArmor then
					script.parent.visibility = Visibility.INHERIT
					UpdateBar(FILL_BAR, hp, maxHP)
				end
			end
		else
			ARMOR_BAR.visibility = Visibility.FORCE_OFF
		end
	end
end

