local ABILITY = script:GetCustomProperty("Ability"):WaitForObject()
local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local EquipApi = _G["Character.EquipAPI"]
local API_SE = _G["StatusEffects.API"]


local function Execute()
	local owner = ABILITY.owner
	local character = EquipApi.GetCurrentCharacter(owner)
	if not character then
		return
	end

	API_SE.ApplyStatusEffect(ABILITY.owner, "Regen", {
		source = ABILITY.owner,
		damage = 20,
		duration = 10,
	})
end

ABILITY.executeEvent:Connect(Execute)
