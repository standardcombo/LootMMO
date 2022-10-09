local ABILITY = script:GetCustomProperty("Ability"):WaitForObject()
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local EquipApi = _G["Character.EquipAPI"]


local function Execute()
	local owner = ABILITY.owner
	local character = EquipApi.GetCurrentCharacter(owner)
	if not character then
		return
	end

	local stats = character:GetComponent("Stats")
	stats:SetTempStat("B", math.max( stats:GetTempStat("B") + 100, stats:GetStat("B")))
end

ABILITY.executeEvent:Connect(Execute)
