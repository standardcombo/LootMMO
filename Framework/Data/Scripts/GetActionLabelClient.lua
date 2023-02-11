local TXT = script.parent
local action = script:GetCustomProperty("ActionLabel")

local function UpdateLabel()
	local label = Input.GetActionInputLabel(action)

	if label then
		TXT.text = label
	end
end

Input.escapeHook:Connect(UpdateLabel)
UpdateLabel()