local ROOT = script:GetCustomProperty('Root'):WaitForObject()
local CLASS_NAME = script:GetCustomProperty('ClassName'):WaitForObject()
local STAT_TEXT = script:GetCustomProperty('StatText'):WaitForObject()
local DESCRIPTION = script:GetCustomProperty('Description'):WaitForObject()

local StatText = {
    ['W'] = 'Wisdom',
    ['A'] = 'Agility',
    ['V'] = 'Virtality'
}

local Classes = _G['Character.Classes']
while not ROOT.clientUserData.class do
    Task.Wait()
end
local Class = ROOT.clientUserData.class

local class = Classes.GetClass(Class)
if not class then
    return
end

CLASS_NAME.text = Class
STAT_TEXT.text = string.format('Primary stat: %s', StatText[class['Stat']])
DESCRIPTION.text = string.format('Missing Character Discription:\n%s', (class['Description'] or ''))
if class['BackgroundArt'] then
    ROOT:SetImage(class['BackgroundArt'])
end
