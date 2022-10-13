--[[
	NPCHealthBar
	by: standardcombo
	v0.14.0
	
	Works in conjunction with a data provider that is passed into SetDataProvider().
	
	Expects implementation of the interface:
		GetHealt()
		GetMaxHealth()
		GetTeam()
	
	Optional expected:
		GetName()
		GetLevel()
		GetArmor()
		GetMaxArmor()
--]]

local HIDE_WHEN_FULL = script:GetCustomProperty("HideWhenFull")
local HIDE_WHEN_EMPTY = script:GetCustomProperty("HideWhenEmpty")
local TICK_WAIT = script:GetCustomProperty("TickWait") or 0.0

local FILL_BAR = script:GetCustomProperty("Fill"):WaitForObject()
local LABEL = script:GetCustomProperty("Label"):WaitForObject()

function GET_OPTIONAL(key)
	local property = script:GetCustomProperty(key)
	if property then
		return property:WaitForObject()
	end
	return nil
end

local ARMOR_BAR = GET_OPTIONAL("Armor")
local NAME = GET_OPTIONAL("Name")
local LEVEL = GET_OPTIONAL("Level")

local isUIComponents = FILL_BAR:IsA("UIProgressBar")

if script.parent.isClientOnly then
	script.parent:LookAtLocalView()
	script.parent.visibility = Visibility.FORCE_OFF
end

local _data = nil


-- Expects a script with specific functions, allowing different scripts to be passed
function SetDataProvider(data)
	_data = data
	
	UpdateNameAndLevel()
end


function UpdateNameAndLevel()
	if not _data then return end
	
	-- Name
	if NAME then
		if _data.GetName then
			NAME.text = _data:GetName()
		else
			NAME.text = ""
		end
	end
	
	-- Level
	if LEVEL then
		if _data.GetLevel then
			LEVEL.text = tostring(_data:GetLevel())
		else
			LEVEL.text = "0"
		end
	end
end


function UpdateBar(barObject, currentValue, maxValue)
	local percent = currentValue / maxValue
	percent = CoreMath.Clamp(percent, 0, 1)
	
	if isUIComponents then
		barObject.progress = percent
	else
		local scale = barObject:GetScale()
		scale.z = percent
		barObject:SetScale(scale)
	end
end


function Tick()
	Task.Wait(TICK_WAIT)
	
	if not _data then return end
	
	-- Hitpoints
	local hp = _data:GetHealth()
	local maxHP = _data:GetMaxHealth()
	
	if (hp == 0 and maxHP == 0)
	or (HIDE_WHEN_EMPTY and hp <= 0)
	or (HIDE_WHEN_FULL and hp >= maxHP)
	then
		script.parent.visibility = Visibility.FORCE_OFF
	else
		script.parent.visibility = Visibility.INHERIT
		
		LABEL.text = CoreMath.Round(hp) .. " / " .. CoreMath.Round(maxHP)
		
		if FILL_BAR.team then
			FILL_BAR.team = _data:GetTeam()
		end
		
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

