local UI_CONTAINER = script:GetCustomProperty("UIContainer"):WaitForObject()
local GENERATED_MAP = script:GetCustomProperty("GeneratedMap"):WaitForObject()
local PROGRESS = script:GetCustomProperty("Progress"):WaitForObject()
local MUSIC = script:GetCustomProperty("Music"):WaitForObject()

local function HideUI()
	if MUSIC then
		MUSIC:Play()
	end
	UI_CONTAINER.visibility = Visibility.FORCE_OFF
end

local function UpdateProgress(obj, prop)
	if prop == "grid" then
		local val = GENERATED_MAP:GetCustomProperty("grid")

		if val > 0 then
			PROGRESS.text = string.format("%.2f%%", (GENERATED_MAP:GetCustomProperty("grid") / 2) * 100)
		end
	elseif prop == "mesh" then
		local val = GENERATED_MAP:GetCustomProperty("mesh")

		if val > 0 then
			PROGRESS.text = string.format("%.2f%%", 50 + (val / 2) * 100)
		end
	end
end

GENERATED_MAP.customPropertyChangedEvent:Connect(UpdateProgress)

UpdateProgress(GENERATED_MAP, "grid")
UpdateProgress(GENERATED_MAP, "mesh")

Events.Connect("HideUI", HideUI)