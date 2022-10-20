local API_DS = require(script:GetCustomProperty("APIDifficultySystem"))

local VFX = script:GetCustomProperty("VFX"):WaitForObject()
local PROGRESS_DECAL = script:GetCustomProperty("ProgressDecal"):WaitForObject()

local CAST_TIMES = {8.0, 6.0, 4.0, 3.0}

local castTime = CAST_TIMES[API_DS.GetDifficultyLevel()]

VFX:SetSmartProperty("Life", castTime + 0.5)
VFX:Play()

local startTime = os.clock()
local t = 0.0

while t < 1.0 do
	t = (os.clock() - startTime) / castTime
	PROGRESS_DECAL:SetWorldScale(Vector3.New(3.0 * t, 3.0 * t, 5.0))
	PROGRESS_DECAL:SetSmartProperty("Stroke Width", math.max(0.01, t / 100.0))
	Task.Wait()
end

script.parent:Destroy()
