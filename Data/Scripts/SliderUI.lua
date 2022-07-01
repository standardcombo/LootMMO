local Bar = script:GetCustomProperty('Bar'):WaitForObject()
local Cursor = script:GetCustomProperty('Cursor'):WaitForObject()
local Root = script:GetCustomProperty('Root'):WaitForObject()
local LOCAL_PLAYER = Game.GetLocalPlayer()
local ScreenSizeChanged = require(script:GetCustomProperty('ScreenSizeChanged'))
local percent = 0
while not _G.CC_Util do
	Task.Wait()
end
local luaEvents = _G.CC_Util:WaitForlibrary('Lua Event')
local UI_Utilities = _G.CC_Util:WaitForlibrary('UI_Utilities')
local Slider = {
	beingPressed = false,
	updateEvent = luaEvents.New(),
	changedEvent = luaEvents.New(),
	x = 0,
	y = 0
}

local function SetUp()
	local Pos = Vector2.New(0, 0)
	Pos.x, Pos.y = UI_Utilities.GetAbsolutePosition(Bar)
	Slider.x = Pos.x
	Slider.y = Pos.y
	if Cursor then
		Cursor.x = (Bar.width - Cursor.width / 2) * Bar.progress + (Cursor.width / 2)
	end
	Root.clientUserData.Slider = Slider
end

local function Update()
	local Pos = Vector2.New(0, 0)
	Pos.x, Pos.y = UI_Utilities.GetAbsolutePosition(Bar)
	Slider.x = Pos.x
	Slider.y = Pos.y
end

local function CalPercent(mouse)
	return (mouse.x - Slider.x) / Bar.width
end

local function UpdateSlider()
	Bar.progress = percent
	if Cursor then
		Cursor.x = (Bar.width - Cursor.width) * Bar.progress + (Cursor.width / 2)
	end
	Slider.changedEvent:Trigger(Slider, percent)
end

local function UpdateSliderMouse()
	local mouse = UI.GetCursorPosition()
	mouse.x = math.max(Slider.x, math.min(Slider.x + Bar.width, mouse.x))
	local NewPercent = CalPercent(mouse)
	Slider.updateEvent:Trigger(Slider, NewPercent)
	if percent == NewPercent then
		return
	end
	percent = NewPercent
	UpdateSlider()
end

function Slider:SetPercent(newPercent)
	percent = newPercent
	UpdateSlider()
end

function Slider:GetPercent()
	return percent
end

function Slider:IsA(type)
	return type == 'Slider'
end

local function Pressed(_, binding)
	if binding == 'ability_primary' then
		if UI_Utilities.IsCursorOver(Bar) then
			Slider.beingPressed = true
		end
	end
end

local function Released(_, binding)
	if binding == 'ability_primary' then
		Slider.beingPressed = false
	end
end

function Tick()
	if Slider.beingPressed then
		UpdateSliderMouse()
	end
end

SetUp()
local ScreenEvent = ScreenSizeChanged.screensizeUpdated:Connect(Update)
local PresedEvent = LOCAL_PLAYER.bindingPressedEvent:Connect(Pressed)
local ReleaseddEvent = LOCAL_PLAYER.bindingReleasedEvent:Connect(Released)

script.destroyEvent:Connect(
function()
	ScreenEvent:Disconnect()
	PresedEvent:Disconnect()
	ReleaseddEvent:Disconnect()
end
)
