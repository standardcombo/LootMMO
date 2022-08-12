
local ROOT = script.parent
local CONTENT_SCRIPT = script:GetCustomProperty("ContentScript"):WaitForObject()
local EXPANDING_PANEL = script:GetCustomProperty("ExpandingPanel"):WaitForObject()
local CORNER_ARROW = script:GetCustomProperty("CornerArrow"):WaitForObject()
local KEY_BINDING_PANEL = script:GetCustomProperty("KeyBindingPanel"):WaitForObject()
local ACTIVE_GOALS_TITLE = script:GetCustomProperty("ActiveGoalsTitle"):WaitForObject()
local CONTENT_PANEL = script:GetCustomProperty("ContentPanel"):WaitForObject()
local BADGE = script:GetCustomProperty("Badge"):WaitForObject()
local COLLAPSED_WIDTH = script:GetCustomProperty("CollapsedWidth")
local COLLAPSED_HEIGHT = script:GetCustomProperty("CollapsedHeight")

local LERP_SPEED = 12
local PLAYER = Game.GetLocalPlayer()

local DEFAULT_WIDTH = EXPANDING_PANEL.width
local DEFAULT_HEIGHT = EXPANDING_PANEL.height

EXPANDING_PANEL.width = COLLAPSED_WIDTH
EXPANDING_PANEL.height = COLLAPSED_HEIGHT

CORNER_ARROW.x = COLLAPSED_WIDTH
CORNER_ARROW.y = COLLAPSED_HEIGHT
CORNER_ARROW.rotationAngle = 180

KEY_BINDING_PANEL.opacity = 1
CONTENT_PANEL.opacity = 0

BADGE.visibility = Visibility.FORCE_OFF

local fWidth = COLLAPSED_WIDTH
local fHeight = COLLAPSED_HEIGHT
local state = false


function OnBindingPressed(player, action)
	if action == "ability_1" 
	and IsInActiveState() then
		state = not state
		
		if state then
			UpdateContents()
		end
	end
end


function UpdateContents()
	local quest = _G.QuestController.GetQuest("Map")
	local objectives = {
		quest.objectives[1],
		quest.objectives[2],
		quest.objectives[3],
		_G.QuestController.GetQuest("Raid1").objectives[4]
	}
	
	CONTENT_SCRIPT.context.Clear()
	
	for _,obj in ipairs(objectives) do
		CONTENT_SCRIPT.context.AddObjective(obj)
	end
	
	ACTIVE_GOALS_TITLE.text = "Active Goals: " .. #objectives
end


function Tick(deltaTime)
	if not IsInActiveState() then
		ROOT.visibility = Visibility.FORCE_OFF
		return
	end
	ROOT.visibility = Visibility.INHERIT

	local t = deltaTime * LERP_SPEED
	if state then
		fWidth = CoreMath.Lerp(fWidth, DEFAULT_WIDTH, t)
		fHeight = CoreMath.Lerp(fHeight, DEFAULT_HEIGHT, t)
		EXPANDING_PANEL.width = CoreMath.Round(fWidth)
		EXPANDING_PANEL.height = CoreMath.Round(fHeight)
		
		CORNER_ARROW.x = CoreMath.Lerp(CORNER_ARROW.x, 0, t)
		CORNER_ARROW.y = CoreMath.Lerp(CORNER_ARROW.y, 0, t)
		CORNER_ARROW.rotationAngle = CoreMath.Lerp(CORNER_ARROW.rotationAngle, 0, t)
		
		KEY_BINDING_PANEL.opacity = CoreMath.Lerp(KEY_BINDING_PANEL.opacity, 0, t)
		CONTENT_PANEL.opacity = CoreMath.Lerp(CONTENT_PANEL.opacity, 1, t)
	else
		fWidth = CoreMath.Lerp(fWidth, COLLAPSED_WIDTH, t)
		fHeight = CoreMath.Lerp(fHeight, COLLAPSED_HEIGHT, t)
		EXPANDING_PANEL.width = CoreMath.Round(fWidth)
		EXPANDING_PANEL.height = CoreMath.Round(fHeight)
		
		CORNER_ARROW.x = CoreMath.Lerp(CORNER_ARROW.x, COLLAPSED_WIDTH, t)
		CORNER_ARROW.y = CoreMath.Lerp(CORNER_ARROW.y, COLLAPSED_HEIGHT, t)
		CORNER_ARROW.rotationAngle = CoreMath.Lerp(CORNER_ARROW.rotationAngle, 180, t)
		
		KEY_BINDING_PANEL.opacity = CoreMath.Lerp(KEY_BINDING_PANEL.opacity, 1, t)
		CONTENT_PANEL.opacity = CoreMath.Lerp(CONTENT_PANEL.opacity, 0, t)
	end
end


function IsInActiveState()
	local currentState = _G.AppState.GetLocalState()
	return
	currentState == _G.AppState.SocialHub or
	currentState == _G.AppState.Mailbox or
	currentState == _G.AppState.Adventure
end


PLAYER.bindingPressedEvent:Connect(OnBindingPressed)


