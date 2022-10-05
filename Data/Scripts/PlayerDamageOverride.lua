local EquipAPI = _G["Character.EquipAPI"]

local function OnGoingToTakeDamage(attackData)
	local damage = attackData.damage
	local dmgamout = damage.amount
	local source = attackData.source
	if not source:IsA("Player") then return end
	if dmgamout <= 0 then return end
	
	--overrideDamage
	local char = EquipAPI.GetCurrentCharacter(source)
	if char then
		local stats = char:GetComponent("Stats")
		dmgamout = stats:GetTempStat("AP")
	end
	damage.amount = dmgamout
end

Events.Connect("CombatWrapAPI.GoingToTakeDamage", OnGoingToTakeDamage)
