
local LOGO = script:GetCustomProperty("Logo"):WaitForObject()
local POINT_LIGHTS = script:GetCustomProperty("PointLights"):WaitForObject()
local FLARE = script:GetCustomProperty("Flare"):WaitForObject()
local DUST = script:GetCustomProperty("Dust"):WaitForObject()
local SPOTLIGHT = script:GetCustomProperty("Spotlight"):WaitForObject()
local AUDIO = script:GetCustomProperty("Audio"):WaitForObject()
local MAIN_TAVERN_MUSIC = script:GetCustomProperty("MainTavernMusic"):WaitForObject()

local QUEST_ID = script:GetCustomProperty("QuestId")
local OBJECTIVE_INDEX = script:GetCustomProperty("ObjectiveIndex")
local CINEMATIC_EVENT_ID = script:GetCustomProperty("CinematicEventId")

local PLAYER = Game.GetLocalPlayer()

local isEnabled
local logoColorOff
local logoColorOn
local logoEmissivePeak
local logoEmissive
local pointLightsRoot
local pointLightIntensity
local pointLightY
local pointLightZ
local flareEmissive
local spotLightIntensity


function SetDisabled()
	isEnabled = false
	
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
	isEnabled = true
	
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
	isEnabled = true
	
	_G.AppState.SetLocalState(_G.AppState.Cinematic)
	
	local mainVolume = MAIN_TAVERN_MUSIC.volume
	MAIN_TAVERN_MUSIC.volume = 0
	
	Events.Broadcast(CINEMATIC_EVENT_ID)
	Task.Wait(0.3)
	
	AUDIO:Play()
	Task.Wait(0.8)
	
	-- Logo
	for _,glyph in ipairs(LOGO) do
		AnimateLogoGlyph(glyph)
		Task.Wait(0.1)
	end
	
	Task.Wait(1.5)
	
	-- Point Lights
	AnimatePointLights()
	
	Task.Wait(0.7)
	
	-- Dust Motes
	DUST:Play()
	
	-- Flare & Spotlight
	SPOTLIGHT.visibility = Visibility.INHERIT
	FLARE.visibility = Visibility.INHERIT
	Task.Spawn(function()
		local t = 0
		local step = 0.0333333334
		while true do
			t = t + step
			if t < 1.5 then
				SPOTLIGHT.intensity = CoreMath.Lerp(SPOTLIGHT.intensity, spotLightIntensity, t)
				local e = FLARE:GetSmartProperty("Emissive Brightness")
				e = CoreMath.Lerp(e, flareEmissive, t)
				FLARE:SetSmartProperty("Emissive Brightness", e)
			else
				SPOTLIGHT.intensity = spotLightIntensity
				FLARE:SetSmartProperty("Emissive Brightness", flareEmissive)
				break
			end
			Task.Wait(step)
		end
	end)
	
	Task.Wait(4.8)
	MAIN_TAVERN_MUSIC.volume = mainVolume
	
	if _G.AppState.GetLocalState() == _G.AppState.Cinematic then
		_G.AppState.SetLocalState(_G.AppState.GetPreviousLocalState())
	end
end

function AnimatePointLights()
	pointLightsRoot.visibility = Visibility.INHERIT
	for _,p in ipairs(POINT_LIGHTS) do
		p.intensity = 0
		p:SetPosition(Vector3.ZERO)
	end
	
	Task.Spawn(function()
		local step = 0.0333333334
		-- Move vertical
		local t = 0		
		while true do
			t = t + step
			local pos = Vector3.New(0, 0, CoreMath.Lerp(0, pointLightZ, t))
			for i,p in ipairs(POINT_LIGHTS) do
				p.intensity = CoreMath.Lerp(p.intensity, pointLightIntensity, t * 5)
				if i == 3 then
					pos.z = -pos.z
				end
				p:SetPosition(pos)
			end
			if t >= 1 then break end
			Task.Wait(step)
		end
		-- Move horizontal
		t = 0
		while true do
			t = t + step
			local pos = Vector3.New(0, CoreMath.Lerp(0, pointLightY, t), pointLightZ)
			for i,p in ipairs(POINT_LIGHTS) do
				pos.y = -pos.y
				if i == 3 then
					pos.z = -pos.z
				end
				p:SetPosition(pos)
			end
			if t >= 1 then break end
			Task.Wait(step)
		end
		-- Fade out
		t = 0
		while true do
			t = t + step
			for i,p in ipairs(POINT_LIGHTS) do
				p.intensity = CoreMath.Lerp(p.intensity, 0, t)
			end
			if t >= 2 then break end
			Task.Wait(step)
		end
		pointLightsRoot.visibility = Visibility.FORCE_OFF
	end)
end

function AnimateLogoGlyph(glyph)
	Task.Spawn(function()
		local t = 0
		local step = 0.0333333334
		local _lerp = step * 10
		while true do
			t = t + step
			if t < 1.5 then
				local c = glyph:GetSmartProperty("Color")
				local e = glyph:GetSmartProperty("Emissive Boost")
				c = Color.Lerp(c, logoColorOn, _lerp)
				if t < 0.2 then
					e = CoreMath.Lerp(e, logoEmissivePeak, _lerp)
				else
					e = CoreMath.Lerp(e, logoEmissive, _lerp)
				end
				glyph:SetSmartProperty("Color", c)
				glyph:SetSmartProperty("Emissive Boost", e)
			else
				glyph:SetSmartProperty("Color", logoColorOn)
				glyph:SetSmartProperty("Emissive Boost", logoEmissive)
				break
			end
			Task.Wait(step)
		end
	end)
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
	local pos = POINT_LIGHTS[1]:GetPosition()
	pointLightY = pos.y
	pointLightZ = pos.z
end

function InitOtherFX()
	flareEmissive = FLARE:GetSmartProperty("Emissive Brightness")
	spotLightIntensity = SPOTLIGHT.intensity
end

InitLogo()
InitPointLights()
InitOtherFX()


function OnObjectiveSelected(obj)
	if not isEnabled and obj.index == OBJECTIVE_INDEX and obj.questId == QUEST_ID then
		PlayAnimation()
	end
end

Events.Connect("Quest.ObjectiveSelected", OnObjectiveSelected)


Task.Wait()
_G['Character.EquipAPI'].playerEquippedEvent:Connect(function(character, player)
	if player == PLAYER then
		if _G.QuestController.HasCompleted(PLAYER, QUEST_ID) then
			SetEnabled()
		else
			SetDisabled()
		end
	end
end)

--[[ Debug
PLAYER.bindingPressedEvent:Connect(function(player, action)
	if action == "ability_extra_0" then
		SetDisabled()
	elseif action == "ability_extra_9" then
		PlayAnimation()
	end
end)
--]]
