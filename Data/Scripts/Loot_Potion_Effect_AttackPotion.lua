local ABILITY = script:GetCustomProperty("Ability"):WaitForObject()
local EquipApi = _G["Character.EquipAPI"]
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local API_SE = _G['StatusEffects.API']

local function Execute()
	local owner = ABILITY.owner 
	API_SE.ApplyStatusEffect(owner, "AttackUp", {
		multiplier = 1.6,
		duration = 20,
	})
end

ABILITY.executeEvent:Connect(Execute)
