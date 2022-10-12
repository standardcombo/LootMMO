local EquipAPI = _G["Character.EquipAPI"]

local function OnGoingToTakeDamage(attackData)
	local item = attackData.item
	local damage = attackData.damage
	local dmgamout = damage.amount
	local source = attackData.source
	if not source:IsA("Player") then return end
	if dmgamout <= 0 then return end
	
	--overrideDamage
	if not Object.IsValid(item) then return end
	local char = EquipAPI.GetCurrentCharacter(source)
	if char then
		local stats = char:GetComponent("Stats")
		dmgamout = stats:GetTempStat("AP")
	end
	damage.amount = dmgamout
end

Events.Connect("CombatWrapAPI.GoingToTakeDamage", OnGoingToTakeDamage)
