local TXT = script.parent
local action = script:GetCustomProperty("ActionLabel")

local label = Input.GetActionInputLabel(action)
if label then
	TXT.text = label
end