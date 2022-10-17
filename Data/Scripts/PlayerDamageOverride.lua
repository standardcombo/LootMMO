local EquipAPI = _G["Character.EquipAPI"]

local function OnGoingToTakeDamage(attackData)
	local item = attackData.item
	local damage = attackData.damage
	local dmgamout = damage.amount
	local headshot = attackData.tags.Headshot
	local source = attackData.source
	if not Object.IsValid(source) then return end
	if not source:IsA("Player") then return end
	if dmgamout <= 0 then return end
a	
	--overrideDamage
	if not Object.IsValid(item) then return end
	local char = EquipAPI.GetCurrentCharacter(source)
	if char then
		local stats = char:GetComponent("Stats")
		--Check if Headshot tag is applied
		if headshot then
			dmgamout = stats:GetTempStat("AP") * 1.25
		else
			dmgamout = stats:GetTempStat("AP")
		end
	end
	damage.amount = dmgamout
end

Events.Connect("CombatWrapAPI.GoingToTakeDamage", OnGoingToTakeDamage)
