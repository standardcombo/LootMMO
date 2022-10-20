local Button = script:GetCustomProperty('CheckBox'):WaitForObject()
local ToggleImage = script:GetCustomProperty('ToggleImage'):WaitForObject()
while not _G.CC_Util do
    Task.Wait()
end
local luaEvents = _G.CC_Util:WaitForlibrary('Lua Event')
local UI_Utilities = _G.CC_Util:WaitForlibrary('UI_Utilities')

local CheckBox = {
    toggled = false,
    changedEvent = luaEvents.New()
}

function Update()
    local settingChart = {
        [true] = Visibility.INHERIT,
        [false] = Visibility.FORCE_OFF
    }
    ToggleImage.visibility = settingChart[CheckBox.toggled]
end
function CheckBox:SetToggle(setting)
    local oldtog = self.toggled
    self.toggled = setting
    if self.toggled ~= oldtog then
        self.changedEvent:Trigger(self.toggled)
    end
    Update()
end
function CheckBox:Toggle()
    self.toggled = not self.toggled
    self.changedEvent:Trigger(self.toggled)
    Update()
end

function CheckBox:GetToggle()
    return self.toggled
end

function Toggle()
    CheckBox:Toggle()
end

local function SetUp()
    Update()
end

Button.clientUserData.CheckBox = CheckBox
Button.pressedEvent:Connect(Toggle)
SetUp()
