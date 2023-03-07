
local LOGO = script:GetCustomProperty("Logo"):WaitForObject()
local POINT_LIGHTS = script:GetCustomProperty("PointLights"):WaitForObject()
local FLARE = script:GetCustomProperty("Flare"):WaitForObject()
local DUST = script:GetCustomProperty("Dust"):WaitForObject()
local SPOTLIGHT = script:GetCustomProperty("Spotlight"):WaitForObject()

local logoColorOff
local logoColorOn
local logoEmissivePeak
local logoEmissive
local pointLightsRoot
local pointLightIntensity
local flareEmissive
local spotLightIntensity


function SetDisabled()
	-- Logo
	for _,glyph in ipairs(LOGO) do
		glyph:SetSmartProperty("Color", logoColorOff)
		glyph:SetSmartProperty("Emissive Boost", 0)
	end
	
	-- Point Lights
	pointLightsRoot.visibility = Visibility.FORCE_OFF
	
	-- Flare
	FLARE.visibility = Visibility.FORCE_OFF
	FLARE:SetSmartProperty("Emissive Brightness", 0)
	
	-- Dust Motes
	DUST:Stop()
	
	-- Spotlight
	SPOTLIGHT.visibility = Visibility.FORCE_OFF
	SPOTLIGHT.intensity = 0
end


function SetEnabled()
	-- Logo
	for _,glyph in ipairs(LOGO) do
		glyph:SetSmartProperty("Color", logoColorOn)
		glyph:SetSmartProperty("Emissive Boost", logoEmissive)
	end
	
	-- Point Lights
	pointLightsRoot.visibility = Visibility.FORCE_OFF
	
	-- Flare
	FLARE.visibility = Visibility.INHERIT
	FLARE:SetSmartProperty("Emissive Brightness", flareEmissive)
	
	-- Dust Motes
	DUST:Play()
	
	-- Spotlight
	SPOTLIGHT.visibility = Visibility.INHERIT
	SPOTLIGHT.intensity = spotLightIntensity
end


function PlayAnimation()
	SetEnabled() --TODO
end


function InitLogo()
	LOGO = LOGO:GetChildren()
	logoColorOff = LOGO[1]:GetSmartProperty("Color")
	logoColorOn = LOGO[2]:GetSmartProperty("Color")
	logoEmissivePeak = LOGO[2]:GetSmartProperty("Emissive Boost")
	logoEmissive = LOGO[3]:GetSmartProperty("Emissive Boost")
end

function InitPointLights()
	pointLightsRoot = POINT_LIGHTS
	POINT_LIGHTS = POINT_LIGHTS:GetChildren()
	pointLightIntensity = POINT_LIGHTS[1].intensity
end

function InitOtherFX()
	flareEmissive = FLARE:GetSmartProperty("Emissive Brightness")
	spotLightIntensity = SPOTLIGHT.intensity
end

InitLogo()
InitPointLights()
InitOtherFX()


----[[ Debug
Game.GetLocalPlayer().bindingPressedEvent:Connect(function(player, action)
	if action == "ability_extra_0" then
		SetDisabled()
	elseif action == "ability_extra_9" then
		PlayAnimation()
	end
end)
--]]