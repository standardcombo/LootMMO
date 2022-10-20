local API_SE = require(script:GetCustomProperty("APIStatusEffects"))
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local PANEL = script:GetCustomProperty("Panel"):WaitForObject()
local DISPLAY_TEMPLATE = script:GetCustomProperty("DisplayTemplate")
local IS_RIGHT_ALIGNED = ROOT:GetCustomProperty("IsRightAligned")
local STATUS_TOOLTIP = script:GetCustomProperty("StatusTooltip"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

local displayTemplates = {}
local currentTooltipIndex = nil

local function InitStatusTooltip()
	STATUS_TOOLTIP.clientUserData.name = STATUS_TOOLTIP:GetCustomProperty("NameText"):WaitForObject()
	STATUS_TOOLTIP.clientUserData.description = STATUS_TOOLTIP:GetCustomProperty("DescriptionText"):WaitForObject()
end

local function ShowStatusTooltip()
	local displayTemplate = displayTemplates[currentTooltipIndex]
	local effectData = displayTemplate.clientUserData.currentEffectData
	if effectData then
		STATUS_TOOLTIP.x = displayTemplate.x
		STATUS_TOOLTIP.clientUserData.name.text = effectData.name
		STATUS_TOOLTIP.clientUserData.description.text = effectData.description
		STATUS_TOOLTIP.visibility = Visibility.INHERIT
	else
		STATUS_TOOLTIP.visibility = Visibility.FORCE_OFF
	end
end

local function HideStatusTooltip()
	STATUS_TOOLTIP.visibility = Visibility.FORCE_OFF
end

local function InitDisplayTemplates()
	local xStep = PANEL.width / API_SE.MAX_STATUS_EFFECTS
	for i = 1, API_SE.MAX_STATUS_EFFECTS do
		local displayTemplate = World.SpawnAsset(DISPLAY_TEMPLATE, {parent = PANEL})
		displayTemplate.visibility = Visibility.FORCE_OFF
	
		if IS_RIGHT_ALIGNED then
			displayTemplate.x = -xStep * (i - (API_SE.MAX_STATUS_EFFECTS + 1) / 2)
		else
			displayTemplate.x = xStep * (i - (API_SE.MAX_STATUS_EFFECTS + 1) / 2)
		end	
		displayTemplate.y = 0
		displayTemplates[i] = displayTemplate
		-- Set up the button callbacks to show information about status effect on hover.
		local hoverButton = displayTemplate:GetCustomProperty("HoverButton"):WaitForObject()
		hoverButton.hoveredEvent:Connect(function() currentTooltipIndex = i end)
		hoverButton.unhoveredEvent:Connect(function() currentTooltipIndex = nil end)
	end
end

local function DrawStatusEffect(displayTemplate, statusData)
	displayTemplate.clientUserData.currentEffectData = nil
	if statusData then
		local effectData = API_SE.STATUS_EFFECT_DEFINITIONS[statusData.name]
		displayTemplate.clientUserData.currentEffectData = effectData
		displayTemplate.visibility = Visibility.INHERIT
		displayTemplate:GetCustomProperty("Icon"):WaitForObject():SetImage(effectData.icon)
		local timeText = displayTemplate:GetCustomProperty("TimeText"):WaitForObject()
		if effectData.duration then
			local timeLeft = statusData.startTime + effectData.duration - time()

			if timeLeft > 180.0 then
				timeText.text = string.format("%dm", math.max(0.0, timeLeft // 60.0))
			else
				timeText.text = string.format("%.1f", math.max(0.0, timeLeft))
			end
		else
			timeText.text = ""
		end
	else
		displayTemplate.visibility = Visibility.FORCE_OFF
	end
end

function Tick(deltaTime)
	HideStatusTooltip()
	local statusEffects = API_SE.GetStatusEffectsOnCharacter(LOCAL_PLAYER)
	for i = 1, API_SE.MAX_STATUS_EFFECTS do
		local data = statusEffects[i]
		local displayTemplate = displayTemplates[i]
		DrawStatusEffect(displayTemplate, data)
		if data and i == currentTooltipIndex then
			ShowStatusTooltip()
		end
	end
end

InitStatusTooltip()
InitDisplayTemplates()


