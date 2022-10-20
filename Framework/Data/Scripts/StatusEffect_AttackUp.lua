local EquipApi = _G["Character.EquipAPI"]

function AttackUp(player, source, damage, mul)
	local char = EquipApi.GetCurrentCharacter(player)
	if not char then
		return
	end
	local stats = char:GetComponent("Stats")
	stats:SetTempStat("AP", stats:GetStat("AP") * (mul or 1.5))
end

return AttackUp
