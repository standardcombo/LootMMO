local TXT = script.parent
local action = script:GetCustomProperty("ActionLabel")

TXT.text = Input.GetActionInputLabel(action)