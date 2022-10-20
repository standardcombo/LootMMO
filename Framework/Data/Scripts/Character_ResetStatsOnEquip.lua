local EquipAPI = _G["Character.EquipAPI"]

local function ResetTemp(character)
	local stats = character:GetComponent("Stats")
	Task.Wait()
	stats:ResetTempStats()
end

EquipAPI.playerEquippedEvent:Connect(ResetTemp)
