local API_SE = require(script:GetCustomProperty("APIStatusEffects"))

local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local PANEL = script:GetCustomProperty("Panel"):WaitForObject()
local DISPLAY_TEMPLATE = script:GetCustomProperty("DisplayTemplate")

local IS_RIGHT_ALIGNED = ROOT:GetCustomProperty("IsRightAligned")

local LOCAL_PLAYER = Game.GetLocalPlayer()

local displayTemplates = {}
local effectSource = {}


function Tick(deltaTime)
	local statusEffects = API_SE.GetStatusEffectsOnPlayer(LOCAL_PLAYER)

	for i = 1, API_SE.MAX_STATUS_EFFECTS do
		local data = statusEffects[i]
		local displayTemplate = displayTemplates[i]

		if data then
			local effectData = API_SE.STATUS_EFFECT_DEFINITIONS[data.name]
			displayTemplate.visibility = Visibility.INHERIT
			displayTemplate:GetCustomProperty("Icon"):WaitForObject():SetImage(effectData.icon)
			displayTemplate:GetCustomProperty("Background"):WaitForObject():SetColor(effectData.color)
			displayTemplate:GetCustomProperty("NameText"):WaitForObject().text = data.name
			local timeText = displayTemplate:GetCustomProperty("TimeText"):WaitForObject()

			if effectData.duration then
				local timeLeft = data.startTime +  (data.duration or effectData.duration) - time()

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
end

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
end
